using UnityEngine;
using UnityEditor;
using System.Collections.Generic;
using System.IO;

/// <summary>
/// added by wsh @ 2017.12.25
/// 说明：Assetbundle相关菜单项
/// TODO：
/// 1、提供可视化界面的Assetbundle管理，包括依赖、公共包查看，ab添加、移除功能---check Unity5.6官方的AB管理工具好不好用
/// 2、重构这部分代码，全部功能整合到打包窗口，不用菜单选项了
/// 3、提供各个渠道历史资源版本AB变化对比工具，让增量更新透明化
/// </summary>

namespace AssetBundles
{
    // unity editor启动和运行时调用静态构造函数
    [InitializeOnLoad]
    public class AssetBundleMenuItems
    {
        //%:ctrl,#:shift,&:alt
        const string kSimulateMode = "AssetBundles/Switch Model/Simulate Mode";
        const string kEditorMode = "AssetBundles/Switch Model/Editor Mode";
        const string kToolRunAllCheckers = "AssetBundles/Run All Checkers";
        const string kToolBuildForCurrentSetting = "AssetBundles/Build For Current Setting";
        const string kToolsCopyAssetbundles = "AssetBundles/Copy To StreamingAssets";
        const string kToolsOpenOutput = "AssetBundles/Open Current Output";
        const string kToolsOpenPerisitentData = "AssetBundles/Open PersistentData";
        const string kToolsClearOutput = "AssetBundles/Clear Current Output";
        const string kToolsClearStreamingAssets = "AssetBundles/Clear StreamingAssets";
        const string kToolsClearPersistentAssets = "AssetBundles/Clear PersistentData";

        const string kCreateAssetbundleForCurrent = "Assets/AssetBundles/Create Assetbundle For Current &#z";
        const string kCreateAssetbundleForChildren = "Assets/AssetBundles/Create Assetbundle For Children &#x";
        const string kAssetDependencis = "Assets/AssetBundles/Asset Dependencis &#h";
        const string kAssetbundleAllDependencis = "Assets/AssetBundles/Assetbundle All Dependencis &#j";
        const string kAssetbundleDirectDependencis = "Assets/AssetBundles/Assetbundle Direct Dependencis &#k";
        
        static AssetBundleMenuItems()
        {
            //CheckSimulateModelEnv();
        }

        static void CheckSimulateModelEnv()
        {
            if (!AssetBundleConfig.IsSimulateMode)
            {
                return;
            }

            var buildTargetName = PackageUtils.GetCurPlatformName();
            var channelName = PackageUtils.GetCurSelectedChannel().ToString();
            var outputManifest = PackageUtils.GetCurBuildSettingAssetBundleManifestPath();
            bool hasBuildAssetBundles = false;
            if (!File.Exists(outputManifest))
            {
                bool checkBuild = EditorUtility.DisplayDialog("Build AssetBundles Warning",
                    string.Format("Build AssetBundles for : \n\nplatform : {0} \nchannel : {1} \n\nContinue ?", buildTargetName, channelName),
                    "Confirm", "Cancel");
                if (!checkBuild)
                {
                    ToggleEditorMode();
                    return;
                }

                hasBuildAssetBundles = true;
                BuildPlayer.BuildAssetBundlesForCurSetting();
            }
            
            var streamingManifest = PackageUtils.GetCurBuildSettingStreamingManifestPath();
            if (hasBuildAssetBundles || !File.Exists(streamingManifest))
            {
                bool checkCopy = EditorUtility.DisplayDialog("Copy AssetBundles To StreamingAssets Warning",
                    string.Format("Copy AssetBundles to streamingAssets folder for : \n\nplatform : {0} \nchannel : {1} \n\nContinue ?", buildTargetName, channelName),
                    "Confirm", "Cancel");
                if (!checkCopy)
                {
                    ToggleEditorMode();
                    return;
                }

                // 拷贝到StreamingAssets目录时，相当于执行大版本更新，那么沙盒目录下的数据就作废了
                // 真机上会对比这两个目录下的App版本号来删除，编辑器下暴力一点，直接删除
                ToolsClearPersistentAssets();
                PackageUtils.CopyCurSettingAssetBundlesToStreamingAssets(EditorUserBuildSettings.activeBuildTarget);
            }
            LaunchAssetBundleServer.CheckAndDoRunning();
        }
        
