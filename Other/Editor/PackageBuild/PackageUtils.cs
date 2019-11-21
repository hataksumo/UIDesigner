using UnityEditor;
using System.IO;
using GameChannel;
using System;
using AssetBundles;
using UnityEngine;
using System.Collections.Generic;
using System.Net;
using System.Net.Sockets;
using System.Text;
using System.Collections;
using System.Xml;
using LJAudio;
using System.Security.Cryptography;
/// <summary>
/// added by wsh @ 2018.01.03
/// 功能： 打包相关配置和通用函数
/// </summary>

public enum LocalServerType
{
    CurrentMachine = 0,
    AnyMachine = 1,
}

public class PackageUtils
{
    public const string LocalServerPrefsKey = "AssetBundlesLocalServerType";
    public const string LocalServerIPPrefsKey = "AssetBundlesLocalServerIP";
    public const string AndroidBuildABForPerChannelPrefsKey = "AndroidBuildABForPerChannelPrefsKey";
    public const string IOSBuildABForPerChannelPrefsKey = "IOSBuildABForPerChannelPrefsKey";
    public const string UseHTTPsServerPrefsKey = "USE_HTTPS)SERVER_PREFS_KEY";
    public static bool GetAndroidBuildABForPerChannelSetting()
    {
        if (!EditorPrefs.HasKey(AndroidBuildABForPerChannelPrefsKey))
        {
            SaveAndroidBuildABForPerChannelSetting(false);
            return false;
        }

        bool enable = EditorPrefs.GetBool(AndroidBuildABForPerChannelPrefsKey, false);
        return enable;
    }

    public static void SaveAndroidBuildABForPerChannelSetting(bool enable)
    {
        EditorPrefs.SetBool(AndroidBuildABForPerChannelPrefsKey, enable);
    }

    public static bool GetIOSBuildABForPerChannelSetting()
    {
        if (!EditorPrefs.HasKey(IOSBuildABForPerChannelPrefsKey))
        {
            SaveIOSBuildABForPerChannelSetting(false);
            return false;
        }

        bool enable = EditorPrefs.GetBool(IOSBuildABForPerChannelPrefsKey, false);
        return enable;
    }

    public static void SaveIOSBuildABForPerChannelSetting(bool enable)
    {
        EditorPrefs.SetBool(IOSBuildABForPerChannelPrefsKey, enable);
    }

    public static LocalServerType GetLocalServerType()
    {
        if (!EditorPrefs.HasKey(LocalServerPrefsKey))
        {
            SaveLocalServerType(LocalServerType.CurrentMachine);
            return LocalServerType.CurrentMachine;
        }

        int type = EditorPrefs.GetInt(LocalServerPrefsKey, (int)LocalServerType.CurrentMachine);
        return (LocalServerType)type;
    }
    public static void SaveServerAddressByType(LocalServerType type,string _address)
    {
        EditorPrefs.SetString(type.ToString(), _address);
    }
    public static string GetServerAddressByType(LocalServerType _type)
    {
        string addressStr = "";
        string defaultStr = _type == LocalServerType.CurrentMachine ? @":7888/Android/Android/" : ":444/pr1/ios/ios/";
        addressStr = EditorPrefs.GetString(_type.ToString(),defaultStr);
        return addressStr;
    }
    public static void SaveLocalServerType(LocalServerType type)
    {
        EditorPrefs.SetInt(LocalServerPrefsKey, (int)type);
    }

    public static string GetLocalServerIP()
    {
        string ip = string.Empty;
        var type = GetLocalServerType();
        if (type == LocalServerType.CurrentMachine)
        {
            ip = GetCurrentMachineLocalIP();
        }
        else
        {
            ip = EditorPrefs.GetString(LocalServerIPPrefsKey, "127.0.0.1");
        }
        return ip;
    }

    public static bool UseHTTPsServer()
    {
        return EditorPrefs.GetBool(UseHTTPsServerPrefsKey, false);
    }

    public static void SetHTTPsServerUsage(bool use )
    {
        EditorPrefs.SetBool(UseHTTPsServerPrefsKey, use);
    }

