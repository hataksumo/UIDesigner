using System;
using UnityEditor;
using UnityEditor.Callbacks;
using System.IO;
using UnityEngine;
using System.Xml;
using System.Collections.Generic;
using System.Xml.Linq;
using UnityEditor.iOS.Xcode.iDreamsky;
using UnityEditor.iOS.Xcode.iDreamsky.Extensions;
using iDreamsky.PostProcess;

public class MSLDPostProcess
{
	[PostProcessBuild(1100)]
	public static void OnPostProcessBuild( BuildTarget buildTarget, string pathToBuiltProject )
	{

        var dataPath = Application.dataPath;
        var len = dataPath.Length - "Assets".Length;
        var unityProjectDir = dataPath.Remove(len);

        if (buildTarget == BuildTarget.iOS)
        {
#if UNITY_IOS
            PostProcessIOS(unityProjectDir, pathToBuiltProject);
#endif
        }

        else if (buildTarget == BuildTarget.Android)
        {
#if UNITY_ANDROID
            string androidProjPath = MSLDPostProcessCommonAndroid.GetProjectPathFromBuild(pathToBuiltProject);
            PostProcessAndroid(Path.GetFullPath(unityProjectDir), Path.GetFullPath(androidProjPath));
#endif
        }
    }

#if UNITY_ANDROID
    public static bool PostProcessAndroid(string unityProjectDir, string androidProjectDir)
    {

        // 拷贝配置文件
        string confiFilePath = Path.Combine(unityProjectDir, "Assets/Plugins/iDreamsky/msld/Android/msConfig.json");
        string toPath = Path.Combine(androidProjectDir, "src/main/assets/msld/config/msConfig.json");
        MSLDPostProcessCommonAndroid.copyFile(confiFilePath, toPath);

        // 修改Manifest
        if (!MSLDPostProcessCommonAndroid.ChangeAndroidManifestAndroid(androidProjectDir, (xmlDocument, appElement, activityElement) => {

            activityElement.SetAttribute("android:name", "com.ms.sdk.plugin.unity.MSLDUnityActivity");

            string namespaceUrl = "";
            if (activityElement.GetAttributeNode("android:name") != null)
            {
                namespaceUrl = activityElement.GetAttributeNode("android:name").NamespaceURI;
            }

            Debug.Log("MSLD post set com.ms.sdk.plugin.unity.MSUnityApplication");
            appElement.SetAttribute("name", namespaceUrl, "com.ms.sdk.plugin.unity.MSUnityApplication");
            appElement.SetAttribute("usesCleartextTraffic", namespaceUrl, "true");


            // 极光一键登录配置
            MSLDPostProcessConfig cfg = MSLDPostProcessCommonAndroid.ReadMsConfig(unityProjectDir);
            Debug.Log("MSLD post jg_app_key:" + cfg.jg_app_key);
            if (cfg.jg_app_key != null && cfg.jg_app_key.Length > 0)
            {
                XmlElement manifest = (XmlElement)xmlDocument.SelectSingleNode("manifest");
                var android = manifest.GetAttribute("xmlns:android");
                XmlElement node = xmlDocument.CreateElement("meta-data");
                node.SetAttribute("name", android, "JPUSH_APPKEY");
                node.SetAttribute("value", android, cfg.jg_app_key);
                appElement.AppendChild(node);

                AddJiGuangActivity(xmlDocument,appElement);
            }

            return true;
        }))
        {
            return false;
        }


        // 修改gradle
        if (!ChangeGradleFileAndroid(androidProjectDir))
        {
            return false;
        }

        // 删除可能重复的资源
        var fileAndroid = Path.Combine( androidProjectDir, "libs/android-support-v4.jar");
        if (File.Exists(fileAndroid))
        {
            Debug.Log("[MSLDPostProcess][Android][ChangeGradleFile]: remove fileAndroid");
            File.Delete(fileAndroid);
        }

        //// 拷贝java文件
        //string javaFilePath = Path.Combine(unityProjectDir, "Assets/Plugins/iDreamsky/msld/Android/java/com/ms");
        //string javaToPath = Path.Combine(androidProjectDir, "src/main/java/com/ms");
        //MSLDPostProcessCommonAndroid.copyDir(javaFilePath, javaToPath);

        return true;
    }

