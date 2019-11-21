using UnityEditor;
using UnityEngine;
using System.IO;
using GameChannel;
using AssetBundles;
using System;
using System.Collections.Generic;
using System.Text;

public class WiseTools : EditorWindow
{
    string ConverFileSrcPath="";
    string ConverFileDstPath = "";
    string outputfilename = "SoundbanksInfo.txt";
    [MenuItem("Tools/WwisConvert", false, 0)]
    static void Init()
    {
        EditorWindow.GetWindow(typeof(WiseTools));
    }
#if UNITY_EDITOR_WIN
    [MenuItem("Tools/Copy Wwise Windows res", false, 0)]
    static void CopyAudio()
    {
        string source = Path.Combine(Application.dataPath, AssetBundleConfig.WWISEAssetBundlAudioPath);
        source = Path.Combine(source, "Windows");
        string destination = Path.Combine(Application.dataPath, "StreamingAssets");
        destination = Path.Combine(destination, AssetBundleConfig.AssetBundlesFolderName);
        destination = Path.Combine(destination, AssetBundleConfig.AssetBundlesAudioFolderName_GEN);
        GameUtility.CheckDirAndCreateWhenNeeded(destination);
        destination = Path.Combine(destination, "Windows");
        GameUtility.SafeDeleteDir(destination);
        try
        {
            FileUtil.CopyFileOrDirectoryFollowSymlinks(source, destination);
            var allManifest = GameUtility.GetSpecifyFilesInFolder(destination, new string[] { ".meta" });
            if (allManifest != null && allManifest.Length > 0)
            {
                for (int i = 0; i < allManifest.Length; i++)
                {
                    GameUtility.SafeDeleteFile(allManifest[i]);
                }
            }
        }
        catch (System.Exception ex)
        {
            Debug.LogError("Something wrong, you need manual delete folder in StreamingAssets, err : " + ex);
            return;
        }
        Debug.Log("Audio Copy Finished");
        AssetDatabase.Refresh();
    }
#endif
    //[MenuItem("Tools/Copy Test", false, 0)]
    static void CopyVideo1()
    {
        BuildTarget buildTarget = BuildTarget.Android;
        //首先从资源路径复制所有音效资源到更新路径
        string pltname = PackageUtils.GetPlatformName(buildTarget);

        //取得音效的原始路径
        string sourcePath = PackageUtils.GetAudioSourceDataPath(pltname);
        //资源输出路径
        string AssetsPath = PackageUtils.GetAssetBundleOutputPath(buildTarget, "Test");
        //需要复制到的资源路径
        string destPath = Path.Combine(AssetsPath, AssetBundleConfig.AssetBundlesAudioFolderName_GEN);
        //加入平台
        destPath = Path.Combine(destPath, pltname);
        // 有毒，竟然在有的windows系统这个函数删除不了目录，不知道是不是Unity的Bug
        // GameUtility.SafeDeleteDir(destination);
        destPath = GameUtility.FormatToUnityPath(destPath);
        sourcePath = GameUtility.FormatToUnityPath(sourcePath);
        //如果文件夹下面有meta文件的时候无法删除文件夹，因为meta文件是隐藏文件，需要权限
        GameUtility.SafeDeleteDir(destPath);
        //检测目标路路径是否存在
        //GameUtility.CheckDirAndCreateWhenNeeded(destPath);
        Debug.Log("Audio dst Path:" + destPath);
        Debug.Log("Audio src Path:" + sourcePath);

        try
        {
            FileUtil.CopyFileOrDirectory(sourcePath, destPath);
            var allfiles = GameUtility.GetSpecifyFilesInFolder(sourcePath);
            if (allfiles != null && allfiles.Length > 0)
            {
                for (int i = 0; i < allfiles.Length; i++)
                {
                    if (allfiles[i].IndexOf(".meta") >= 0)
                    {
                        GameUtility.SafeDeleteFile(allfiles[i]);
                    }
                  }
            }

        }
        catch (System.Exception ex)
        {
            Debug.LogError("Something wrong: " + ex);
            return;
        }
    }
    [MenuItem("Tools/Copy Story Video res", false, 0)]
    static void CopyVideo()
    {
        string source = Path.Combine(Application.dataPath, AssetBundleConfig.StoryVideoSrcPath);
        string destination = Path.Combine(Application.dataPath, "StreamingAssets");
        destination = Path.Combine(destination, AssetBundleConfig.StoryVideoPath);
        PackageUtils.CopyFolder(source, destination, ".meta");

        source += "_Low";
        destination += "_Low";
        PackageUtils.CopyFolder(source, destination, ".meta");

        //try
        //{
        //    FileUtil.CopyFileOrDirectoryFollowSymlinks(source, destination);
        //    var allManifest = GameUtility.GetSpecifyFilesInFolder(destination, new string[] { ".meta" });
        //    if (allManifest != null && allManifest.Length > 0)
        //    {
        //        for (int i = 0; i < allManifest.Length; i++)
        //        {
        //            GameUtility.SafeDeleteFile(allManifest[i]);
        //        }
        //    }
        //}
        //catch (System.Exception ex)
        //{
        //    Debug.LogError("Something wrong, you need manual delete folder in StreamingAssets, err : " + ex);
        //    return;
        //}
        Debug.Log("Video Copy Finished");
        AssetDatabase.Refresh();
    }
    void OnGUI()
    {
        DrawSettingsPart();
    }
    public void DrawSettingsPart()
    {
        string description;
        string tooltip;
        string labelTitle;

        description = "SoundbanksInfo.xml file path:";
        tooltip =
            "需要转换的文件地址";
        labelTitle = "需要转换的文件地址";

        UnityEngine.GUILayout.Label(labelTitle, UnityEditor.EditorStyles.boldLabel);

        var OpenInPath = System.IO.Path.GetDirectoryName(AkUtilities.GetFullPath(UnityEngine.Application.dataPath,
          ""));
        using (new UnityEngine.GUILayout.HorizontalScope("box"))
        {
            UnityEngine.GUILayout.Label(new UnityEngine.GUIContent(description, tooltip), UnityEngine.GUILayout.Width(330));

            if(ConverFileSrcPath.Length >0)
            {
                OpenInPath = ConverFileSrcPath;
            }
            UnityEditor.EditorGUILayout.SelectableLabel(ConverFileSrcPath, "textfield",
                UnityEngine.GUILayout.Height(17));
            if (UnityEngine.GUILayout.Button("...", UnityEngine.GUILayout.Width(30)))
            {

                var WwiseProjectPathNew = UnityEditor.EditorUtility.OpenFilePanel("Select need Convert file", OpenInPath, "xml");
                if (WwiseProjectPathNew.Length != 0)
                {
                    if (WwiseProjectPathNew.EndsWith(".xml") == false)
                        UnityEditor.EditorUtility.DisplayDialog("Error", "Please select a valid .wproj file", "Ok");
                    else
                    {
                        ConverFileSrcPath = WwiseProjectPathNew;
                        if (ConverFileSrcPath.Length > 4)
                        {
                            int Spindex = ConverFileSrcPath.LastIndexOf("/");
                            string filename = ConverFileSrcPath.Substring(Spindex, ConverFileSrcPath.Length - Spindex -4);
                            filename += ".txt";
                           // outputfilename = filename;
                        }
                    }
                }

                Repaint();
            }
        }


        description = "SoundbanksInfo.txt Path:";
        tooltip = "导" +
            "导出文件的位置";
        labelTitle = "导出文件的位置";

        UnityEngine.GUILayout.Label(labelTitle, UnityEditor.EditorStyles.boldLabel);

        using (new UnityEngine.GUILayout.HorizontalScope("box"))
        {
            UnityEngine.GUILayout.Label(new UnityEngine.GUIContent(description, tooltip), UnityEngine.GUILayout.Width(330));


            UnityEditor.EditorGUILayout.SelectableLabel(ConverFileDstPath, "textfield", UnityEngine.GUILayout.Height(17));

            if (UnityEngine.GUILayout.Button("...", UnityEngine.GUILayout.Width(30)))
            {
#if UNITY_EDITOR_OSX
				var installationPathNew = UnityEditor.EditorUtility.SaveFolderPanel("Select your output path.",
					OpenInPath, "");
#else
                var installationPathNew = UnityEditor.EditorUtility.OpenFolderPanel("Select your ouput path.", OpenInPath,""); 
                    //System.Environment.GetEnvironmentVariable("ProgramFiles(x86)"), "");
#endif

                if (installationPathNew.Length != 0)
                {
                    ConverFileDstPath = System.IO.Path.GetFullPath(installationPathNew);
                }

                Repaint();
            }
        }
        // UnityEngine.GUILayout.Label("In Editor Warnings", UnityEditor.EditorStyles.boldLabel);

        //using (new UnityEngine.GUILayout.VerticalScope("box"))
        //{
        //    description = "Show Warning for Missing RigidBody";
        //    tooltip =
        //        "Interactions between AkGameObj and AkEnvironment or AkRoom require a Rigidbody component on the object or the environment/room. It is recommended to leave this box checked.";
        //    WwiseSetupWizard.Settings.ShowMissingRigidBodyWarning = UnityEngine.GUILayout.Toggle(
        //        WwiseSetupWizard.Settings.ShowMissingRigidBodyWarning, new UnityEngine.GUIContent(description, tooltip));
        //}

        //using (new UnityEngine.GUILayout.HorizontalScope())
        //{
        //    UnityEngine.GUILayout.Label("* Mandatory settings");
        //}
        if (GUILayout.Button("开始转换", GUILayout.Width(200)))
        {
            Logger.Log("原始文件：" + ConverFileSrcPath);
             string dst = Path.Combine(ConverFileDstPath, outputfilename);
            Logger.Log("输出文件：" + ConverFileDstPath);
            Logger.Log("输出文件：" + dst);
            if (BuildPlayer.ConvertXml2Json(ConverFileSrcPath, dst))
            {
                EditorUtility.DisplayDialog("转换音效文件","转换成功！！！！","确定");
            }

        }
        UnityEngine.GUILayout.FlexibleSpace();
    }
}