        [MenuItem(kEditorMode, false)]
        public static void ToggleEditorMode()
        {
            if (AssetBundleConfig.IsSimulateMode)
            {
                AssetBundleConfig.IsEditorMode = true;
                LaunchAssetBundleServer.CheckAndDoRunning();
            }
        }

        [MenuItem(kEditorMode, true)]
        public static bool ToggleEditorModeValidate()
        {
            Menu.SetChecked(kEditorMode, AssetBundleConfig.IsEditorMode);
            return true;
        }

        [MenuItem(kSimulateMode)]
        public static void ToggleSimulateMode()
        {
            if (AssetBundleConfig.IsEditorMode)
            {
                AssetBundleConfig.IsSimulateMode = true;
                CheckSimulateModelEnv();
                LaunchAssetBundleServer.CheckAndDoRunning();
            }
        }

        [MenuItem(kSimulateMode, true)]
        public static bool ToggleSimulateModeValidate()
        {
            Menu.SetChecked(kSimulateMode, AssetBundleConfig.IsSimulateMode);
            return true;
        }

        [MenuItem(kToolRunAllCheckers)]
        static public void ToolRunAllCheckers()
        {
            var buildTargetName = PackageUtils.GetCurPlatformName();
            var channelName = PackageUtils.GetCurSelectedChannel().ToString();
            bool checkCopy = EditorUtility.DisplayDialog("Run Checkers Warning",
                string.Format("Run Checkers for : \n\nplatform : {0} \nchannel : {1} \n\nContinue ?", buildTargetName, channelName),
                "Confirm", "Cancel");
            if (!checkCopy)
            {
                return;
            }

            bool checkChannel = PackageUtils.BuildAssetBundlesForPerChannel(EditorUserBuildSettings.activeBuildTarget);
            PackageUtils.CheckAndRunAllCheckers(checkChannel, true);
        }

        [MenuItem(kToolBuildForCurrentSetting, false, 1100)]
        static public void ToolBuildForCurrentSetting()
        {
            var buildTargetName = PackageUtils.GetCurPlatformName();
            var channelName = PackageUtils.GetCurSelectedChannel().ToString();
            bool checkCopy = EditorUtility.DisplayDialog("Build AssetBundles Warning",
                string.Format("Build AssetBundles for : \n\nplatform : {0} \nchannel : {1} \n\nContinue ?", buildTargetName, channelName),
                "Confirm", "Cancel");
            if (!checkCopy)
            {
                return;
            }

            PackageTool.BuildAssetBundlesForCurrentChannel();
        }

        [MenuItem(kToolsCopyAssetbundles, false, 1101)]
        static public void ToolsCopyAssetbundles()
        {
            var buildTargetName = PackageUtils.GetCurPlatformName();
            var channelName = PackageUtils.GetCurSelectedChannel().ToString();
            bool checkCopy = EditorUtility.DisplayDialog("Copy AssetBundles To StreamingAssets Warning",
                string.Format("Copy AssetBundles to streamingAssets folder for : \n\nplatform : {0} \nchannel : {1} \n\nContinue ?", buildTargetName, channelName),
                "Confirm", "Cancel");
            if (!checkCopy)
            {
                return;
            }

            // 拷贝到StreamingAssets目录时，相当于执行大版本更新，那么沙盒目录下的数据就作废了
            // 真机上会对比这两个目录下的App版本号来删除，编辑器下暴力一点，直接删除
            ToolsClearPersistentAssets();
            PackageUtils.CopyCurSettingAssetBundlesToStreamingAssets(EditorUserBuildSettings.activeBuildTarget);

            LaunchAssetBundleServer.CheckAndDoRunning();
        }
        

        [MenuItem(kToolsOpenOutput, false, 1201)]
        static public void ToolsOpenOutput()
        {
            string outputPath = PackageUtils.GetCurBuildSettingAssetBundleOutputPath();
            EditorUtils.ExplorerFolder(outputPath);
        }

        [MenuItem(kToolsOpenPerisitentData, false, 1202)]
        static public void ToolsOpenPerisitentData()
        {
            EditorUtils.ExplorerFolder(Application.persistentDataPath);
        }