    public static void SaveLocalServerIP(string ip)
    {
        var type = GetLocalServerType();
        if (type == LocalServerType.CurrentMachine)
        {
            return;
        }
        EditorPrefs.SetString(LocalServerIPPrefsKey, ip);
    }

    public static string GetCurrentMachineLocalIP()
    {
        try
        {
            // 注意：这里获取所有内网地址后选择一个最小的，因为可能存在虚拟机网卡
            var ips = new List<string>();
            var host = Dns.GetHostEntry(Dns.GetHostName());
            foreach (IPAddress ip in host.AddressList)
            {
                if (ip.AddressFamily == AddressFamily.InterNetwork)
                {
                    ips.Add(ip.ToString());
                }
            }
            ips.Sort();
            if (ips.Count <= 0)
            {
                Logger.LogError("Get inter network ip failed!");
            }
            else
            {
                return ips[0];
            }
        }
        catch (System.Exception ex)
        {
            Logger.LogError("Get inter network ip failed with err : " + ex.Message);
            Logger.LogError("Go Tools/Package to specify any machine as local server!!!");
        }
        return string.Empty;
    }

    public static bool BuildAssetBundlesForPerChannel(BuildTarget buildTarget)
    {
        if (buildTarget == BuildTarget.Android && GetAndroidBuildABForPerChannelSetting() ||
            buildTarget == BuildTarget.iOS && GetIOSBuildABForPerChannelSetting())
        {
            return true;
        }
        return false;
    }

    public static string GetCurPlatformName()
    {
        return GetPlatformName(EditorUserBuildSettings.activeBuildTarget);
    }
    
    public static string GetPlatformName(BuildTarget buildTarget)
    {
        switch (buildTarget)
        {
            case BuildTarget.Android:
                return "Android";
            case BuildTarget.iOS:
                return "iOS";
            default:
                Logger.LogError("Error buildTarget!!!");
                return null;
        }
    }

    public static ChannelType GetCurSelectedChannel()
    {
        ChannelType channelType = ChannelType.Ljsd;
        string channelName = EditorPrefs.GetString("ChannelName");
        if (Enum.IsDefined(typeof(ChannelType), channelName))
        {
            channelType = (ChannelType)Enum.Parse(typeof(ChannelType), channelName);
        }
        else
        {
            EditorPrefs.SetString("ChannelName", ChannelType.Ljsd.ToString());
        }
        return channelType;
    }

    public static void SaveCurSelectedChannel(ChannelType channelType)
    {
        EditorPrefs.SetString("ChannelName", channelType.ToString());
    }

    public static string GetPlatformChannelFolderName(BuildTarget target, string channelName)
    {
        if (BuildAssetBundlesForPerChannel(target))
        {
            // 不同渠道的AB输出到不同的文件夹
            return channelName;
        }
        else
        {
            // 否则写入通用的平台文件夹
            return GetPlatformName(target);
        }
    }

    public static string GetChannelRelativePath(BuildTarget target, string channelName)
    {
        string outputPath = Path.Combine(GetPlatformName(target), GetPlatformChannelFolderName(target, channelName));
        return outputPath;
    }
    //public static string GetChannelAudioRelativePath(BuildTarget target, string channelName)
    //{
    //    string outputPath = Path.Combine(GetPlatformName(target), GetPlatformChannelFolderName(target, channelName));
    //    return outputPath;
    //}
    public static string GetAssetBundleRelativePath(BuildTarget target, string channelName)
    {
        string outputPath = GetChannelRelativePath(target, channelName);
        outputPath = Path.Combine(outputPath, BuildUtils.ManifestBundleName);
        return outputPath;
    }
    public static string GetAudioSourceDataPath(string assetPath = null)
    {
        string outputPath = Path.Combine(Application.dataPath, AssetBundleConfig.WWISEAssetBundlAudioPath);
        if (!string.IsNullOrEmpty(assetPath))
        {
            outputPath = Path.Combine(outputPath, assetPath);
        }
        return outputPath;
    }
    public static string GetAssetBundleAudioRelativePath(BuildTarget target, string channelName)
    {
        string outputPath = GetAssetBundleRelativePath(target, channelName);
        outputPath = Path.Combine(outputPath, AssetBundleConfig.AssetBundlesAudioFolderName_GEN);
        return outputPath;
    }
    public static string GetChannelOutputPath(BuildTarget target, string channelName)
    {
        string outputPath = Path.Combine(AssetBundleConfig.AssetBundlesBuildOutputPath, GetChannelRelativePath(target, channelName));
        GameUtility.CheckDirAndCreateWhenNeeded(outputPath);
        return outputPath;
    }

