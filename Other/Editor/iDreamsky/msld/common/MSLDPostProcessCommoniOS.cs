using System;
using System.IO;
using UnityEditor.iOS.Xcode;
using UnityEditor.iOS.Xcode.iDreamsky;
using UnityEditor.iOS.Xcode.iDreamsky.Extensions;
using UnityEngine;

using PBXProject = UnityEditor.iOS.Xcode.iDreamsky.PBXProject;
using PBXSourceTree = UnityEditor.iOS.Xcode.iDreamsky.PBXSourceTree;
using PlistDocument = UnityEditor.iOS.Xcode.iDreamsky.PlistDocument;
using PlistElementArray = UnityEditor.iOS.Xcode.iDreamsky.PlistElementArray;


#if UNITY_IOS

namespace iDreamsky.PostProcess
{
    public class MSLDPostProcessCommoniOS
    {
        public delegate bool ChangeInfoPlistStep(PlistDocument doc);

        public delegate bool ChangePBProjectStep(PBXProject project, string target);




        //private static void AddEmbedFrameworks(PBXProject proj, string targetGuid, string framework)
        //{
        //    //string fileGuid = proj.AddFile("usr/lib/" + lib, "Frameworks/" + lib, PBXSourceTree.Sdk);
        //    //proj.AddFileToBuild(targetGuid, fileGuid);


        //    string framework = Path.Combine(frameworkPath, fwk);
        //    string fileGuid = proj.AddFile(framework, "Frameworks/" + framework, PBXSourceTree.Sdk);
        //    PBXProjectExtensions.AddFileToEmbedFrameworks(proj, target, fileGuid);

        //    proj.SetBuildProperty(target, "LD_RUNPATH_SEARCH_PATHS", "$(inherited) @executable_path/Frameworks");
        //}

        // 添加 LSApplicationQueriesSchemes
        public static bool AddApplicationQueriesSchemes(PlistDocument doc, string[] schemes)
        {

            PlistElementArray queriesSchemes = null;
            try
            {
                queriesSchemes = (PlistElementArray)doc.root.values["LSApplicationQueriesSchemes"];
            }
            catch (Exception e)
            {

            }

            if (queriesSchemes == null)
            {
                queriesSchemes = doc.root.CreateArray("LSApplicationQueriesSchemes");
            }

            foreach (string scheme in schemes)
            {
                queriesSchemes.AddString(scheme);
            }

            return true;
        }

        // 添加 URLTypes
        public static bool AddURLTypes(PlistDocument doc, string role, string URLName, string schemes)
        {
            PlistElementArray urlTypes = null;
            try
            {
                urlTypes = (PlistElementArray)doc.root.values["CFBundleURLTypes"];
            }
            catch (Exception e)
            {

            }

            if (urlTypes == null) {
                urlTypes = doc.root.CreateArray("CFBundleURLTypes");
            }
            
            var urlDict = urlTypes.AddDict();
            urlDict.SetString("CFBundleTypeRole", role);
            urlDict.SetString("CFBundleURLName", URLName);
            urlDict.CreateArray("CFBundleURLSchemes").AddString(schemes);

            return true;
        }

        //// 添加Frameworks
        //public static bool AddFrameworks(string role, string URLName, string schemes)
        //{
        //    return true;
        //}

        //// 添加Embed Frameworks
        //public static bool AddEmbedFramework()
        //{
        //    return true;
        //}

        // 添加动态库
        public static void AddTbdToProject(PBXProject proj, string targetGuid, string tbd)
        {
            string fileGuid = proj.AddFile("usr/lib/" + tbd, "Frameworks/" + tbd, PBXSourceTree.Sdk);
            proj.AddFileToBuild(targetGuid, fileGuid);
        }


        public static bool ChangeInfoPlist(string pathToBuiltProject, ChangeInfoPlistStep step)
        {
            string plistPath = Path.Combine(pathToBuiltProject, "Info.plist");

            if (!File.Exists(plistPath))
            {
                Debug.LogError("[MSLDPostProcess][iOS][ChangeInfoPlist]:plistPath Not exists. plistPath:" + plistPath);
                return false;
            }

            Debug.Log("[MSLDPostProcess][iOS][ChangeInfoPlist]: plistPath: " + plistPath);

            var doc = new PlistDocument();
            doc.ReadFromFile(plistPath);

            if (doc == null)
            {
                Debug.LogError("[MSLDPostProcess][iOS][ChangeInfoPlist]:PlistDocument is null. plistPath:" + plistPath);
                return false;
            }

            if (step != null)
            {
                if (step(doc))
                {
                    doc.WriteToFile(plistPath);
                }
                else
                {
                    Debug.LogError("[MSLDPostProcess][iOS][ChangeInfoPlist]:  step false");
                    return false;
                }
            }

            return true;
        }


        public static bool ChangePBProject(string pathToBuiltProject, ChangePBProjectStep step)
        {

            string projPath = PBXProject.GetPBXProjectPath(pathToBuiltProject);
            if (!File.Exists(projPath))
            {
                Debug.LogError("[MSLDPostProcess][iOS][ChangePBProject]:projPath Not exists. projPath:" + projPath);
                return false;
            }

            PBXProject proj = new PBXProject();
            proj.ReadFromFile(projPath);

            if (proj == null)
            {
                Debug.LogError("[MSLDPostProcess][iOS][ChangePBProject]:PBXProject is null. projPath:" + projPath);
                return false;
            }

            string target = proj.TargetGuidByName(PBXProject.GetUnityTargetName());

            if (step != null)
            {
                if (step(proj, target))
                {
                    proj.WriteToFile(projPath);
                }
                else
                {
                    Debug.LogError("[MSLDPostProcess][iOS][ChangePBProject]:  step false");
                    return false;
                }
            }

            return true;
        }

        public static MSLDPostProcessConfig ReadMsConfig(string unityProjectDir)
        {

            //读取json配置
            Debug.Log("msPath unityProjectDir: " + unityProjectDir);
            string msPath = Path.Combine(unityProjectDir, "Assets/Plugins/iDreamsky/msld/iOS/msConfig.json");
            Debug.Log("msPath: " + msPath);
            var sourceContent = File.ReadAllText(msPath);
            MSLDPostProcessConfig config = JsonUtility.FromJson<MSLDPostProcessConfig>(sourceContent);
            return config;
        }
    }
}

#endif