        [MenuItem(kToolsClearOutput, false, 1302)]
        static public void ToolsClearOutput()
        {
            var buildTargetName = PackageUtils.GetCurPlatformName();
            var channelName = PackageUtils.GetCurSelectedChannel().ToString();
            bool checkClear = EditorUtility.DisplayDialog("ClearOutput Warning",
                string.Format("Clear output assetbundles will force to rebuild all : \n\nplatform : {0} \nchannel : {1} \n\n continue ?", buildTargetName, channelName),
                "Yes", "No");
            if (!checkClear)
            {
                return;
            }
            string outputPath = PackageUtils.GetCurBuildSettingAssetBundleOutputPath();
            GameUtility.SafeDeleteDir(outputPath);
            Debug.Log(string.Format("Clear done : {0}", outputPath));
        }

        [MenuItem(kToolsClearStreamingAssets, false, 1303)]
        static public void ToolsClearStreamingAssets()
        {
            bool checkClear = EditorUtility.DisplayDialog("ClearStreamingAssets Warning",
                "Clear streaming assets assetbundles will lost the latest player build info, continue ?",
                "Yes", "No");
            if (!checkClear)
            {
                return;
            }
            string outputPath = Path.Combine(Application.streamingAssetsPath, AssetBundleConfig.AssetBundlesFolderName);
            GameUtility.SafeClearDir(outputPath);
            AssetDatabase.Refresh();
            Debug.Log(string.Format("Clear {0} assetbundle streaming assets done!", PackageUtils.GetCurPlatformName()));
        }

        [MenuItem(kToolsClearPersistentAssets, false, 1301)]
        static public void ToolsClearPersistentAssets()
        {
            bool checkClear = EditorUtility.DisplayDialog("ClearPersistentAssets Warning",
                "Clear persistent assetbundles will force to update all assetbundles that difference with streaming assets assetbundles, continue ?",
                "Yes", "No");
            if (!checkClear)
            {
                return;
            }

            string outputPath = Path.Combine(Application.persistentDataPath, AssetBundleConfig.AssetBundlesFolderName);
            GameUtility.SafeDeleteDir(outputPath);
            Debug.Log(string.Format("Clear {0} assetbundle persistent assets done!", PackageUtils.GetCurPlatformName()));
            //同时清理Audio资源
            outputPath = Path.Combine(Application.persistentDataPath, AssetBundleConfig.AssetBundlesAudioFolderName);
            GameUtility.SafeDeleteDir(outputPath);
            Debug.Log(string.Format("Clear {0} assetbundle persistent assets audio done!", PackageUtils.GetCurPlatformName()));
        }

        [MenuItem(kCreateAssetbundleForCurrent)]
        static public void CreateAssetbundleForCurrent()
        {
            if (AssetBundleEditorHelper.HasValidSelection())
            {
                bool checkCreate = EditorUtility.DisplayDialog("CreateAssetbundleForCurrent Warning",
                    "Create assetbundle for cur selected objects will reset assetbundles which contains this dir, continue ?",
                    "Yes", "No");
                if (!checkCreate)
                {
                    return;
                }
                Object[] selObjs = Selection.objects;
                AssetBundleEditorHelper.CreateAssetbundleForCurrent(selObjs);
                List<string> removeList = AssetBundleEditorHelper.RemoveAssetbundleInParents(selObjs);
                removeList.AddRange(AssetBundleEditorHelper.RemoveAssetbundleInChildren(selObjs));
                string removeStr = string.Empty;
                int i = 0;
                foreach(string str in removeList)
                {
                    removeStr += string.Format("[{0}]{1}\n",++i,str);
                }
                if (removeList.Count > 0)
                {
                    Debug.Log(string.Format("CreateAssetbundleForCurrent done!\nRemove list :" +
                        "\n-------------------------------------------\n" +
                        "{0}" +
                        "\n-------------------------------------------\n",
                        removeStr));
                }
            }
        }
        
