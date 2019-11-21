using System;
using System.IO;
using System.Xml;
using UnityEditor;
using UnityEditor.Callbacks;
using UnityEngine;

#if UNITY_ANDROID
namespace iDreamsky.PostProcess
{
    public class MSLDPostProcessQQAndroid
    {
        [PostProcessBuild(1200)]
        public static void OnPostProcessBuild(BuildTarget buildTarget, string pathToBuiltProject)
        {
            var dataPath = Application.dataPath;
            var len = dataPath.Length - "Assets".Length;
            var unityProjectDir = dataPath.Remove(len);
            string androidProjPath = MSLDPostProcessCommonAndroid.GetProjectPathFromBuild(pathToBuiltProject);

            MSLDPostProcessConfig cfg = MSLDPostProcessCommonAndroid.ReadMsConfig(unityProjectDir);
            if (cfg == null || cfg.qq_app_id == null || cfg.qq_app_id.Length == 0)
            {
                Debug.LogError("[MSLDPostProcessQQAndroid][Android][OnPostProcessBuild]: qq_app_id is not set in msConfig.json");
                return;
            }

            MSLDPostProcessCommonAndroid.ChangeAndroidManifestAndroid(androidProjPath, (XmlDocument xmlDocument, XmlElement appElement, XmlElement activityElement) => {

                XmlElement manifest = (XmlElement)xmlDocument.SelectSingleNode("manifest");
                var android = manifest.GetAttribute("xmlns:android");

                //添加权限
                MSLDPostProcessCommonAndroid.AddAndroidPermission(xmlDocument, manifest, "android.permission.INTERNET");
                MSLDPostProcessCommonAndroid.AddAndroidPermission(xmlDocument, manifest, "android.permission.ACCESS_NETWORK_STATE");

                //添加 AuthActivity
                var qqAuthActivity = xmlDocument.CreateElement("activity");
                qqAuthActivity.SetAttribute("name", android, "com.tencent.tauth.AuthActivity");
                qqAuthActivity.SetAttribute("launchMode", android, "singleTask");
                qqAuthActivity.SetAttribute("noHistory", android, "true");

                var intent_filte = xmlDocument.CreateElement("intent-filter");
                var action = xmlDocument.CreateElement("action");
                action.SetAttribute("name", android, "android.intent.action.VIEW");
                intent_filte.AppendChild(action);

                var category = xmlDocument.CreateElement("category");
                category.SetAttribute("name", android, "android.intent.category.DEFAULT");
                intent_filte.AppendChild(category);

                category = xmlDocument.CreateElement("category");
                category.SetAttribute("name", android, "android.intent.category.BROWSABLE");
                intent_filte.AppendChild(category);

                var scheme = xmlDocument.CreateElement("data");
                Debug.Log("Get qq_app_id::" + cfg.qq_app_id);
                scheme.SetAttribute("scheme", android, "tencent" + cfg.qq_app_id);
                intent_filte.AppendChild(scheme);

                qqAuthActivity.AppendChild(intent_filte);
                appElement.AppendChild(qqAuthActivity);

                //添加 AssistActivity
                var qqAssistActivity = xmlDocument.CreateElement("activity");
                qqAssistActivity.SetAttribute("name", android, "com.tencent.connect.common.AssistActivity");
                qqAssistActivity.SetAttribute("configChanges", android, "orientation|keyboardHidden");
                qqAssistActivity.SetAttribute("screenOrientation", android, "behind");
                qqAssistActivity.SetAttribute("theme", android, "@android:style/Theme.Translucent.NoTitleBar");
                appElement.AppendChild(qqAssistActivity);

                return true;
            });

        }
    }

}

#endif