    public static string GetAssetBundleOutputPath(BuildTarget target, string channelName)
    {
        string outputPath = Path.Combine(AssetBundleConfig.AssetBundlesBuildOutputPath, GetAssetBundleRelativePath(target, channelName));
        GameUtility.CheckDirAndCreateWhenNeeded(outputPath);
        return outputPath;
    }
    public static string GetAudioOutputPath(BuildTarget target, string channelName)
    {
        string outputPath = Path.Combine(AssetBundleConfig.AssetBundlesBuildOutputPath, GetAssetBundleAudioRelativePath(target, channelName));
        GameUtility.CheckDirAndCreateWhenNeeded(outputPath);
        return outputPath;
    }
    public static string GetAssetBundleFilePath(BuildTarget target, string channelName, string fileName)
    {
        string outputPath = GetAssetBundleOutputPath(target, channelName);
        return Path.Combine(outputPath, fileName);

    }

    public static string GetAssetbundleManifestPath(BuildTarget target, string channelName)
    {
        string outputPath = GetAssetBundleOutputPath(target, channelName);
        return Path.Combine(outputPath, BuildUtils.ManifestBundleName);
    }

    public static string GetCurPlatformChannelRelativePath()
    {
        var buildTarget = EditorUserBuildSettings.activeBuildTarget;
        var channelName = GetCurSelectedChannel().ToString();
        return GetChannelRelativePath(buildTarget, channelName);
    }

    public static string GetCurBuildSettingAssetBundleOutputPath()
    {
        var buildTarget = EditorUserBuildSettings.activeBuildTarget;
        var channelType = GetCurSelectedChannel();
        return GetAssetBundleOutputPath(buildTarget, channelType.ToString());
    }

    public static string GetCurBuildSettingAssetBundleManifestPath()
    {
        var buildTarget = EditorUserBuildSettings.activeBuildTarget;
        var channelType = GetCurSelectedChannel();
        return GetAssetbundleManifestPath(buildTarget, channelType.ToString());
    }

    public static string GetCurBuildSettingStreamingManifestPath()
    {
        string path = AssetBundleUtility.GetStreamingAssetsDataPath();
        path = Path.Combine(path, BuildUtils.ManifestBundleName);
        return path;
    }

    public static AssetBundleManifest GetManifestFormLocal(string manifestPath)
    {
        FileInfo fileInfo = new FileInfo(manifestPath);
        if (!fileInfo.Exists)
        {
            Debug.LogError("You need to build assetbundles first to get assetbundle dependencis info!");
            return null;
        }
        byte[] bytes = GameUtility.SafeReadAllBytes(fileInfo.FullName);
        if (bytes == null)
        {
            return null;
        }
        AssetBundle assetBundle = AssetBundle.LoadFromMemory(bytes);
        AssetBundleManifest manifest = assetBundle.LoadAsset<AssetBundleManifest>("AssetBundleManifest");
        assetBundle.Unload(false);
        return manifest;
    }