        [MenuItem(kCreateAssetbundleForChildren)]
        static public void CreateAssetbundleForChildren()
        {
            if (AssetBundleEditorHelper.HasValidSelection())
            {
                bool checkCreate = EditorUtility.DisplayDialog("CreateAssetbundleForChildren Warning",
                    "Create assetbundle for all children of cur selected objects will reset assetbundles which contains this dir, continue ?",
                    "Yes", "No");
                if (!checkCreate)
                {
                    return;
                }
                Object[] selObjs = Selection.objects;
                AssetBundleEditorHelper.CreateAssetbundleForChildren(selObjs);
                List<string> removeList = AssetBundleEditorHelper.RemoveAssetbundleInParents(selObjs);
                removeList.AddRange(AssetBundleEditorHelper.RemoveAssetbundleInChildren(selObjs, true, false));
                string removeStr = string.Empty;
                int i = 0;
                foreach (string str in removeList)
                {
                    removeStr += string.Format("[{0}]{1}\n", ++i, str);
                }
                if (removeList.Count > 0)
                {
                    Debug.Log(string.Format("CreateAssetbundleForChildren done!\nRemove list :" +
                    "\n-------------------------------------------\n" +
                    "{0}" +
                    "\n-------------------------------------------\n",
                    removeStr));
                }
            }
        }

        [MenuItem(kAssetDependencis)]
        static public void ListAssetDependencis()
        {
            if (AssetBundleEditorHelper.HasValidSelection())
            {
                Object[] selObjs = Selection.objects;
                string depsStr = AssetBundleEditorHelper.GetDependencyText(selObjs, false);
                string selStr = string.Empty;
                int i = 0;
                foreach (Object obj in selObjs)
                {
                    selStr += string.Format("[{0}]{1};", ++i, AssetDatabase.GetAssetPath(obj));
                }
                Debug.Log(string.Format("Selection({0}) depends on the following assets:" + 
                    "\n-------------------------------------------\n" + 
                    "{1}" + 
                    "\n-------------------------------------------\n",
                    selStr,
                    depsStr));
                AssetBundleEditorHelper.SelectDependency(selObjs,false);
            }
        }
        
        [MenuItem(kAssetbundleAllDependencis)]
        static public void ListAssetbundleAllDependencis()
        {
            ListAssetbundleDependencis(true);
        }
        
        [MenuItem(kAssetbundleDirectDependencis)]
        static public void ListAssetbundleDirectDependencis()
        {
            ListAssetbundleDependencis(false);
        }
        
        static public void ListAssetbundleDependencis(bool isAll)
        {
            if (AssetBundleEditorHelper.HasValidSelection())
            {
                string localFilePath = PackageUtils.GetCurBuildSettingAssetBundleManifestPath();

                Object[] selObjs = Selection.objects;
                var depsList = AssetBundleEditorHelper.GetDependancisFormBuildManifest(localFilePath, selObjs, isAll);
                if (depsList == null)
                {
                    return;
                }

                depsList.Sort();
                string depsStr = string.Empty;
                int i = 0;
                foreach (string str in depsList)
                {
                    depsStr += string.Format("[{0}]{1}\n", ++i, str);
                }

                string selStr = string.Empty;
                i = 0;
                foreach (Object obj in selObjs)
                {
                    selStr += string.Format("[{0}]{1};", ++i, AssetDatabase.GetAssetPath(obj));
                }
                Debug.Log(string.Format("Selection({0}) directly depends on the following assetbundles:" +
                    "\n-------------------------------------------\n" +
                    "{1}" +
                    "\n-------------------------------------------\n",
                    selStr,
                    depsStr));
            }
        }


        private static string CreateTimeLineEvent(int index,string msg, int lParam, float fParam, string sParam,double start,float animstart)
        {
            string temp = null;
            if(!string.IsNullOrEmpty(sParam))
            {
                if(animstart >= 0)
                {
                    temp = string.Format("time = {0},msg = \"{1}\",lParam = {2},fParam={3},sParam=\"{4}\",aParam = {5}", Mathf.RoundToInt((float)start * 1000) * 1f / 1000, msg, lParam, Mathf.RoundToInt(fParam * 1000) * 1f / 1000, sParam, Mathf.RoundToInt(animstart * 1000) * 1f / 1000);
                }
                else
                {
                    temp = string.Format("time = {0},msg = \"{1}\",lParam = {2},fParam={3},sParam=\"{4}\"", Mathf.RoundToInt((float)start * 1000) * 1f / 1000, msg, lParam, Mathf.RoundToInt(fParam * 1000) * 1f / 1000, sParam);
                }
              
            }
            else
            {
                temp = string.Format("time = {0},msg = \"{1}\",lParam = {2},fParam={3}", Mathf.RoundToInt((float)start * 1000) * 1f / 1000, msg, lParam, Mathf.RoundToInt(fParam * 1000) * 1f / 1000);
            }
           
            return "[" + index + "] = {" + temp + "},";
        }

