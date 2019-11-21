using System;
using System.IO;
using System.Xml;
using UnityEditor;
using UnityEditor.Callbacks;
using UnityEngine;
using iDreamsky.PostProcess;

namespace iDreamsky.PostProcess {
    public class MSLDPostProcessOtherAndroid
    {
        //[PostProcessBuild(1900)]
        public static void OnPostProcessBuild(BuildTarget buildTarget, string pathToBuiltProject)
        {
            var dataPath = Application.dataPath;
            var len = dataPath.Length - "Assets".Length;
            var unityProjectDir = dataPath.Remove(len);
            string androidProjPath = MSLDPostProcessCommonAndroid.GetProjectPathFromBuild(pathToBuiltProject);


            // 拷贝文件
            string idsJavalPath = Path.Combine(unityProjectDir, "AndroidSdk/JavaFiles/com/idreamsky/sdkproxy/SdkProxyActivity.java");
            string idsJAVAToPath = Path.Combine(androidProjPath, "src/main/java/com/idreamsky/sdkproxy/SdkProxyActivity.java");
            MSLDPostProcessCommonAndroid.copyFile(idsJavalPath, idsJAVAToPath);

            // 拷贝文件
            string idsJavaNativePath = Path.Combine(unityProjectDir, "AndroidSdk/JavaFiles/com/idreamsky/sdkproxy/NativeProxy.java");
            string idsJAVANativeToPath = Path.Combine(androidProjPath, "src/main/java/com/idreamsky/sdkproxy/NativeProxy.java");
            MSLDPostProcessCommonAndroid.copyFile(idsJavaNativePath, idsJAVANativeToPath);

            // 配置proxy的activity。与其他Activity同步
            MSLDPostProcessCommonAndroid.ChangeAndroidManifestAndroid(androidProjPath, (XmlDocument xmlDocument, XmlElement appElement, XmlElement activityElement) => {
                activityElement.SetAttribute("android:name", "com.idreamsky.sdkproxy.SdkProxyActivity");
                return true;
            });

            //配置头条
            MSLDPostProcessCommonAndroid.ChangeAndroidManifestAndroid(androidProjPath, (XmlDocument xmlDocument, XmlElement appElement, XmlElement activityElement) => {

                string namespaceUrl = "";
                if (activityElement.GetAttributeNode("android:name") != null)
                {
                    namespaceUrl = activityElement.GetAttributeNode("android:name").NamespaceURI;
                }

                var meta_data = xmlDocument.CreateElement("meta-data");
                meta_data.SetAttribute("name", namespaceUrl, "toutiao.appId");
                meta_data.SetAttribute("value", namespaceUrl, "166509");

                activityElement.AppendChild(meta_data);

                meta_data = xmlDocument.CreateElement("meta-data");
                meta_data.SetAttribute("name", namespaceUrl, "toutiao.appName");
                meta_data.SetAttribute("value", namespaceUrl, "梦工厂大冒险");

                activityElement.AppendChild(meta_data);

                meta_data = xmlDocument.CreateElement("meta-data");
                meta_data.SetAttribute("name", namespaceUrl, "toutiao.channelId");
                meta_data.SetAttribute("value", namespaceUrl, "MBGDWJR001");

                activityElement.AppendChild(meta_data);

                return true; 
            });

        }

    }
}







