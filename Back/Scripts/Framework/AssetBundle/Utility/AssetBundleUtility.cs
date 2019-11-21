using UnityEngine;
using XLua;
using System.IO;

/// <summary>
/// added by wsh @ 2017.12.25
/// 功能： Assetbundle相关的通用静态函数，提供运行时，或者Editor中使用到的有关Assetbundle操作和路径处理的函数
/// TODO：
/// 1、做路径处理时是否考虑引入BetterStringBuilder消除GC问题
/// 2、目前所有路径处理不支持variant，后续考虑是否支持
/// </summary>

namespace AssetBundles
{
    [Hotfix]
    [LuaCallCSharp]
    public class AssetBundleUtility
    {
        private static string GetPlatformName(RuntimePlatform platform)
        {
            switch (platform)
            {
                case RuntimePlatform.Android:
                    return "Android";
                case RuntimePlatform.IPhonePlayer:
                    return "iOS";
                default:
                    Logger.LogError("Error platform!!!");
                    return null;
            }
        }

        #region normal file path  标准IO API使用的路径
        public static string GetPersistentDataPath(string assetPath = null)
        {
            string outputPath = Path.Combine(Application.persistentDataPath, AssetBundleConfig.AssetBundlesFolderName);
            if (!string.IsNullOrEmpty(assetPath))
            {
                outputPath = Path.Combine(outputPath, assetPath);
            }
#if UNITY_EDITOR
            return GameUtility.FormatToSysFilePath(outputPath);
#else
            return outputPath;
#endif
        }
        //获取更新资源音效的下载路劲
        public static string GetPersistentAudioDataPath(string filename = null)
        {
            string outputPath = GetAudioDownLoadSourcePath(filename);
            return GetPersistentDataPath(outputPath);
        }
        public static string GetStreamingAssetsDataPath(string assetPath = null)
        {
            string outputPath = Path.Combine(Application.streamingAssetsPath, AssetBundleConfig.AssetBundlesFolderName);
            if (!string.IsNullOrEmpty(assetPath))
            {
                outputPath = Path.Combine(outputPath, assetPath);
            }
            return outputPath;
        }
        public static string GetStreamingAssetsAudioDataPath(string assetPath = null)
        {
            string outputPath = GetStreamingAssetsDataPath();
            outputPath = Path.Combine(outputPath, AssetBundleConfig.AssetBundlesAudioFolderName_GEN);
            if (!string.IsNullOrEmpty(assetPath))
            {
                outputPath = Path.Combine(outputPath, assetPath);
            }
            return outputPath;
        }

        public static bool CheckPersistentFileExsits(string filePath)
        {
            var path = GetPersistentDataPath(filePath);
            return File.Exists(path);
        }
        #endregion normal file path

        #region loadfrom file path  Assetbundle使用的路径，区分平台
        public static string GetStreamingAssetsFilePath(string assetPath = null)
        {
#if UNITY_EDITOR
            string outputPath = Path.Combine(Application.streamingAssetsPath, AssetBundleConfig.AssetBundlesFolderName);
#else
#if UNITY_IPHONE || UNITY_IOS
            string outputPath = Path.Combine(Path.Combine(Application.dataPath, "Raw"), AssetBundleConfig.AssetBundlesFolderName);
#elif UNITY_ANDROID
            string outputPath = Path.Combine(string.Concat(Application.dataPath, "!assets") ,AssetBundleConfig.AssetBundlesFolderName);
#else
            Logger.LogError("Unsupported platform!!!");
#endif
#endif
            if (!string.IsNullOrEmpty(assetPath))
            {
                outputPath = Path.Combine(outputPath, assetPath);
            }
            return outputPath;
        }

        public static string GetPersistentFilePath(string assetPath = null)
        {
            return GetPersistentDataPath(assetPath);
        }

        public static string GetAssetBundleFileUrl(string filePath)
        {
            if (CheckPersistentFileExsits(filePath))
            {
                return GetPersistentFilePath(filePath);
            }
            else
            {
                return GetStreamingAssetsFilePath(filePath);
            }

        }
        #endregion loadfrom file path