        [MenuItem("Tools/CreateSkillTime")]
        public static void OnCreateSkillTime()
        {
            //遍历文件夹

            DirectoryInfo theFolder = new DirectoryInfo("Assets/AssetsPackage/Art/Roles");
            DirectoryInfo[] dirInfo = theFolder.GetDirectories();
            List<string> allPath = new List<string>();
            List<float> allTime = new List<float>();
            List<string> eventStr = new List<string>();
            foreach (DirectoryInfo NextFolder in dirInfo)
            {
                FileInfo[] fileInfo = NextFolder.GetFiles("*.*", SearchOption.AllDirectories);

                foreach (FileInfo NextFile in fileInfo)  //遍历文件
                {
                    if (".playable" == NextFile.Extension)
                    {
                        string path = NextFile.FullName.Substring(NextFile.FullName.Split(new string[] { "Assets" }, System.StringSplitOptions.None)[0].Length);
                        UnityEngine.Timeline.TimelineAsset obj = AssetDatabase.LoadAssetAtPath<UnityEngine.Timeline.TimelineAsset>(path);
                        string name = path.Substring(21).Replace('\\', '/');
                        if (obj != null)
                        {
                            allPath.Add(name);
                            allTime.Add(Mathf.RoundToInt((float)obj.duration * 1000) * 1f / 1000);
                            int index = 1;
                            string str = "{";
                            foreach (var t in obj.GetOutputTracks())
                            {
                                if (t.name.Equals("Msgs"))
                                {
                                    foreach (var clip in t.GetClips())
                                    {
                                        if (clip != null)
                                        {
                                            var clipasset = clip.asset as TimelineEvent;
                                            str = str + CreateTimeLineEvent(index, clipasset.msg, clipasset.lParam, clipasset.fParam, clipasset.sParam, clip.start,-1);
                                            index++;
                                        }
                                    }
                                }
                                else if ((t is LJ_TimelineExtension.AnimatorStateTrack)
                                           && (t.name.StartsWith("Target") || t.name.StartsWith("Other"))
                                           )
                                {
                                    foreach (var clip in t.GetClips())
                                    {
                                        if (clip != null)
                                        {
                                            var clipasset = clip.asset as LJ_TimelineExtension.AnimatorStatePlayableAsset;
                                            if (clipasset != null)
                                            {
                                                int targetFlag = 0;
                                                if(t.name.StartsWith("Other"))
                                                {
                                                    targetFlag = 1;
                                                }
                                                str = str + CreateTimeLineEvent(index, "anim_evt", targetFlag, clipasset.fadeTime, clipasset.StateName, clip.start,clipasset.startTime);
                                                index++;

                                            }
                                        }
                                    }
                                }
                                else if (t.name.StartsWith("WwiseCtrl"))
                                {
                                    foreach (var clip in t.GetClips())
                                    {
                                        if (clip != null)
                                        {
                                            var clipasset = clip.asset as WwiseEvent;
                                            if (clipasset != null)
                                            {
                                                str = str + CreateTimeLineEvent(index, "audio", 0, 0, clipasset.audioName, clip.start,-1);
                                                index++;

                                            }
                                        }
                                    }
                                }
                            }
                            str = str + "}";
                            if(index > 1)
                            {
                                eventStr.Add(str);
                            }
                            else
                            {
                                eventStr.Add("");
                            }
                          
                        }
                    }

                }
                //list.Add(NextFile.FullName);
            }
            if (allPath.Count == 0)
            {
                return;
            }        
            string clientPath = Application.dataPath + "/LuaScripts/Config/Data/timeline_time.lua";
            if (File.Exists(clientPath))
            {
                File.Delete(clientPath);
            }

            FileStream fs = new FileStream(clientPath, FileMode.Create);
            StreamWriter sw = new StreamWriter(fs);
            sw.Write("return{\n");
            for (int i = 0; i < allPath.Count; i++)
            {
                string temp = null;
                if(eventStr[i] =="")
                {
                    temp = string.Format("duration = {0}", allTime[i]);
                }
                else
                {
                    temp = string.Format("duration = {0},event = {1}", allTime[i], eventStr[i]);
                }         
                string str = "    [\""+allPath[i]+"\"] = {" + temp + "},";
                sw.Write(str);
                sw.WriteLine();
            }
            sw.Write("}");
            sw.Close();
            fs.Close();

        }

