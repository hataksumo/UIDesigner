using UnityEngine;
using UnityEditor;
using System;
using System.IO;

public class AutoBuild 
{
    static private BuildTarget buildTarget = BuildTarget.Android;
    static private BuildTarget buildTargetIOS = BuildTarget.iOS;
    static bool isDelAllRes = false;
    static bool isBuildRes = false;
    static bool genXluaCode = false;
    static bool isCpp = false;
    static string res_url = "";
    static string savePath = "";
    static string appName = "zhj_";

    static private GameChannel.ChannelType channelType = GameChannel.ChannelType.Ljsd;
    public static string GetJenkinsParameter(string name)
    {
        //string[] paramstring = System.Environment.GetCommandLineArgs();
        //string[] paramstring = { "isDelAllRes-false", "isBuildRes-true", "genXluaCode-false", "apkName-zhj_test", "res_url-https://60.1.1.11/dl/iOS/iOS/", "outPath-/Users/lanjing_mac_mini/Documents/Projects/release/ios/", "xcodePath-/Users/lanjing_mac_mini/Documents/Projects/zhj_client/zhj_client_xcode" };
        foreach (string item in System.Environment.GetCommandLineArgs())
        {
            if(item.StartsWith(name))
            {
                return item.Split('-')[1];
            }
        }
        return null;
    }
    public static void InvalidDataParam()
    {
        string temp = GetJenkinsParameter("isDelAllRes");
        if (!string.IsNullOrEmpty(temp))
        {
            isDelAllRes = bool.Parse(temp);
        }
        temp = GetJenkinsParameter("isBuildRes");
        if (!string.IsNullOrEmpty(temp))
        {
            isBuildRes = bool.Parse(temp);
        }
        temp = GetJenkinsParameter("genXluaCode");
        if (!string.IsNullOrEmpty(temp))
        {
            genXluaCode = bool.Parse(temp);
        }
        temp = GetJenkinsParameter("isCpp");
        if (!string.IsNullOrEmpty(temp))
        {
            isCpp = bool.Parse(temp);
        }
        res_url = GetJenkinsParameter("res_url");
        appName = GetJenkinsParameter("apkName");

    }
    public static void AutoBuildApk()
    {
        buildTarget = EditorUserBuildSettings.activeBuildTarget;
        bool isDelAllRes = false;
        string temp = GetJenkinsParameter("isDelAllRes");
        if (!string.IsNullOrEmpty(temp))
        {
            isDelAllRes = bool.Parse(temp);
        }
        bool isBuildRes = false;
        temp = GetJenkinsParameter("isBuildRes");
        if (!string.IsNullOrEmpty(temp))
        {
            isBuildRes = bool.Parse(temp);
        }
        bool genXluaCode = false;
        temp = GetJenkinsParameter("genXluaCode");
        if(!string.IsNullOrEmpty(temp))
        {
            genXluaCode = bool.Parse(temp);
        }
        bool isCpp = false;
        temp = GetJenkinsParameter("isCpp");
        if(!string.IsNullOrEmpty(temp))
        {
            isCpp = bool.Parse(temp);
        }
        if(isDelAllRes)
        {
            string outputPath2 = PackageUtils.GetCurBuildSettingAssetBundleOutputPath();
            GameUtility.SafeDeleteDir(outputPath2);
            Debug.Log(string.Format("Clear done : {0}", outputPath2));
        }
        temp = GetJenkinsParameter("channel");
        if (!string.IsNullOrEmpty(temp))
        {
            channelType = (GameChannel.ChannelType)Enum.Parse(typeof(GameChannel.ChannelType), temp);
        }
        if (isBuildRes)
        {
            PackageTool.AutoBuildPack(buildTarget, channelType);
            PackageTool.BuildAssetBundlesForCurrentChannel();
            Debug.Log("BuildRes done ");
            PackageUtils.CopyCurSettingAssetBundlesToStreamingAssets(buildTarget);
        }
        if(genXluaCode)
        {
            PackageTool.GenXLuaCode(buildTarget);
        }
        Debug.Log("开始构建安装包参数");
        string res_url = GetJenkinsParameter("res_url");
        if(!string.IsNullOrEmpty(res_url))
        {
            var path = AssetBundles.LaunchAssetBundleServer.GetStreamingAssetBundleServerUrl();
            GameUtility.SafeWriteAllText(path, res_url);
            Debug.Log(res_url);
        }

        GameChannel.BaseChannel channel = GameChannel.ChannelManager.instance.CreateChannel(channelType.ToString());
        if(isCpp)
        {
            PlayerSettings.SetScriptingBackend(BuildTargetGroup.Android, ScriptingImplementation.IL2CPP);
        }
        else
        {
            PlayerSettings.SetScriptingBackend(BuildTargetGroup.Android, ScriptingImplementation.Mono2x);
        }
        PlayerSettings.stripEngineCode = false;
        PlayerSettings.SplashScreen.showUnityLogo = false;
        if (channel != null)
        {
#if UNITY_5_6_OR_NEWER
            PlayerSettings.SetApplicationIdentifier(BuildTargetGroup.Android, channel.GetBundleID());
#else
            PlayerSettings.bundleIdentifier = channel.GetBundleID();
#endif
            PlayerSettings.productName = channel.GetProductName();
            PlayerSettings.companyName = channel.GetCompanyName();
        }

        string savePath = "E:\\APK";
        string appName = GetJenkinsParameter("apkName")+".apk";
        if(string.IsNullOrEmpty(appName))
        {
            appName = "zhj";
        }
        if (channel.IsGooglePlay())
        {
            savePath = Path.Combine(savePath, "GooglePlay");
            GameUtility.SafeDeleteDir(savePath);
            BuildPipeline.BuildPlayer(BuildPlayer.GetBuildScenes(), savePath, buildTarget, BuildOptions.AcceptExternalModificationsToPlayer);
        }
        else
        {
            Debug.Log("开始打包");
            savePath = Path.Combine(savePath, appName);
            BuildPipeline.BuildPlayer(BuildPlayer.GetBuildScenes(), savePath, buildTarget, BuildOptions.None);
        }

        Debug.Log(string.Format("Build android player for : {0} done! output ：{1}", channelType.ToString(), savePath));
        //bool.Parse(GetJenkinsParameter("GetJenkinsParameter"));
    }


