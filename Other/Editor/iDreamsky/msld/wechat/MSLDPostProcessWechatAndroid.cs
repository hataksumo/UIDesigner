using System;
using System.IO;
using System.Text;
using System.Xml;
using UnityEditor;
using UnityEditor.Callbacks;
using UnityEngine;

namespace iDreamsky.PostProcess
{
    public class MSLDPostProcessWechatAndroid
    {
        [PostProcessBuild(1300)]
        public static void OnPostProcessBuild(BuildTarget buildTarget, string pathToBuiltProject)
        {
            var dataPath = Application.dataPath;
            var len = dataPath.Length - "Assets".Length;
            var unityProjectDir = dataPath.Remove(len);
            string androidProjPath = MSLDPostProcessCommonAndroid.GetProjectPathFromBuild(pathToBuiltProject);
            Debug.Log("MSLDPostProcessWechatAndroid pathToBuiltProject " + androidProjPath);

            MSLDPostProcessConfig cfg = MSLDPostProcessCommonAndroid.ReadMsConfig(unityProjectDir);
            if(cfg == null || cfg.wx_app_id == null || cfg.wx_app_id.Length == 0) {
                Debug.LogError("[MSLDPostProcessWechatAndroid][Android][OnPostProcessBuild]: wx_app_id is not set in msConfig.json");
                return;
            }

            //创建WXEntryActivity.java文件
            if(false == CreateWXEntryActivity(androidProjPath))
            {
                Debug.LogError("[MSLDPostProcessWechatAndroid][Android][OnPostProcessBuild]: create wxEntryActivity failure");
                return;

            }

            MSLDPostProcessCommonAndroid.ChangeAndroidManifestAndroid(androidProjPath, (XmlDocument xmlDocument, XmlElement appElement, XmlElement activityElement) => {
                XmlElement manifest = (XmlElement)xmlDocument.SelectSingleNode("manifest");
                var android = manifest.GetAttribute("xmlns:android");

                //添加权限
                MSLDPostProcessCommonAndroid.AddAndroidPermission(xmlDocument, manifest, "android.permission.INTERNET");
                MSLDPostProcessCommonAndroid.AddAndroidPermission(xmlDocument, manifest, "android.permission.MODIFY_AUDIO_SETTINGS");
                MSLDPostProcessCommonAndroid.AddAndroidPermission(xmlDocument, manifest, "android.permission.WRITE_EXTERNAL_STORAGE");
                MSLDPostProcessCommonAndroid.AddAndroidPermission(xmlDocument, manifest, "android.permission.WRITE_EXTERNAL_STORAGE");
                MSLDPostProcessCommonAndroid.AddAndroidPermission(xmlDocument, manifest, "android.permission.ACCESS_WIFI_STATE");
                MSLDPostProcessCommonAndroid.AddAndroidPermission(xmlDocument, manifest, "android.permission.READ_PHONE_STATE");
                MSLDPostProcessCommonAndroid.AddAndroidPermission(xmlDocument, manifest, "android.permission.ACCESS_NETWORK_STATE");

                // 配置 WXEntryActivity，如果已有，则忽略,未找到，则添加
                string packageName = PlayerSettings.applicationIdentifier;
                string wxActivityName = packageName + ".wxapi.WXEntryActivity";
                bool foundedActivity = false;
                var alist = appElement.SelectNodes("activity");
                foreach (XmlNode tnode in alist)
                {
                    var value = tnode.Attributes.GetNamedItem("name", android).Value;
                    if (value == wxActivityName)
                    {
                        foundedActivity = true;
                    }
                }
                if(foundedActivity == false)
                {
                    var WXEntryActivity = xmlDocument.CreateElement("activity");
                    WXEntryActivity.SetAttribute("name", android, wxActivityName);
                    WXEntryActivity.SetAttribute("label", android, "@string/app_name");
                    WXEntryActivity.SetAttribute("exported", android, "true");
                    WXEntryActivity.SetAttribute("theme", android, "@android:style/Theme.Translucent.NoTitleBar");
                    WXEntryActivity.SetAttribute("launchMode", android, "singleTask");
                    WXEntryActivity.SetAttribute("taskAffinity", android, packageName);
                    appElement.AppendChild(WXEntryActivity);
                }

                return true;
            });

        }




        private static bool CreateWXEntryActivity(string androidProjPath)
        {
            string packageName = PlayerSettings.applicationIdentifier;
            string path = Path.Combine(androidProjPath, "/src/main/java/");
            var comName = packageName.Split('.');
            foreach (string item in comName)
            {
                path = Path.Combine(path, item);
                if (!File.Exists(path))
                {
                    Directory.CreateDirectory(path);
                }
            }
            path = Path.Combine(path, "wxapi");
            if (!File.Exists(path))
            {
                Directory.CreateDirectory(path);
            }

            string filePath = Path.Combine(path, "WXEntryActivity.java");
            if (File.Exists(filePath))
            {
                Debug.LogError("[MSLDPostProcessWechatAndroid][Android][CreateWXEntryActivity]: WXEntryActivity exists! filePath:" + filePath);
                return false;
            }

            Debug.Log("[MSLDPostProcessWechatAndroid][Android][CreateWXEntryActivity]: add WXEntryActivity filePath:" + filePath);

            StringBuilder codes = new StringBuilder();
            codes.Append("package " + packageName + ".wxapi;\n");
            codes.Append("\n");
            codes.Append("import com.ms.plugin.wechat.WeixinShareAbstract;\n");
            codes.Append("\n");
            codes.Append("//weixin call Activity\n");
            codes.Append("public class WXEntryActivity extends WeixinShareAbstract {}\n");

            FileStream file = File.Open(filePath, FileMode.OpenOrCreate);
            file.Write(System.Text.Encoding.Default.GetBytes(codes.ToString()), 0, codes.Length);
            file.Close();

            return true;
        }



    }
}


