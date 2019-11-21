using UnityEngine;
using System.Collections;
using AssetBundles;
using GameChannel;
using System;
using XLua;

using GameSdk;
[Hotfix]
[LuaCallCSharp]
public class GameLaunch : MonoBehaviour
{
    public GameObject debugReport;
    const string launchPrefabPath = "UI/Prefabs/View/UILaunch.prefab";
    const string noticeTipPrefabPath = "UI/Prefabs/Common/UINoticeTip.prefab";
    GameObject launchPrefab;
    GameObject noticeTipPrefab;
    AssetbundleUpdater updater;
    
    IEnumerator Start ()
    {
        //初始化系统设置 TODO 国战需要用到双指缩放放大屏幕 所以把多指触摸打开
        Input.multiTouchEnabled = true;
        //设置横竖屏幕模式
        Screen.orientation = ScreenOrientation.AutoRotation;
        Screen.autorotateToLandscapeLeft = true;
        Screen.autorotateToLandscapeRight = true;
        Screen.autorotateToPortrait = false;
        Screen.autorotateToPortraitUpsideDown = false;
        //手机常亮模式

        yield return null;
        Screen.sleepTimeout = SleepTimeout.NeverSleep;
        Application.runInBackground = true;
        Application.targetFrameRate = 30;
        //首先检查游戏调试配置文件
        GameDebugConfig.instance.Init();
        LoggerHelper.Instance.Startup();
        //自动更新可关闭
        if (debugReport == null)
            debugReport = GameObject.Find("Reporter");
        if(debugReport != null)
            debugReport.SetActive(true);
        if (GameDebugConfig.instance.IsConfigOK())
        {
            AssetbundleUpdater.SetUpdateStatus(GameDebugConfig.instance.IsAutoUpdate());
            bool bcshapdebug = GameDebugConfig.instance.IsCShapeDebugOpen();
            Logger.SetLoggerState(bcshapdebug);
            //关闭report模式



             if (debugReport != null )
            {
                Logger.Log("Setdebug reprot：" + bcshapdebug);
                debugReport.SetActive(bcshapdebug);
            }

        }
         Logger.Log(Application.persistentDataPath);



#if UNITY_IPHONE
        UnityEngine.iOS.NotificationServices.RegisterForNotifications(UnityEngine.iOS.NotificationType.Alert | UnityEngine.iOS.NotificationType.Badge | UnityEngine.iOS.NotificationType.Sound);
        UnityEngine.iOS.Device.SetNoBackupFlag(Application.persistentDataPath);
#endif

        // 初始化App版本
        var start = DateTime.Now;
        yield return InitAppVersion();
        Logger.Log(string.Format("InitAppVersion use {0}ms", (DateTime.Now - start).Milliseconds));
       
        // 初始化渠道
        start = DateTime.Now;
        yield return InitChannel();
        Logger.Log(string.Format("InitChannel use {0}ms", (DateTime.Now - start).Milliseconds));

        // 启动资源管理模块
        start = DateTime.Now;
        yield return AssetBundleManager.Instance.Initialize();
        Logger.Log(string.Format("AssetBundleManager Initialize use {0}ms", (DateTime.Now - start).Milliseconds));

        //// 启动xlua热修复模块
        //start = DateTime.Now;
        //XLuaManager.Instance.Startup();

        ////加载 lua 
        //Coroutine co = StartCoroutine(AssetBundleManager.Instance.PreLoadLua());
        //yield return co;
        
        //XLuaManager.Instance.OnInit();
        //XLuaManager.Instance.StartHotfix();
        //Logger.Log(string.Format("XLuaManager StartHotfix use {0}ms", (DateTime.Now - start).Milliseconds));

        yield return null;
        // 初始化UI界面
        yield return InitLaunchPrefab();
        yield return null;
        yield return InitNoticeTipPrefab();

        // 开始更新
        if (updater != null)
        {
            updater.StartCheckUpdate();
        }
        yield break;
	}