        public static byte[] CustomLoader(ref string filepath)
        {
            string scriptPath = string.Empty;
            filepath = filepath.Replace(".", "/") + ".lua";
            scriptPath = Path.Combine(Application.dataPath, "LuaScripts");
            scriptPath = Path.Combine(scriptPath, filepath);
            return GameUtility.SafeReadAllBytes(scriptPath);
        }

        [MenuItem("Tools/CreateServerSkillTime")]
        public static void OnCreateServerSkillTime()
        {
            //遍历文件夹

            string path = AssetBundleUtility.PackagePathToAssetsPath("Lua");
            string AssetbundleName = AssetBundleUtility.AssetBundlePathToAssetBundleName(path);
            XLua.LuaEnv luaEnv = new XLua.LuaEnv();
            luaEnv.AddLoader(CustomLoader);
            luaEnv.AddBuildin("pb", XLua.LuaDLL.Lua.LoadPb);
            luaEnv.AddBuildin("cjson", XLua.LuaDLL.Lua.LoadRapidJson);
            string cmd = string.Format("require('{0}/Editor/AssetBundle/SkillTimeline')", Application.dataPath);
            luaEnv.DoString(cmd);
            XLua.LuaFunction func = luaEnv.Global.Get<XLua.LuaFunction>("ParseSkillTime");
            object[] obj = func.Call();
            if(obj != null && obj.Length > 0)
            {
                string serverPath = string.Format("{0}/{1}.txt", Application.dataPath.Substring(0, Application.dataPath.Length - 7), "normal_timeline");
                if (File.Exists(serverPath))
                {
                    File.Delete(serverPath);
                }

                FileStream fs = new FileStream(serverPath, FileMode.Create);
                StreamWriter sw = new StreamWriter(fs);
                sw.Write("id"+"\t"+"roleId" + "\t" + "key"+"\t"+"time");
                sw.WriteLine();
                sw.Write("int" + "\t" + "int"+"\t"+"string" + "\t" + "float");
                sw.WriteLine();

                XLua.LuaTable tempTable = obj[0] as XLua.LuaTable;
                int index = 1;
                tempTable.ForEach<int, XLua.LuaTable>(delegate(int a, XLua.LuaTable luaTable) {
                    sw.Write(index+"\t"+luaTable.Get<int>("roldId") + "\t" + luaTable.Get<string>("key")
                        +"\t"+ luaTable.Get<float>("time"));
                    sw.WriteLine();
                    index++;
                });

                sw.Close();
                fs.Close();

            }

            func = luaEnv.Global.Get<XLua.LuaFunction>("ParseCSkillTime");
            obj = func.Call();
            if (obj != null && obj.Length > 0)
            {
                string serverPath = string.Format("{0}/{1}.txt", Application.dataPath.Substring(0, Application.dataPath.Length - 7), "cc_timeline");
                if (File.Exists(serverPath))
                {
                    File.Delete(serverPath);
                }

                FileStream fs = new FileStream(serverPath, FileMode.Create);
                StreamWriter sw = new StreamWriter(fs);
                sw.Write("id" + "\t" + "key" + "\t" + "time");
                sw.WriteLine();
                sw.Write("int" + "\t" + "string" + "\t" + "float");
                sw.WriteLine();

                XLua.LuaTable tempTable = obj[0] as XLua.LuaTable;
                int index = 1;
                tempTable.ForEach<int, XLua.LuaTable>(delegate (int a, XLua.LuaTable luaTable) {
                    sw.Write(index  + "\t" + luaTable.Get<string>("key")
                        + "\t" + luaTable.Get<float>("time"));
                    sw.WriteLine();
                    index++;
                });

                sw.Close();
                fs.Close();

            }






        }


    }
}