        #region www path www使用的路径，区分平台
        public static string GetStreamingAssetsFilePathWWW(string assetPath = null)
        {
#if UNITY_EDITOR
            string outputPath = Path.Combine("file://" + Application.streamingAssetsPath, AssetBundleConfig.AssetBundlesFolderName);
#else
#if UNITY_IPHONE || UNITY_IOS
                    string outputPath = Path.Combine("file://" + Application.streamingAssetsPath, AssetBundleConfig.AssetBundlesFolderName);
#elif UNITY_ANDROID
                    string outputPath = Path.Combine(Application.streamingAssetsPath, AssetBundleConfig.AssetBundlesFolderName);
#else
                    Logger.LogError("Unsupported platform!!!");
#endif
#endif
            if (!string.IsNullOrEmpty(assetPath))
            {
                outputPath = Path.Combine(outputPath, assetPath);
            }
            return outputPath;
        }
        public static string GetStreamingAssetsFilePathWWWForAudio(string assetPath = null)
        {
#if UNITY_EDITOR
            string outputPath = Path.Combine("file://" + Application.streamingAssetsPath, AssetBundleConfig.AssetBundlesAudioFolderName_GEN);
            outputPath = Path.Combine(outputPath, "Android");
#else
#if UNITY_IPHONE || UNITY_IOS
                    string outputPath = Path.Combine("file://" + Application.streamingAssetsPath, AssetBundleConfig.AssetBundlesAudioFolderName_GEN);
            outputPath = Path.Combine(outputPath, "iOS");
#elif UNITY_ANDROID
                    string outputPath = Path.Combine(Application.streamingAssetsPath, AssetBundleConfig.AssetBundlesAudioFolderName_GEN);
                        outputPath = Path.Combine(outputPath, "Android");
#else
                    Logger.LogError("Unsupported platform!!!");
#endif
#endif
            if (assetPath != null)
            {
                outputPath = Path.Combine(outputPath, assetPath);
            }
            return outputPath;
        }
        public static string GetPersistentFilePathWWW(string assetPath = null)
        {
            return "file://" + GetPersistentDataPath(assetPath);
        }
        public static string GetAudioDownLoadSourcePath(string filename)
        {

#if UNITY_EDITOR
            string outputPathA = Path.Combine(AssetBundleConfig.AssetBundlesAudioFolderName_GEN, "Android");
#else
#if UNITY_IPHONE || UNITY_IOS
            string outputPathA = Path.Combine(AssetBundleConfig.AssetBundlesAudioFolderName_GEN, "iOS");
#elif UNITY_ANDROID
             string outputPathA = Path.Combine(AssetBundleConfig.AssetBundlesAudioFolderName_GEN, "Android");
#else
            string outputPathA = "";
                    Logger.LogError("Unsupported platform!!!");
#endif
#endif

            if (filename != null )
            {
                outputPathA = Path.Combine(outputPathA, filename);
            }
            return outputPathA;
        }
        //        public static string GetAudioDownLoadSourcePath(string filename)
        //        {
        //#if UNITY_EDITOR
        //            string outputPath = Path.Combine(Application.streamingAssetsPath, AssetBundleConfig.AssetBundlesAudioFolderName_GEN);
        //            outputPath = Path.Combine(outputPath, "Android");
        //#else
        //#if UNITY_IPHONE || UNITY_IOS
        //                    string outputPath = Path.Combine("file://" + Application.streamingAssetsPath, AssetBundleConfig.AssetBundlesAudioFolderName_GEN);
        //            outputPath = Path.Combine(outputPath, "iOS");
        //#elif UNITY_ANDROID
        //                    string outputPath = Path.Combine(Application.streamingAssetsPath, AssetBundleConfig.AssetBundlesAudioFolderName_GEN);
        //                        outputPath = Path.Combine(outputPath, "Android");
        //#else
        //                    Logger.LogError("Unsupported platform!!!");
        //#endif
        //#endif
        //            if (!string.IsNullOrEmpty(assetPath))
        //            {
        //                outputPath = Path.Combine(outputPath, assetPath);
        //            }
        //            return outputPath;
        //        }
        // 注意：这个路径是给WWW读文件使用的url，如果要直接磁盘写persistentDataPath，使用GetPlatformPersistentDataPath
        public static string GetAssetFileUrlWWW(string filePath)
        {
            if (CheckPersistentFileExsits(filePath))
            {
                return GetPersistentFilePathWWW(filePath);
            }
            else
            {
                return GetStreamingAssetsFilePathWWW(filePath);
            }
        }
        #endregion www path

        public static string AssetBundlePathToAssetBundleName(string assetPath)
        {
            if (!string.IsNullOrEmpty(assetPath))
            {
                if (assetPath.StartsWith("Assets/"))
                {
                    assetPath = AssetsPathToPackagePath(assetPath);
                }
                //no " "
                assetPath = assetPath.Replace(" ", "");
                //there should not be any '.' in the assetbundle name
                //otherwise the variant handling in client may go wrong
                assetPath = assetPath.Replace(".", "_");
                //add after suffix ".assetbundle" to the end
                assetPath = assetPath + AssetBundleConfig.AssetBundleSuffix;
                return assetPath.ToLower();
            }
            return null;
        }
        
        public static string PackagePathToAssetsPath(string assetPath)
        {
            return "Assets/" + AssetBundleConfig.AssetsFolderName + "/" + assetPath;
        }

        public static bool IsPackagePath(string assetPath)
        {
            string path = "Assets/" + AssetBundleConfig.AssetsFolderName + "/";
            return assetPath.StartsWith(path);
        }
        
        public static string AssetsPathToPackagePath(string assetPath)
        {
            string path = "Assets/" + AssetBundleConfig.AssetsFolderName + "/";
            if (assetPath.StartsWith(path))
            {
                return assetPath.Substring(path.Length);
            }
            else
            {
                Debug.LogError("Asset path is not a package path!");
                return assetPath;
            }
        }
    }
}