    public static void IosAutoBuildApk()
    {
        InvalidDataParam();
        if (genXluaCode)
        {
            PackageTool.GenXLuaCode(buildTarget);
        }
        if (isDelAllRes)
        {
            string outputPath2 = PackageUtils.GetCurBuildSettingAssetBundleOutputPath();
            GameUtility.SafeDeleteDir(outputPath2);
            Debug.Log(string.Format("Clear done : {0}", outputPath2));
        }
        if (isBuildRes)
        {
            PackageTool.AutoBuildPack(buildTarget, GameChannel.ChannelType.Ljsd);
            PackageTool.BuildAssetBundlesForCurrentChannel();
            Debug.Log("BuildRes done "+ buildTarget.ToString());
            PackageUtils.CopyCurSettingAssetBundlesToStreamingAssets(buildTarget);
        }

        Debug.Log("开始构建安装包参数");
        if (!string.IsNullOrEmpty(res_url))
        {
            var path = AssetBundles.LaunchAssetBundleServer.GetStreamingAssetBundleServerUrl();
            GameUtility.SafeWriteAllText(path, res_url);
            Debug.Log(res_url);
        }

        GameChannel.BaseChannel channel = GameChannel.ChannelManager.instance.CreateChannel(channelType.ToString());
        if (isCpp)
        {
            PlayerSettings.SetScriptingBackend(BuildTargetGroup.Android, ScriptingImplementation.IL2CPP);
        }
        else
        {
            PlayerSettings.SetScriptingBackend(BuildTargetGroup.Android, ScriptingImplementation.Mono2x);
        }
        if (channel != null)
        {
#if UNITY_5_6_OR_NEWER
            PlayerSettings.SetApplicationIdentifier(BuildTargetGroup.Android, channel.GetBundleID());
#else
            PlayerSettings.bundleIdentifier = channel.GetBundleID();
#endif
            PlayerSettings.productName = channel.GetProductName();
            PlayerSettings.companyName = channel.GetCompanyName();
        }
        PlayerSettings.stripEngineCode = false;
        string savePath = GetJenkinsParameter("outPath");
        System.DateTime dt = System.DateTime.Now;
        appName = appName + "-" + string.Format("{0:MM-dd-HH-mm-ss-ffff}", dt) + ".apk";
        if (channel.IsGooglePlay())
        {
            savePath = Path.Combine(savePath, "GooglePlay");
            GameUtility.SafeDeleteDir(savePath);
            BuildPipeline.BuildPlayer(BuildPlayer.GetBuildScenes(), savePath, buildTarget, BuildOptions.AcceptExternalModificationsToPlayer);
        }
        else
        {
            Debug.Log("开始打包");
            savePath = Path.Combine(savePath, appName);
            BuildPipeline.BuildPlayer(BuildPlayer.GetBuildScenes(), savePath, buildTarget, BuildOptions.None);
        }

        Debug.Log(string.Format("Build android player for : {0} done! output ：{1}", channelType.ToString(), savePath));
        //bool.Parse(GetJenkinsParameter("GetJenkinsParameter"));
    }
    public static void IosAutoBuildIphone()
    {
        InvalidDataParam();
        string xcodepath = GetJenkinsParameter("xcodePath");
        if (genXluaCode)
        {
            PackageTool.GenXLuaCode(buildTargetIOS);
        }
        if (isDelAllRes)
        {
            string outputPath2 = PackageUtils.GetCurBuildSettingAssetBundleOutputPath();
            GameUtility.SafeDeleteDir(outputPath2);
            Debug.Log(string.Format("Clear done : {0}", outputPath2));
        }
        if (isBuildRes)
        {
            PackageTool.AutoBuildPack(buildTargetIOS, GameChannel.ChannelType.Ljsd);
            PackageTool.BuildAssetBundlesForCurrentChannel();
            Debug.Log("BuildRes done " + buildTargetIOS.ToString());
            PackageUtils.CopyCurSettingAssetBundlesToStreamingAssets(buildTargetIOS);
        }

        Debug.Log("开始构建安装包参数");
        if (!string.IsNullOrEmpty(res_url))
        {
            var path = AssetBundles.LaunchAssetBundleServer.GetStreamingAssetBundleServerUrl();
            GameUtility.SafeWriteAllText(path, res_url);
            Debug.Log(res_url);
        }
        GameChannel.BaseChannel channel = GameChannel.ChannelManager.instance.CreateChannel(channelType.ToString());
        if (channel != null)
        {

            PlayerSettings.applicationIdentifier = channel.GetBundleID();
            PlayerSettings.productName = channel.GetProductName();
            PlayerSettings.companyName = channel.GetCompanyName();
            //Bundle version code自动加一
            string strnumber = PlayerSettings.iOS.buildNumber;
            int number = int.Parse(strnumber);
            number++;
            PlayerSettings.iOS.buildNumber = number.ToString();
            PlayerSettings.iOS.applicationDisplayName = PlayerSettings.productName;
            PlayerSettings.iOS.appleEnableAutomaticSigning = true;
            PlayerSettings.iOS.appleDeveloperTeamID = "K38NUKF4UV";
        }
        PlayerSettings.stripEngineCode = false;
        PlayerSettings.SetScriptingDefineSymbolsForGroup(BuildTargetGroup.iOS, "HOTFIX_ENABLE;UNITY_POST_PROCESSING_STACK_V2");

        System.DateTime dt = System.DateTime.Now;
        //appName = appName + "-" + string.Format("{0:MM-dd}", dt) + "-"+ PlayerSettings.iOS.buildNumber;

        
        //xcodepath = Path.Combine(xcodepath, appName);
        Debug.Log("开始打包 path:" + xcodepath);
        BuildPipeline.BuildPlayer(BuildPlayer.GetBuildScenes(), xcodepath, buildTargetIOS, BuildOptions.None);
    }
    //编译更新资源，走自动更新
    //[MenuItem("Tools/AutoBuild", false, 0)]
    public static void AutoBuildResUpdate()
    {
        bool isBuildRes = false;
        string temp = GetJenkinsParameter("isBuildRes");
        if (!string.IsNullOrEmpty(temp))
        { 
            isBuildRes = bool.Parse(temp);
        }
        temp = GetJenkinsParameter("channel");
        if (!string.IsNullOrEmpty(temp))
        {
            channelType = (GameChannel.ChannelType)Enum.Parse(typeof(GameChannel.ChannelType), temp);
        }
        if (isBuildRes)
        {
            buildTarget = EditorUserBuildSettings.activeBuildTarget;

            PackageTool.AutoBuildPack(buildTarget, channelType);
            PackageTool.BuildAssetBundlesForCurrentChannel();
            Debug.Log("BuildRes done ");
         }
    }
}