    public static bool AddJiGuangActivity(XmlDocument xmlDocument, XmlElement appElement)
    {
        XmlElement manifest = (XmlElement)xmlDocument.SelectSingleNode("manifest");
        if (manifest == null)
        {
            Debug.LogError("[MSLDPostProcess][Android][ChangeAndroidManifest]: manifest Not exists");
            return false;
        }
        var android = manifest.GetAttribute("xmlns:android");

        var OAuthActivity = xmlDocument.CreateElement("activity");
        OAuthActivity.SetAttribute("name", android, "com.cmic.sso.sdk.activity.OAuthActivity");
        OAuthActivity.SetAttribute("configChanges", android, "orientation|keyboardHidden|screenSize");
        OAuthActivity.SetAttribute("launchMode", android, "singleTop");
        OAuthActivity.SetAttribute("theme", android, "@android:style/Theme.NoTitleBar.Fullscreen");
        OAuthActivity.SetAttribute("screenOrientation", android, "landscape");
        appElement.AppendChild(OAuthActivity);



        var LoginAuthActivity = xmlDocument.CreateElement("activity");
        LoginAuthActivity.SetAttribute("name", android, "com.cmic.sso.sdk.activity.LoginAuthActivity");
        LoginAuthActivity.SetAttribute("configChanges", android, "orientation|keyboardHidden|screenSize");
        LoginAuthActivity.SetAttribute("launchMode", android, "singleTop");
        LoginAuthActivity.SetAttribute("theme", android, "@android:style/Theme.NoTitleBar.Fullscreen");
        LoginAuthActivity.SetAttribute("screenOrientation", android, "landscape");
        appElement.AppendChild(LoginAuthActivity);

        var CtLoginActivity = xmlDocument.CreateElement("activity");
        CtLoginActivity.SetAttribute("name", android, "cn.jiguang.verifysdk.CtLoginActivity");
        CtLoginActivity.SetAttribute("configChanges", android, "orientation|keyboardHidden|screenSize");
        CtLoginActivity.SetAttribute("launchMode", android, "singleTop");
        CtLoginActivity.SetAttribute("theme", android, "@android:style/Theme.NoTitleBar.Fullscreen");
        CtLoginActivity.SetAttribute("screenOrientation", android, "landscape");
        appElement.AppendChild(CtLoginActivity);


      
        return true;
    }


