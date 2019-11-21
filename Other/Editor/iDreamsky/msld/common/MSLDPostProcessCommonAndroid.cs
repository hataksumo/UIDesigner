using System.Net.Mime;
using System;
using System.IO;
using System.Xml;
using UnityEngine;
using UnityEditor;

namespace iDreamsky.PostProcess
{
    public class MSLDPostProcessCommonAndroid
    {
        public delegate bool ChangeAndroidManifestStep( XmlDocument xmlDocument, XmlElement appElement, XmlElement activityElement);


        public static bool ChangeAndroidManifestAndroid(string androidProjectDir, ChangeAndroidManifestStep step)
        {
            var xmlPath = Path.Combine(androidProjectDir, "src/main/AndroidManifest.xml");

            if (!File.Exists(xmlPath))
            {
                Debug.LogError("[MSLDPostProcess][Android][ChangeAndroidManifest]:AndroidManifest Not exists. xmlPath:" + xmlPath);
                return false;
            }
            var xmlDocument = new XmlDocument();
            xmlDocument.Load(xmlPath);

            

            var appElement = (XmlElement)xmlDocument.SelectSingleNode("/manifest/application");
            if (appElement == null)
            {
                Debug.LogError("[MSLDPostProcess][Android][ChangeAndroidManifest]:/manifest/application/Not exists");
                return false;
            }

            var activityElement = (XmlElement)appElement.SelectSingleNode("activity");
            if (activityElement == null)
            {
                Debug.LogError("[MSLDPostProcess][Android][ChangeAndroidManifest]:/manifest/application/activity Not exists");
                return false;
            }


            if (step != null) {
                if(step(xmlDocument, appElement, activityElement)) 
                {
                    xmlDocument.Save(xmlPath);
                }
                else {
                    Debug.LogError("[MSLDPostProcess][Android][ChangeAndroidManifest]:/manifest/application/activity  step false");
                    return false;
                }
            }

            return true;
        }

        public static bool copyFile(string srcFile, string dstFile)
        {
            // 目标文件不存在，创建文件夹。dst 已存在，覆盖文件
            Debug.Log("copyFile sr: " + srcFile + "|| dst: " + dstFile);
            string strPath = Path.GetDirectoryName(dstFile);
            if (!Directory.Exists(strPath))
            {
                Debug.Log("copyFile CreateDirectory strPath: " + strPath);
                Directory.CreateDirectory(strPath);
            }
            File.Copy(srcFile, dstFile, true);
            return true;
        }

        public static bool copyDir(string srcDir, string dstDir)
        {
            FileUtil.CopyFileOrDirectory(srcDir, dstDir);
            // 目标文件不存在，创建文件夹。dst 已存在，覆盖文件
            //Debug.Log("copyFile sr: " + srcFile + "|| dst: " + dstFile);
            //string strPath = Path.GetDirectoryName(dstFile);
            //if (!Directory.Exists(strPath))
            //{
            //    Debug.Log("copyFile CreateDirectory strPath: " + strPath);
            //    Directory.CreateDirectory(strPath);
            //}
            //File.Copy(srcFile, dstFile, true);
            return true;
        }


        public static bool AddAndroidPermission(XmlDocument xmlDocument, XmlElement manifest, string perm)
        {
            var android = manifest.GetAttribute("xmlns:android");
            var nodelist = manifest.SelectNodes("uses-permission");
            foreach (XmlNode snode in nodelist)
            {
                string value = snode.Attributes.GetNamedItem("name", android).Value;
                if (value == perm)
                {
                    return true;
                }
            }
            XmlElement node = xmlDocument.CreateElement("uses-permission");
            node.SetAttribute("name", android, perm);
            manifest.AppendChild(node);
            return true;
        }

        // 修改GradleFile
        private static bool ChangeGradleFile(XmlNode manifest, string perm)
        {
            return true;

        }

        // 拷贝文件
        private static bool CopyConfigFile(string unityProjectDir, string androidProjectDir, string src, string dst)
        {
            return true;
        }


        //[MenuItem ("iDreamsky/ReadMsconfig")]
        public static MSLDPostProcessConfig ReadMsConfig(string unityProjectDir)
        {

            //读取json配置
            //Debug.Log("msPath unityProjectDir: " + unityProjectDir);
            string msPath = Path.Combine(unityProjectDir, "Assets/Plugins/iDreamsky/msld/Android/msConfig.json");
            //Debug.Log("msPath: " + msPath);
            var sourceContent = File.ReadAllText(msPath);
            MSLDPostProcessConfig config = JsonUtility.FromJson<MSLDPostProcessConfig>(sourceContent);
            return config;
        }

        public static string GetProjectPathFromBuild(string path){
            #if UNITY_ANDROID
            return  Path.Combine(path, Application.productName);
            #else
            return path;
            #endif
        }

    }
}