    public static void CopyAssetBundlesToStreamingAssets(BuildTarget buildTarget, string channelName)
    {
        string source = GetAssetBundleOutputPath(buildTarget, channelName);
        string destination = AssetBundleUtility.GetStreamingAssetsDataPath();
 
        CopyFolder(source, destination, ".manifest");

        string sourcePath = GetAudioOutputPath(buildTarget, channelName);
        string pltname = GetPlatformName(buildTarget);
        string soundbakSrcpath = Path.Combine(sourcePath, pltname);
        soundbakSrcpath = Path.Combine(soundbakSrcpath, AssetBundleConfig.WWISESoundbanksInfo);
        string soundbakDstpath = Path.Combine(Application.dataPath, AssetBundleConfig.WWISESoundbanksInfoPath);
        try
        {
            GameUtility.SafeDeleteFile(soundbakDstpath);
            Logger.Log(soundbakSrcpath);
            if (File.Exists(soundbakSrcpath))
            {
                FileUtil.CopyFileOrDirectoryFollowSymlinks(soundbakSrcpath, soundbakDstpath);
            }
        }
        catch (System.Exception ex)
        {
            Debug.LogError("Something wrong, you need manual delete AssetBundles folder in StreamingAssets, err : " + ex);
            return;
        }

        //copy視頻资源
        source = Path.Combine(Application.dataPath, AssetBundleConfig.StoryVideoSrcPath);
        destination = Path.Combine(Application.dataPath, "StreamingAssets");
        destination = Path.Combine(destination, AssetBundleConfig.StoryVideoPath);
        CopyFolder(source, destination, ".meta");

        //copy視頻资源
        source += "_Low";
        destination += "_Low";
        CopyFolder(source, destination, ".meta");
        Debug.Log("Video Copy Finished");

        AssetDatabase.Refresh();
        Debug.Log("CopyAssetBundlesToStreamingAssets success");
    }
 