    private static bool ChangeGradleFileAndroid(string androidunityProjectDir)
    {

        var buildGradle = Path.Combine(androidunityProjectDir, "build.gradle");
        if (!File.Exists(buildGradle))
        {
            Debug.LogError("[MSLDPostProcess][Android][ChangeGradleFile]: "+ buildGradle + " Not exists");
            return false;
        }

        bool insertRet = false;
        var buildGradleList = new List<string>();
        buildGradleList.AddRange(File.ReadAllLines(buildGradle));
        var findLine = "fileTree(dir: 'libs', include: ['*.jar'])";
        for (int i = 0; i < buildGradleList.Count - 1; i++)
        {
            if (buildGradleList[i].StartsWith("dependencies", StringComparison.Ordinal))
            {
                if (buildGradleList[i + 1].IndexOf(findLine, StringComparison.Ordinal) != -1)
                {
                    buildGradleList.Insert(i + 2, "    implementation 'com.android.support:appcompat-v7:28.0.0'");
                    Debug.Log("MSLD Post Process: [Android][ChangeGradleFile]: add implementation 'com.android.support:appcompat-v7:28.0.0' ");
                    //buildGradleList.Insert(i + 3,"    implementation fileTree(include: ['*.jar'], dir: 'ledou_library/libs')");
                    insertRet = true;
                    break;
                }
            }
        }

        if (insertRet)
        {
            File.WriteAllLines(buildGradle, buildGradleList.ToArray());
            return true;
        }
        return true;
    }
#endif


#if UNITY_IOS
    public static bool PostProcessIOS(string unityProjectDir, string pathToBuiltProject)
    {
        Debug.Log("XCodePostProcess: Starting to perform post build tasks for iOS platform.");
        string projPath = PBXProject.GetPBXProjectPath(pathToBuiltProject);


        //PBXProject proj = new PBXProject();
        //proj.ReadFromString(File.ReadAllText(projPath));

        //string target = proj.TargetGuidByName(PBXProject.GetUnityTargetName());


        MSLDPostProcessCommoniOS.ChangePBProject(pathToBuiltProject, (PBXProject project, string target) => {


            project.SetBuildProperty(target, "ENABLE_BITCODE", "NO");
            project.AddBuildProperty(target, "OTHER_LDFLAGS", "-ObjC");
            project.AddBuildProperty(target, "OTHER_LDFLAGS", "-lz");


            //添加 Embed Frameworks
            const string frameworkPath = "Frameworks/Plugins/iDreamsky/msld/iOS/libs"; //framework 存放的路径
            string[] frameworkNames = new string[]
            {
                    "MSLDAccount.framework",
                    "MSLDAccountUI.framework",
                    "MSLDAFNetworking.framework",
                    "MSLDCoreBusiness.framework",
                    "MSLDCoreFoundation.framework",
                    "MSLDDLog.framework",
                    "MSLDMasonry.framework",
                    "MSLDMJExtension.framework",
                    "MSLDPayment.framework",
                    "MSLDQQPackage.framework",
                    "MSLDQQShare.framework",
                    "MSLDReachability.framework",
                    "MSLDSDK.framework",
                    "MSLDShare.framework",
                    "MSLDUIKit.framework",
                    "MSLDWeChatPackage.framework",
                    "MSLDWeChatShare.framework",
                    "MSLDJiGuangPackage.framework",
                    "MSLDFeedback.framework",
            };

            foreach (string fwk in frameworkNames)
            {
                string framework = Path.Combine(frameworkPath, fwk);
                Debug.Log("[MSLDPostProcess][iOS][embedFrameworks] framework:" + framework);
                string fileGuid = project.AddFile(framework, "" + framework, PBXSourceTree.Sdk);

                PBXProjectExtensions.AddFileToEmbedFrameworks(project, target, fileGuid);
            }
            project.SetBuildProperty(target, "LD_RUNPATH_SEARCH_PATHS", "$(inherited) @executable_path/Frameworks");


            // 拷贝配置文件
            // 配置文件 MSLDConfig.json 需要放在Unity的 /Plugins/iDreamsky/msld/iOS/ 目录下
             File.Copy(unityProjectDir + "Assets/Plugins/iDreamsky/msld/iOS/msConfig.json",
                 pathToBuiltProject + "/Libraries/Plugins/iDreamsky/msld/iOS/msConfig.json", true);

            string fileConfig = project.AddFile("Libraries/Plugins/iDreamsky/msld/iOS/msConfig.json",
                "Libraries/Plugins/iDreamsky/msld/iOS/msConfig.json",
                PBXSourceTree.Source);
            project.AddFileToBuild(target, fileConfig);

            return true;
        });


        if (!PostProcessControllerIOS(unityProjectDir, pathToBuiltProject))
        {
            return false;
        }

        return true;

    }

    // 处理controller
    private static bool PostProcessControllerIOS(string unityProjectDir, string pathToBuiltProject)
    {
        var unityAppController = Path.Combine(pathToBuiltProject, "Classes/UnityAppController.mm");

        var lines = new List<string>();
        lines.AddRange(File.ReadAllLines(unityAppController));

        lines.Insert(0, "#import <MSLDSDK/MSLDSDK.h>\n");

        var changeNum = 0;
        for (int i = 0; i < lines.Count - 1; i++)
        {
            if (lines[i].Trim().StartsWith("AppController_SendNotificationWithArg(kUnityOnOpenURL, notifData);"))
            {
                i++; changeNum += 1;
                lines[i] = lines[i].Replace("    return YES;", "    return [MSLDSDK.sharedInstance msld_application:app openURL:url options:options];");
            }

            //if (lines[i].Trim().StartsWith("::printf(\"-> applicationDidFinishLaunching()\\n\");"))
            //{
            //    i++; changeNum += 1;
            //    lines.Insert(i, "\t[[SdkProxyClass Instance] InitSdk];");
            //}
            if (changeNum == 1) break;
        }
        File.WriteAllLines(unityAppController, lines.ToArray());

        if (changeNum != 1)
        {
            Debug.LogError("[MSLDPostProcess][iOS][PostProcessControllerIOS]:change error.");
        }
        else
        {
            Debug.Log("[MSLDPostProcess][iOS][PostProcessControllerIOS]:change controller success.");
        }
        return changeNum == 1;
    }


#endif

}

