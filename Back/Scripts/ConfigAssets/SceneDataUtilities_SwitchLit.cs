using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.SceneManagement;
using UnityEngine.Rendering.PostProcessing;
public partial class SceneDataUtilities
{
    static GameObject FindSceneRoot( string sceneName )
    {
        Scene curScene = SceneManager.GetActiveScene();
        List<GameObject> rootGos = new List<GameObject>();
        curScene.GetRootGameObjects(rootGos);
        GameObject ret = null;
        string rootName = sceneName + "_Root" + SCENE_NODE_SURFIX;
        foreach (var go in rootGos)
        {
            if (go.name == rootName)
            {
                ret = go;
                break;
            }
        }
        return ret;
    }

    static bool CloneEnvRootInfo( Transform src, Transform dst )
    {
        if (src == null || dst == null) return false;

        var srcmrs = src.GetComponentsInChildren<MeshRenderer>(true);
        var dstmrs = dst.GetComponentsInChildren<MeshRenderer>(true);

        if (srcmrs.Length != dstmrs.Length)
        {
            return false;
        }
        for (int i = 0 ; i < srcmrs.Length ; i++)
        {
            var smr = srcmrs[i];
            var dmr = dstmrs[i];

            dmr.sharedMaterials = smr.sharedMaterials;
           // dmr.lightmapIndex = smr.lightmapIndex;
           // dmr.lightmapScaleOffset = smr.lightmapScaleOffset;
        }

        return true;
    }

    static bool CloneLitInfo( Transform src, Transform dst, SceneAssetSet assetSet )
    {
        if (src == null || dst == null) return false;

        //set lit
        var srcLits = src.GetComponentsInChildren<Light>();
        var dstlits = dst.GetComponentsInChildren<Light>();
        if (srcLits != null && srcLits.Length > 0 && dstlits != null && dstlits.Length > 0)
        {
            foreach (var slit in srcLits)
            {
                foreach (var dlit in dstlits)
                {
                    if( dlit.cullingMask == slit.cullingMask)
                    {
                        dlit.transform.localPosition = slit.transform.localPosition;
                        dlit.transform.localRotation = slit.transform.localRotation;
                        dlit.color = slit.color;
                        dlit.intensity = slit.intensity;
                        dlit.bounceIntensity = slit.bounceIntensity;
                    }
                }
            }
        }
   
        //set reflection propbe
        if (dst != null && assetSet.reflectInfos != null && assetSet.reflectInfos.Length > 0)
        {
            var refls = dst.GetComponentsInChildren<ReflectionProbe>();
            foreach (var r in refls)
            {
                foreach (var info in assetSet.reflectInfos)
                {
                    if (info.name == r.name)
                    {
                        r.bakedTexture = info.refTex;
                        break;
                    }
                }
            }
        }

        //set postprocess volum
        var srcPV = src.GetComponentInChildren<PostProcessVolume>();
        var dstPV = dst.GetComponentInChildren<PostProcessVolume>();

        if( srcPV != null && dstPV != null)
        {
            dstPV.sharedProfile = srcPV.sharedProfile;
        }

        return true;
    }

    static void SetupLitmap( SceneDataLitAsset dstScene,
        SceneDataLitAsset srcScene,
        SceneAssetSet srcSceneSet ,
        int startIndex = 0        
        )
    {
        if( dstScene.lightMapData == null || dstScene.lightMapData.Length < 1
            || srcScene.lightMapData == null || srcScene.lightMapData.Length < 1
            )
        {
            return;
        }

        var lmDatas = LightmapSettings.lightmaps;
        if (lmDatas.Length < startIndex + srcSceneSet.lightMapData.Length) return;
        var datas = LightmapDatas(srcSceneSet);
        for (int i = 0 ; i < datas.Length ; i++)
        {
            lmDatas[startIndex + i] = datas[i];
        }
        LightmapSettings.lightmaps = lmDatas;
    }

    public static void SwitchSceneLit(
        SceneDataLitAsset dstScene,
        SceneDataLitAsset srcScene,
        SceneAssetSet srcSceneSet
        )
    {
        if (dstScene == null
            || srcScene == null
            || srcSceneSet == null) return;

        System.Diagnostics.Stopwatch sw = new System.Diagnostics.Stopwatch();
        sw.Start();
        //find node in scene

        var sceneName = GetSceneNameFromAsset(dstScene);
        var sceneRoot = FindSceneRoot(sceneName);
        if (sceneRoot == null || srcSceneSet.sceneRoot == null) return;

        //setup litmpa data
        SetupLitmap(dstScene, srcScene, srcSceneSet);

        //Setup Materials 
        Transform envRoot = sceneRoot.transform.Find(SceneDataAsset.EnvRootName);
        if (envRoot != null)
        {
            var srcEnvRoot = srcSceneSet.sceneRoot.transform.Find(SceneDataAsset.EnvRootName);
            CloneEnvRootInfo(srcEnvRoot, envRoot);
        }

        //Setup Lit and Shadows
        Transform sunRoot = sceneRoot.transform.Find(SceneDataAsset.SunRootName);
        if (sunRoot != null)
        {
            var srcSunRoot = srcSceneSet.sceneRoot.transform.Find(SceneDataAsset.SunRootName);
            CloneLitInfo(srcSunRoot, sunRoot,srcSceneSet);
        }
        QualitySetting.GraphicQualityConfigManager.Instance.ApplyPostProcessingConfig();

        Shader.SetGlobalFloat("_FogStrengthYStart", srcScene.fogHeight);
        Shader.SetGlobalFloat("_FogStrengthYParam", srcScene.fogTransition);
        Shader.SetGlobalFloat("_windStr", srcScene.windStrength);
        ApplyRenderSetting(srcScene, srcSceneSet);
        if (srcScene.charEnvColor.maxColorComponent > 0f)
        {
            Shader.EnableKeyword(SceneDataAsset.CharEnvLitKeyword);
            Shader.SetGlobalColor(SceneDataAsset.charEnvColorPropId, srcScene.charEnvColor);
        } else
        {
            Shader.DisableKeyword(SceneDataAsset.CharEnvLitKeyword);
        }
        sw.Stop();
        Debug.Log("use time:" + sw.ElapsedMilliseconds);
    }

}