    public static void CopyAssetBundlesAudioToStreamingAssetsAudio(BuildTarget buildTarget, string channelName)
    {
        string pltname = GetPlatformName(buildTarget);

        string sourcePath = GetAudioOutputPath(buildTarget, channelName);
        //string sourcePath = Path.Combine(source, pltname);

        string destination = AssetBundleUtility.GetStreamingAssetsAudioDataPath();
        string destPath = Path.Combine(destination, pltname);
        GameUtility.CheckDirAndCreateWhenNeeded(destPath);
        GameUtility.SafeDeleteDir(destPath);
        //清理目录
        CopyFolder(sourcePath, destPath, ".meta");
        string soundbakSrcpath = Path.Combine(sourcePath, AssetBundleConfig.WWISESoundbanksInfo);
        string soundbakDstpath = Path.Combine(Application.dataPath, AssetBundleConfig.WWISESoundbanksInfoPath);
        try
        {
            GameUtility.SafeDeleteFile(soundbakDstpath);
            FileUtil.CopyFileOrDirectoryFollowSymlinks(soundbakSrcpath, soundbakDstpath);
        }
        catch (System.Exception ex)
        {
            Debug.LogError("CopyAssetBundlesAudioToStreamingAssetsAudio, err : " + ex);
            return;
        }
        Debug.Log("CopyAssetBundlesAudioToStreamingAssetsAudio success");

        AssetDatabase.Refresh();
    }
    public static string GetFileMD5(string filePath)
    {
        if (string.IsNullOrEmpty(filePath))
        {
            throw new System.Exception("Cannot calc MD5 for a File which path is NULL!!");
        }
        try
        {
            FileStream fs = new FileStream(filePath, System.IO.FileMode.Open);
            var md5 = new MD5CryptoServiceProvider();
            byte[] buff = md5.ComputeHash(fs);
            string ret = System.BitConverter.ToString(buff);
            md5.Clear();
            fs.Close();
            return ret;

        }
        catch (System.Exception ex)
        {
            throw new System.Exception(string.Format("Error occured when calcing MD5 for a File {0}\n ErrorInfo:{1}", filePath, ex.Message));
        }
    }
    //转换生成自动更新的音效资源
    public static void BuildAudioData(BuildTarget buildTarget, string channelName)
    {
        //首先从资源路径复制所有音效资源到更新路径
        string pltname = GetPlatformName(buildTarget);

        //取得音效的原始路径
        string sourcePath = GetAudioSourceDataPath(pltname);
        //资源输出路径
        string AssetsPath = GetAssetBundleOutputPath(buildTarget, channelName);
        //需要复制到的资源路径
        string destPath = Path.Combine(AssetsPath, AssetBundleConfig.AssetBundlesAudioFolderName_GEN);
        //加入平台
        destPath = Path.Combine(destPath, pltname);
        //要删除的Audio路径
        string delpath = Path.Combine(AssetsPath, AssetBundleConfig.AssetBundlesAudioFolderName);
        // 有毒，竟然在有的windows系统这个函数删除不了目录，不知道是不是Unity的Bug
        // GameUtility.SafeDeleteDir(destination);
        destPath = GameUtility.FormatToUnityPath(destPath);
        sourcePath = GameUtility.FormatToUnityPath(sourcePath);
        delpath = GameUtility.FormatToUnityPath(delpath);
        //如果文件夹下面有meta文件的时候无法删除文件夹，因为meta文件是隐藏文件，需要权限
         CopyFolder(sourcePath, destPath, ".meta");
          //转换xml为json
        string path = Path.Combine(destPath, AssetBundleConfig.WWISESoundbanksInfo_XML);
        Debug.Log(path);
        string soundStr = string.Empty;
        if (File.Exists(path))
        {
            soundStr = File.ReadAllText(path);
        }
        else
        {
            CreateAssetbundleMd5(destPath, AssetsPath);
            Logger.LogError("文件不存在，请放入文件,如果不需要转换请忽略");
            return;
            //soundStr = Resources.Load<TextAsset>("SoundbanksInfo").text;
        }
        BnkJson bJson = new BnkJson();
        bJson.m = new List<BnkMap>();

        XmlElement xml_root = XmlParse.LoadXml(soundStr);
        XmlNode soundBanks = XmlParse.FindSingleNode(xml_root, "SoundBanks");
        XmlNodeList node_list = soundBanks.ChildNodes;
        IEnumerator _enmu = node_list.GetEnumerator();
        while (_enmu.MoveNext())
        {
            XmlNode temp_node = _enmu.Current as XmlNode;
            string bnkName = temp_node.SelectSingleNode("ShortName").InnerText;
            XmlNode eventNodes = temp_node.SelectSingleNode("IncludedEvents");
            if (eventNodes != null)
            {
                XmlNodeList eventList = eventNodes.SelectNodes("Event");
                IEnumerator _enmuEvent = eventList.GetEnumerator();
                while (_enmuEvent.MoveNext())
                {
                    BnkMap bMap = new BnkMap();

                    XmlNode temp_event_node = _enmuEvent.Current as XmlNode;
                    string key = temp_event_node.Attributes["Name"].InnerText;

                    bMap.n = key;

                    BnkData bData = new BnkData();
                    bData.id = uint.Parse(temp_event_node.Attributes["Id"].InnerText);
                    bData.bnk = bnkName;

                    bMap.d = bData;

                    bJson.m.Add(bMap);
                }
            }

        }
        string wwiseInfo = JsonUtility.ToJson(bJson);
        string jsonpath = Path.Combine(destPath, AssetBundleConfig.WWISESoundbanksInfo); ;

        //删除原始的xml文件
        if (File.Exists(jsonpath)) File.Delete(jsonpath);

        File.WriteAllText(jsonpath, wwiseInfo, System.Text.Encoding.UTF8);
        File.Delete(path);
        Debug.Log("Json " + AssetBundleConfig.WWISESoundbanksInfo + " 生成成功");

        //拷贝和转换完成之后需要生成所有文件的md5值
        CreateAssetbundleMd5(destPath, AssetsPath);
 

        AssetDatabase.Refresh();
    }

