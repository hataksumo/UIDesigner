using System;
using System.Xml;
using UnityEngine;
using UnityEditor;
using System.IO;
using UnityEditor.Callbacks;
using System.Collections.Generic;

namespace iDreamsky.PostProcess
{
    #if UNITY_ANDROID
    public class LeBianPostProcessAndroid
    {

        //private static string lebianChanle = "TEST0000000"; //自定义，比如百度可以设置为baidu，建议使用字母，如果使用数字，数字大小不要超过1亿,暂时不支持中文
        //private static string MainChId = "68482"; //登陆www.loveota.com或www.loveota.net查看
        //private static string  LEBIAN_SECID = "eg03ld3d.c"; //登陆www.loveota.com或www.loveota.net查看

        [PostProcessBuild(1900)]
        public static void OnPostProcessBuild(BuildTarget buildTarget, string pathToBuiltProject){
            Debug.Log("MSLD Post ProcessBuild <LeBianPostProcessAndroid>");
            var dataPath = Application.dataPath;
            var len = dataPath.Length - "Assets".Length;
            var unityProjectDir = dataPath.Remove(len);
            string androidProjPath = MSLDPostProcessCommonAndroid.GetProjectPathFromBuild(pathToBuiltProject);

            bool success = MSLDPostProcessCommonAndroid.ChangeAndroidManifestAndroid(androidProjPath, (document, appElement, activityElement)=>{

                // 读取配置
                MSLDPostProcessConfig config = MSLDPostProcessCommonAndroid.ReadMsConfig(unityProjectDir);
               
                string MainChId = config.lb_MainChId;
                string LEBIAN_SECID = config.lb_LEBIAN_SECID;
                string lebianChanle = config.ms_channel_id;
                if(MainChId == null || MainChId.Length == 0)
                {
                    Debug.LogError("MSLD LB MainChId 未配置");
                    return false;
                }
                if (LEBIAN_SECID == null || LEBIAN_SECID.Length == 0)
                {
                    Debug.LogError("MSLD LB LEBIAN_SECID 未配置");
                    return false;
                }
                if (lebianChanle == null || lebianChanle.Length == 0)
                {
                    Debug.LogError("MSLD LB channnel Id 未配置");
                    return false;
                }
                Debug.Log("MSLD LB MainChId:" + MainChId);
                Debug.Log("MSLD LB LEBIAN_SECID:" + LEBIAN_SECID);
                Debug.Log("MSLD LB lebianChanle:" + lebianChanle);

                //读取lb的xml配置
                string lbXmlPath = Path.Combine(unityProjectDir, "Assets/Plugins/iDreamsky/msld/Android/lebian/lb-AndroidManifest.xml");
                Debug.Log("MSLD LB lbXmlPath:" + lbXmlPath);

                var lbXmlDocument = new XmlDocument();
                lbXmlDocument.Load(lbXmlPath);

                string packageName = PlayerSettings.applicationIdentifier;
                Debug.Log("MSLD LB packageName:" + packageName);

                var mfest = lbXmlDocument.SelectSingleNode("manifest");

                // lb_target_pkgname 替换包名
                var providers = mfest.SelectNodes("provider");
                foreach (XmlNode item in providers)
                {
                    foreach (XmlAttribute att in item.Attributes)
                    {
                        if (att.Value.Contains("lb_target_pkgname"))
                        {
                            string newValue = att.Value.Replace("lb_target_pkgname", packageName);
                            ((XmlElement)item).SetAttribute(att.LocalName, att.NamespaceURI, newValue);
                        }
                    }
                }

                //设置横竖屏
                string allowValue = "";
                if (PlayerSettings.allowedAutorotateToLandscapeLeft || PlayerSettings.allowedAutorotateToLandscapeRight)
                {
                    allowValue = "landscape";
                }
                //if (PlayerSettings.allowedAutorotateToPortrait || PlayerSettings.allowedAutorotateToPortraitUpsideDown)
                //{
                //    if (!string.IsNullOrEmpty(allowValue))
                //    {
                //        allowValue += "|";
                //    }
                //    allowValue += "portrait";
                //}

                Debug.Log("MSLD LB allowValue:" + allowValue);

                var activitys = mfest.SelectNodes("activity");
                foreach (XmlNode item in activitys)
                {
                    if (item.Attributes["android:name"].Value == "com.excelliance.open.NextChapter")
                    {
                        //var cc = item.Attributes["android:configChanges"];
                        var cc = item.Attributes["android:screenOrientation"];
                        ((XmlElement)item).SetAttribute(cc.LocalName, cc.NamespaceURI, allowValue);

                    }
                }

                // 设置 ClientChId
                // 设置  MainChId LEBIAN_SECID
                var metas = mfest.SelectNodes("meta-data");
                foreach (XmlNode item in metas)
                {
                    if (item.Attributes["android:name"].Value == "ClientChId")
                    {
                        var cc = item.Attributes["android:value"];
                        ((XmlElement)item).SetAttribute(cc.LocalName, cc.NamespaceURI, lebianChanle);
                    }
                    else if (item.Attributes["android:name"].Value == "MainChId")
                    {
                        var cc = item.Attributes["android:value"];
                        ((XmlElement)item).SetAttribute(cc.LocalName, cc.NamespaceURI, MainChId);
                    }
                    else if (item.Attributes["android:name"].Value == "LEBIAN_SECID")
                    {
                        var cc = item.Attributes["android:value"];
                        ((XmlElement)item).SetAttribute(cc.LocalName, cc.NamespaceURI, LEBIAN_SECID);
                    }
                }

                //lbXmlDocument.Save(lbXmlPath.Replace(".", "_d."));
                // 内容设置到主activity
                foreach (XmlNode item in mfest.ChildNodes)
                {
                    //Debug.Log("MSLD LB item:" + item.Value);
                    appElement.AppendChild(document.ImportNode(item, true));
                }
                //document.Save(lbXmlPath.Replace(".", "_d2."));

                // 设置 application:name com.excelliance.open.LBApplication
                Debug.Log("MSLD LB set com.excelliance.open.LBApplication");
                appElement.SetAttribute("name", appElement.Attributes["android:icon"].NamespaceURI, "com.excelliance.open.LBApplication");

                // 设置权限
                XmlElement manifest = (XmlElement)document.SelectSingleNode("manifest");
                if (manifest == null)
                {
                    Debug.LogError("[MSLDPostProcess][Android][ChangeAndroidManifest]: manifest Not exists");
                    return false;
                }
                MSLDPostProcessCommonAndroid.AddAndroidPermission(document, manifest, "android.permission.GET_DETAILED_TASKS");
                MSLDPostProcessCommonAndroid.AddAndroidPermission(document, manifest, "android.permission.REORDER_TASKS");
                MSLDPostProcessCommonAndroid.AddAndroidPermission(document, manifest, "android.permission.INTERNET");
                MSLDPostProcessCommonAndroid.AddAndroidPermission(document, manifest, "android.permission.WAKE_LOCK");
                MSLDPostProcessCommonAndroid.AddAndroidPermission(document, manifest, "android.permission.ACCESS_NETWORK_STATE");
                MSLDPostProcessCommonAndroid.AddAndroidPermission(document, manifest, "android.permission.ACCESS_WIFI_STATE");
                MSLDPostProcessCommonAndroid.AddAndroidPermission(document, manifest, "android.permission.READ_EXTERNAL_STORAGE");
                MSLDPostProcessCommonAndroid.AddAndroidPermission(document, manifest, "android.permission.WRITE_EXTERNAL_STORAGE");
                MSLDPostProcessCommonAndroid.AddAndroidPermission(document, manifest, "android.permission.GET_TASKS");
                MSLDPostProcessCommonAndroid.AddAndroidPermission(document, manifest, "android.permission.READ_PHONE_STATE");
                MSLDPostProcessCommonAndroid.AddAndroidPermission(document, manifest, "android.permission.REQUEST_INSTALL_PACKAGES");
                MSLDPostProcessCommonAndroid.AddAndroidPermission(document, manifest, "android.permission.FOREGROUND_SERVICE");
                return true;
            });

            if (!success)
            {
                Debug.LogError("MSLD LB ChangeAndroidManifestAndroid error ");
            }

          //  Debug.Log("MSLD LB androidProjPath:" + androidProjPath);
            //// 复制application com.excelliance.open;
            //if (!MSLDPostProcessCommonAndroid.copyFile(
            //Path.Combine(unityProjectDir, "/Assets/Plugins/iDreamsky/msld/Android/lebian/LBApplication.java"),
            //Path.Combine(androidProjPath, "/src/main/java/com/excelliance/open/LBApplication.java")))
            //{
            //    Debug.LogError("MSLD LB copy file error ");
            //}

        }
    }
    #endif
}