using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEditor;
using ZHJ.Battle;
using System.IO;

public class NewBehaviourScript
{
    [MenuItem("Assets/Tools/一键处理工具/FXTool")]
    static void OnMenuItem()
    {
        var fxGUID = AssetDatabase.FindAssets("t:Prefab", new string[] { "Assets/AssetsPackage/Art/EffectRes/Common" });

        int count = 0;
        foreach (var id in fxGUID)
        {
            string path = AssetDatabase.GUIDToAssetPath(id);
            GameObject fxP = AssetDatabase.LoadAssetAtPath<GameObject>(path);
            if(fxP==null)
            {
                Debug.LogError(path);
                continue;
            }
            if (fxP.GetComponent<CommonFxLogic>() == null)
            {
                fxP.AddComponent<CommonFxLogic>();

                EditorUtility.SetDirty(fxP);
            }
           
            count++;
            EditorUtility.DisplayProgressBar("Processing", path, count * 1f / fxGUID.Length);
        }
        EditorUtility.ClearProgressBar();
        AssetDatabase.Refresh();
        AssetDatabase.SaveAssets();

    }

    [MenuItem("Tools/MainistTest")]
    static void MainistTest()
    {
        string outputPath = PackageUtils.GetAssetBundleOutputPath(BuildTarget.Android, "Test");
        
        AssetBundle assetBundle = AssetBundle.LoadFromFile(outputPath + "\\" + BuildUtils.ManifestBundleName);
        if(assetBundle != null)
        {
            AssetBundleManifest manifest = assetBundle.LoadAsset<AssetBundleManifest>("AssetBundleManifest");
            string[] self_name_list = manifest.GetAllAssetBundles();
        
            foreach (string name in self_name_list)
            {
                string path = outputPath + "\\" + name;
                FileInfo file = new FileInfo(path);
                Logger.Log(name+","+file.Length / 1024 + "," + PackageUtils.GetFileMD5(path)+ "\n");
            }
            assetBundle.Unload(false);
        }
    }

}