    public static void CreateAssetbundleMd5(string destPath,string AssetsPath)
    {
        var allFiles = GameUtility.GetSpecifyFilesInFolder(destPath);
        StringBuilder sb = new StringBuilder();
        if (allFiles != null && allFiles.Length > 0)
        {
            foreach (var file in allFiles)
            {
                FileInfo fileInfo = new FileInfo(file);
                int size = (int)(fileInfo.Length / 1024) + 1;
                string md5 = GetFileMD5(file);
                string fullName = "";
#if UNITY_IPHONE || UNITY_IOS
                fullName = fileInfo.FullName.Split(new string[] { "GeneratedSoundBanks/"},StringSplitOptions.None)[1];
                fullName = fullName.Replace("iOS/", "");
#elif UNITY_ANDROID
                fullName = fileInfo.FullName.Split(new string[] { "GeneratedSoundBanks\\" }, StringSplitOptions.None)[1];
                fullName = fullName.Replace("Android\\", "");
#else
                fullName = fileInfo.FullName.Split(new string[] { "GeneratedSoundBanks\\" }, StringSplitOptions.None)[1];
                fullName = fullName.Replace("Windows\\", "");
#endif
                fullName = fullName.Replace("\\", "/");
                md5 = md5.Replace("-", "");
                sb.AppendFormat("{0}{1}{2}{3}{4}{5}{6}\n", fullName, AssetBundleConfig.CommonMapPattren, size, AssetBundleConfig.CommonMapPattren, md5, AssetBundleConfig.CommonMapPattren, 2);
            }
        }
        //添加assetbundle
        AssetBundle assetBundle = AssetBundle.LoadFromFile(AssetsPath + "/" + BuildUtils.ManifestBundleName);
        if (assetBundle != null)
        {
            AssetBundleManifest manifest = assetBundle.LoadAsset<AssetBundleManifest>("AssetBundleManifest");
            string[] self_name_list = manifest.GetAllAssetBundles();
            foreach (string name in self_name_list)
            {
                string file_path = AssetsPath + "/" + name;
                FileInfo file = new FileInfo(file_path);
                int size = (int)(file.Length / 1024) + 1;
                string md5 = GetFileMD5(file_path);
                md5 = md5.Replace("-", "");
                sb.AppendFormat("{0}{1}{2}{3}{4}{5}{6}\n", name, AssetBundleConfig.CommonMapPattren, size, AssetBundleConfig.CommonMapPattren, md5, AssetBundleConfig.CommonMapPattren, 1);
            }

            assetBundle.Unload(false);
        }
        //添加assetBundle
        FileInfo mainistfile = new FileInfo(AssetsPath + "/" + BuildUtils.ManifestBundleName);
        int size2 = (int)(mainistfile.Length / 1024) + 1;
        string md52 = GetFileMD5(AssetsPath + "/" + BuildUtils.ManifestBundleName);
        md52 = md52.Replace("-", "");
        sb.AppendFormat("{0}{1}{2}{3}{4}{5}{6}\n", BuildUtils.ManifestBundleName, AssetBundleConfig.CommonMapPattren, size2, AssetBundleConfig.CommonMapPattren, md52, AssetBundleConfig.CommonMapPattren, 1);

        string content = sb.ToString().Trim();
        GameUtility.SafeWriteAllText(Path.Combine(AssetsPath, BuildUtils.UpdateFileName), content);
        Debug.Log("生成 Ms5 文件成功");
    }


    public static void CopyCurSettingAssetBundlesToStreamingAssets(BuildTarget buildTarget)
    {
        //var buildTarget = EditorUserBuildSettings.activeBuildTarget;
        var channelName = GetCurSelectedChannel().ToString();
        CopyAssetBundlesToStreamingAssets(buildTarget, channelName);
        Debug.Log("Copy channel assetbundles to streaming assets done!");
    }

    public static void CheckAndAddSymbolIfNeeded(BuildTarget buildTarget, string targetSymbol)
    {
        if (buildTarget != BuildTarget.Android && buildTarget != BuildTarget.iOS)
        {
            Debug.LogError("Only support Android and IOS !");
            return;
        }

        var buildTargetGroup = buildTarget == BuildTarget.Android ? BuildTargetGroup.Android : BuildTargetGroup.iOS;
        var symbols = PlayerSettings.GetScriptingDefineSymbolsForGroup(buildTargetGroup);
        if (!symbols.Contains("HOTFIX_ENABLE"))
        {
            symbols = string.Format("{0};{1};", symbols, "HOTFIX_ENABLE");
        }
        PlayerSettings.SetScriptingDefineSymbolsForGroup(buildTargetGroup, symbols);
    }

    public static void CheckAndRunAllCheckers(bool buildForPerChannel, bool forceRun)
    {
        // 这东西有点浪费时间，没必要的时候不跑它
        if (AssetBundleDispatcherInspector.hasAnythingModified || forceRun)
        {
            AssetBundleDispatcherInspector.hasAnythingModified = false;
            var start = DateTime.Now;
            CheckAssetBundles.Run(buildForPerChannel);
            Debug.Log("Finished CheckAssetBundles.Run! use " + (DateTime.Now - start).TotalSeconds + "s");
        }
    }
    