    IEnumerator InitAppVersion()
    {
        var appVersionRequest = AssetBundleManager.Instance.RequestAssetFileAsync(BuildUtils.AppVersionFileName);
        yield return appVersionRequest;
        var streamingAppVersion = appVersionRequest.text;
        appVersionRequest.Dispose();

        var appVersionPath = AssetBundleUtility.GetPersistentDataPath(BuildUtils.AppVersionFileName);
        var persistentAppVersion = GameUtility.SafeReadAllText(appVersionPath);
        Logger.Log(string.Format("streamingAppVersion = {0}, persistentAppVersion = {1}", streamingAppVersion, persistentAppVersion));

        // 如果persistent目录版本比streamingAssets目录app版本低，说明是大版本覆盖安装，清理过时的缓存
        if (!string.IsNullOrEmpty(persistentAppVersion) && BuildUtils.CheckIsNewVersion(persistentAppVersion, streamingAppVersion))
        {
            var path = AssetBundleUtility.GetPersistentDataPath();
            GameUtility.SafeDeleteDir(path);
        }
        GameUtility.SafeWriteAllText(appVersionPath, streamingAppVersion);
        ChannelManager.instance.appVersion = streamingAppVersion;
        yield break;
    }

    IEnumerator InitChannel()
    {
#if UNITY_EDITOR
        if (AssetBundleConfig.IsEditorMode)
        {
            yield break;
        }
#endif
        var channelNameRequest = AssetBundleManager.Instance.RequestAssetFileAsync(BuildUtils.ChannelNameFileName);
        yield return channelNameRequest;
        var channelName = channelNameRequest.text;
        if(GameDebugConfig.instance.GetChannelName().Length >0)
        {
            channelName = GameDebugConfig.instance.GetChannelName();
        }
        channelNameRequest.Dispose();
        ChannelManager.instance.Init(channelName);
        Logger.Log(string.Format("channelName = {0}", channelName));
        yield break;
    }

    GameObject InstantiateGameObject(GameObject prefab)
    {
        var start = DateTime.Now;
        GameObject go = GameObject.Instantiate(prefab);
        Logger.Log(string.Format("Instantiate use {0}ms", (DateTime.Now - start).Milliseconds));

        var luanchLayer = GameObject.Find("UIRoot/LuanchLayer");
        var scaler = luanchLayer.GetComponent<UnityEngine.UI.CanvasScaler>();
        if (scaler != null)
        {
            scaler.matchWidthOrHeight = (((Screen.height * 16) / (Screen.width * 9))  > 1f) ? 0f : 1f;
        }

        go.transform.SetParent(luanchLayer.transform);
        var rectTransform = go.GetComponent<RectTransform>();
        rectTransform.offsetMax = Vector2.zero;
        rectTransform.offsetMin = Vector2.zero;
        rectTransform.localScale = Vector3.one;
        rectTransform.localPosition = Vector3.zero;

        return go;
    }

    IEnumerator InitNoticeTipPrefab()
    {
        var start = DateTime.Now;
        var loader = AssetBundleManager.Instance.LoadAssetAsync(noticeTipPrefabPath, typeof(GameObject));
        yield return loader;
        noticeTipPrefab = loader.asset as GameObject;
        Logger.Log(string.Format("Load noticeTipPrefab use {0}ms", (DateTime.Now - start).Milliseconds));
        loader.Dispose();
        if (noticeTipPrefab == null)
        {
            Logger.LogError("LoadAssetAsync noticeTipPrefab err : " + noticeTipPrefabPath);
            yield break;
        }
        var go = InstantiateGameObject(noticeTipPrefab);
        UINoticeTip.Instance.UIGameObject = go;
        yield break;
    }

    IEnumerator InitLaunchPrefab()
    {
        var start = DateTime.Now;
        var loader = AssetBundleManager.Instance.LoadAssetAsync(launchPrefabPath, typeof(GameObject));
        yield return loader;
        launchPrefab= loader.asset as GameObject;
        Logger.Log(string.Format("Load launchPrefab use {0}ms", (DateTime.Now - start).Milliseconds));
        loader.Dispose();
        if (launchPrefab == null)
        {
            Logger.LogError("LoadAssetAsync launchPrefab err : " + launchPrefabPath);
            yield break;
        }
        var go = InstantiateGameObject(launchPrefab);
        updater = go.AddComponent<AssetbundleUpdater>();
        yield break;
    }
}