    public static void CopyAndroidSDKResources(string channelName)
    {
        string targetPath = Path.Combine(Application.dataPath, "Plugins");
        targetPath = Path.Combine(targetPath, "Android");
        GameUtility.SafeClearDir(targetPath);
        
        string channelPath = Path.Combine(Environment.CurrentDirectory, "Channel");
        string resPath = Path.Combine(channelPath, "UnityCallAndroid_" + channelName);
        if (!Directory.Exists(resPath))
        {
            resPath = Path.Combine(channelPath, "UnityCallAndroid");
        }

        EditorUtility.DisplayProgressBar("提示", "正在拷贝SDK资源，请稍等", 0f);
        PackageUtils.CopyJavaFolder(resPath + "/assets", targetPath + "/assets");
        EditorUtility.DisplayProgressBar("提示", "正在拷贝SDK资源，请稍等", 0.3f);
        PackageUtils.CopyJavaFolder(resPath + "/libs", targetPath + "/libs");
        EditorUtility.DisplayProgressBar("提示", "正在拷贝SDK资源，请稍等", 0.6f);
        PackageUtils.CopyJavaFolder(resPath + "/res", targetPath + "/res");
        if (File.Exists(resPath + "/bin/UnityCallAndroid.jar"))
        {
            File.Copy(resPath + "/bin/UnityCallAndroid.jar", targetPath + "/libs/UnityCallAndroid.jar", true);
        }
        if (File.Exists(resPath + "/AndroidManifest.xml"))
        {
            File.Copy(resPath + "/AndroidManifest.xml", targetPath + "/AndroidManifest.xml", true);
        }

        EditorUtility.DisplayProgressBar("提示", "正在拷贝SDK资源，请稍等", 1f);
        EditorUtility.ClearProgressBar();
        AssetDatabase.Refresh();
    }

    public static void CopyJavaFolder(string source, string destination)
    {
        if (!Directory.Exists(source))
        {
            return;
        }
        if (!Directory.Exists(destination))
        {
            Directory.CreateDirectory(destination);
            AssetDatabase.Refresh();
        }

        string[] sourceDirs = Directory.GetDirectories(source);
        for (int i = 0; i < sourceDirs.Length; i++)
        {
            CopyJavaFolder(sourceDirs[i] + "/", destination + "/" + Path.GetFileName(sourceDirs[i]));
        }

        string[] sourceFiles = Directory.GetFiles(source);
        for (int j = 0; j < sourceFiles.Length; j++)
        {
            if (sourceFiles[j].Contains("classes.jar"))
            {
                continue;
            }
            File.Copy(sourceFiles[j], destination + "/" + Path.GetFileName(sourceFiles[j]), true);
        }
    }
    public static bool CopyFolder(string src, string dst, string filter)
    {
        if (!Directory.Exists(src))
        {
            Debug.LogError("folder "+src+" :is not exist");
            return false;
        }
        if (!Directory.Exists(dst))
        {
            //逐级创建
            GameUtility.CheckDirAndCreateWhenNeeded(dst);
            //删除最终
            GameUtility.SafeDeleteDir(dst);
        }
        else
        {
            GameUtility.SafeDeleteDir(dst);
        }
        //检测目标路路径是否存在
        Debug.Log("CopyFolder src Path:" + src);
        Debug.Log("CopyFolder dst Path:" + dst);
        try
        {
            FileUtil.CopyFileOrDirectory(src, dst);
            if(filter.Length >0)
            {
                var allfiles = GameUtility.GetSpecifyFilesInFolder(dst);
                if (allfiles != null && allfiles.Length > 0)
                {
                    for (int i = 0; i < allfiles.Length; i++)
                    {
                        if (allfiles[i].IndexOf(filter) >= 0)
                        {
                            GameUtility.SafeDeleteFile(allfiles[i]);
                        }
                    }
                }
            }

        }
        catch (System.Exception ex)
        {
            Debug.LogError("Copy folder err : " + ex);
            return false;
        }
        return true;

    }
}
