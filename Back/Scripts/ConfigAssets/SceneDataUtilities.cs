using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.Rendering.PostProcessing;
using UnityEngine.SceneManagement;
using Cinemachine;
using XLua;
using System.IO;
using XFrameEffect;

[XLua.LuaCallCSharp]
[ReflectionUse]
public partial class SceneDataUtilities
{
    public const string MAIN_CAM_TAG = "GameMain";
    public const string SCENE_NODE_SURFIX = "[SCENE_NODE]";


    static Transform LSRoot = null;

    static GameObject curShdowPorjector = null;
    static GameObject curShdowReceiver = null;
    static Camera mainCam;
    static int camMask = 0x40000F17;
    static Cinemachine.CinemachineBrain camBrain;
    static List<string> loadedScenes = new List<string>();

    public static void FindMainCamera()
    {
        GameObject mainCamGo = null;
        if (Camera.main != null)
        {
            mainCamGo = Camera.main.gameObject;
        } else
        {
            //for (int i = 0 ; i < Camera.allCameras.Length ; i++)
            //{
            //    var cam = Camera.allCameras[i];
            //    if (cam != null && cam.gameObject.CompareTag(MAIN_CAM_TAG))
            //    {
            //        mainCamGo = cam.gameObject;
            //        break;
            //    }
            //}
            mainCamGo = GameObject.FindGameObjectWithTag(MAIN_CAM_TAG);

            if (mainCamGo == null)
            {
                mainCamGo = new GameObject("Main Camera");
                mainCamGo.AddComponent<Camera>();
                mainCamGo.tag = MAIN_CAM_TAG;
            }
        }
        mainCam = mainCamGo.GetComponent<Camera>();
        camBrain = mainCamGo.GetComponent<Cinemachine.CinemachineBrain>();
        if (camBrain == null)
        {
            camBrain = mainCamGo.AddComponent<Cinemachine.CinemachineBrain>();
        }
    }

    public static Camera MainCam
    {
        get
        {
            if (mainCam == null)
                FindMainCamera();
            return mainCam;
        }
    }

    public static Vector3 RootPos( int index )
    {
        if (index < 1) return Vector3.zero;
        int sign = (index % 2 == 0) ? 1 : -1;
        int posX = (index - 1) / 2 + 1;

        //int posZ = index / 2 ;
        return new Vector3(200f * posX * sign, 0f, 0f);
    }

    public static Vector3 GetScenePosOffset( string name )
    {
        var index = GetSceneIndex(name);
        if (index < 0) return Vector3.zero;
        else return RootPos(index);
    }

    public static int GetSceneIndex( string name )
    {
        if (string.IsNullOrEmpty(name) || loadedScenes == null || loadedScenes.Count < 1) return -1;

        if(name.EndsWith(sceneAssetSurfix))
        {
            int surfixIndex = name.IndexOf(sceneAssetSurfix);
            name = name.Substring(0, surfixIndex);
        }
        var index = loadedScenes.IndexOf(name);
        return index;
    }

    static string GetSceneNameFromAsset( SceneDataLitAsset asset )
    {
        if (asset == null) return "";
        return GetSceneNameFromAsset(asset.name);
    }

    static string GetSceneNameFromAsset( SceneDataAsset asset )
    {
        if (asset == null) return "";
        return GetSceneNameFromAsset(asset.name);
    }
    const string sceneAssetSurfix = "_sceneData";
    static string GetSceneNameFromAsset( string assetName )
    {
        if (string.IsNullOrEmpty(assetName)) return string.Empty;
        int index = assetName.IndexOf(sceneAssetSurfix);
        if (index < 0) return string.Empty;
        return assetName.Substring(0, index);
    }


    public static void GeneratScene( SceneDataLitAsset asset, SceneAssetSet assetSet, bool addition = false )
    {
        if (asset == null || assetSet == null) return;

        Transform envRoot = null;
        Transform sunRoot = null;
        // curShdowPorjector = null;
        #region Instantiate Scene Root      
        var sceneName = GetSceneNameFromAsset(asset);
        if (!addition)
        {
            FindMainCamera();
            //if (mainCam != null)
            //{
            //    var postLayer = mainCam.GetComponent<PostProcessLayer>();
            //    if (postLayer != null)
            //    {
            //        postLayer.volumeLayer = LayerMask.GetMask("PostProcessingEffect");
            //        postLayer.antialiasingMode = PostProcessLayer.Antialiasing.None;
            //    } else
            //    {
            //        var postres = Resources.Load<PostProcessResources>("RuntimePostProcessResources");
            //        if (postres != null)
            //        {
            //            postLayer = mainCam.gameObject.AddComponent<PostProcessLayer>();
            //            postLayer.Init(postres);
            //        }
            //    }
            //}
            if (loadedScenes == null)
            {
                loadedScenes = new List<string>();
            } else
            {
                loadedScenes.Clear();
            }
            loadedScenes.Add(sceneName);

        } else
        {
            if (!loadedScenes.Contains(sceneName))
                loadedScenes.Add(sceneName);
            else
            {
                Debug.LogWarningFormat("Scene [{0}] Has Loaded!!!", sceneName);
                //yield break;
            }
        }

        int sceneIndex = loadedScenes.Count - 1;

        //yield return null;
        GameObject sceneCamFxRoot = null;
        if (!addition && assetSet.camFxRoot != null && mainCam != null)
        {
            sceneCamFxRoot = GameObject.Instantiate(assetSet.camFxRoot);
            if (sceneCamFxRoot != null)
            {
                sceneCamFxRoot.name = assetSet.camFxRoot.name + SCENE_NODE_SURFIX;
                sceneCamFxRoot.transform.SetParent(mainCam.transform);
                sceneCamFxRoot.transform.localPosition = Vector3.zero;
                sceneCamFxRoot.transform.localRotation = Quaternion.identity;
                sceneCamFxRoot.transform.localScale = Vector3.one;
            }
        }

        //yield return null;


        Vector3 scenePos = RootPos(sceneIndex);

        GameObject sceneRoot = null;
        if (assetSet.sceneRoot != null)
        {
            sceneRoot = GameObject.Instantiate(assetSet.sceneRoot);
            sceneRoot.name = assetSet.sceneRoot.name + SCENE_NODE_SURFIX;
            sceneRoot.transform.position = scenePos;
        }
        //yield return null;
        GameObject sceneFxRoot = null;
        if (assetSet.sceneFxRoot != null)
        {
            sceneFxRoot = GameObject.Instantiate(assetSet.sceneFxRoot);
            sceneFxRoot.name = assetSet.sceneFxRoot.name + SCENE_NODE_SURFIX;
            sceneFxRoot.transform.position = scenePos;
        }

        envRoot = sceneRoot.transform.Find(SceneDataAsset.EnvRootName);
        sunRoot = sceneRoot.transform.Find(SceneDataAsset.SunRootName);
        #endregion
        int lightmapIndexOffset = 0;
        if (assetSet.lightMapData != null && assetSet.lightMapData.Length > 0)
        {
            if (addition)
            {
                List<LightmapData> oldData = new List<LightmapData>(LightmapSettings.lightmaps);
                lightmapIndexOffset = oldData.Count;
                oldData.AddRange(LightmapDatas(assetSet));
                LightmapSettings.lightmaps = oldData.ToArray();
            } else
            {
                LightmapSettings.lightmaps = LightmapDatas(assetSet);
            }
        }

        //yield return null;
        List<GameObject>[] batchGroups = null;
        if (envRoot != null && asset.rendererLightMapDatas != null && asset.rendererLightMapDatas.Length > 0)
        {
            MeshRenderer[] mrs = envRoot.GetComponentsInChildren<MeshRenderer>(true);
            if (mrs != null && mrs.Length > 0)
            {
                int count = Mathf.Min(mrs.Length, asset.rendererLightMapDatas.Length);

                int[] groupGoCursor = null;
                if (asset.batchGroups != null && asset.batchGroups.Length > 0)
                {
                    var length = asset.batchGroups.Length;
                    groupGoCursor = new int[length];
                    batchGroups = new List<GameObject>[length];
                    for (int i = 0 ; i < length ; i++)
                    {
                        if (asset.batchGroups[i].transIndex != null && asset.batchGroups[i].transIndex.Length > 0)
                        {
                            groupGoCursor[i] = 0;
                            batchGroups[i] = new List<GameObject>();
                        } else
                        {
                            groupGoCursor[i] = -1;
                        }
                    }
                }


                for (int i = 0 ; i < count ; i++)
                {
                    var mr = mrs[i];
                    mr.gameObject.isStatic = true;
                    if (asset.rendererLightMapDatas[i].lightMapIndex >= 0)
                    {
                        mr.lightmapScaleOffset = asset.rendererLightMapDatas[i].lightMapOffset;
                        mr.lightmapIndex = asset.rendererLightMapDatas[i].lightMapIndex + lightmapIndexOffset;
                    } else
                    {
                        mr.lightmapIndex = -1;
                    }

#if UNITY_EDITOR
                    if (mr.lightmapIndex < 0)
                    {
                        Debug.LogWarning("lightmap data error!" + mr.name);
                    }
#endif
                    //set batchGroup gameobjects
                    if (batchGroups != null && batchGroups.Length > 0)
                    {
                        int groupIndex = -1;
                        int groupCount = batchGroups.Length;
                        for (int j = 0 ; j < groupCount ; j++)
                        {
                            var cursor = groupGoCursor[j];
                            if (cursor < 0) continue;
                            var index = asset.batchGroups[j].transIndex[cursor];
                            if (index == i)
                            {
                                cursor++;
                                if (cursor >= asset.batchGroups[j].transIndex.Length)
                                {
                                    cursor = -1;
                                }
                                groupGoCursor[j] = cursor;
                                groupIndex = j;
                                break;
                            }
                        }
                        if (groupIndex >= 0)
                        {
                            batchGroups[groupIndex].Add(mr.gameObject);
                        }
                    }

                    //if (i % 20 == 0)
                    {
                        //yield return null;
                    }
                }
            } else
            {
                Debug.LogError("cannot find MeshRenderers");
            }
        } else
        {
            Debug.LogError("No Renderer Lightmap datas");
        }


        //yield return null;

        if( sunRoot != null)
        {
            var lits = sunRoot.GetComponentsInChildren<Light>();
            var maskvalue = 1<<LayerMask.NameToLayer("Ground");
            foreach (var lit in lits)
            {
                if (!lit.gameObject.activeInHierarchy || !lit.enabled) continue;
                if (( lit.cullingMask & maskvalue) != 0)
                {
                    var boutput = lit.bakingOutput;
                    boutput.isBaked = true;
                    boutput.lightmapBakeType = LightmapBakeType.Mixed;
                    boutput.mixedLightingMode = MixedLightingMode.Shadowmask;
                    lit.bakingOutput = boutput;                   
                }
                //lit.lightmapBakeType = LightmapBakeType.Realtime;
                lit.shadows = LightShadows.None;
            }
        }

        //set reflection prop
        if (sunRoot != null && assetSet.reflectInfos != null && assetSet.reflectInfos.Length > 0)
        {
            var refls = sunRoot.GetComponentsInChildren<ReflectionProbe>();
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
        //#if UNITY_EDITOR
        //        #region Debug logic -  Check Lightmap
        //        yield return null;
        //        var curLMData = LightmapSettings.lightmaps;
        //        if (curLMData != null || curLMData.Length > 0)
        //        {
        //            for (int i = 0 ; i < curLMData.Length ; i++)
        //            {
        //                LightmapData data = (LightmapData)curLMData[i];
        //                if (data != null)
        //                {
        //                    //Debug.LogFormat("LightMap Info: {0} || {1} || {2}",
        //                    //    (data.lightmapColor == null) ? "null" : data.lightmapColor.name,
        //                    //    (data.lightmapDir == null) ? "null" : data.lightmapDir.name,
        //                    //    (data.shadowMask == null) ? "null" : data.shadowMask.name
        //                    //    );
        //                } else
        //                {
        //                    Debug.LogError("LightMap is NULL : index" + i);
        //                }
        //            }
        //        } else
        //        {
        //            Debug.LogError("No Lightmap Texture");
        //        }
        //        #endregion
        //#endif

        if (batchGroups != null && batchGroups.Length > 0)
        {
            var batchRoot = new GameObject("[batch_root]").transform;
            batchRoot.SetParent(envRoot);
            batchRoot.localPosition = Vector3.zero;
            batchRoot.localRotation = Quaternion.identity;
            batchRoot.localScale = Vector3.one;
            for (int i = 0 ; i < batchGroups.Length ; i++)
            {
                if (batchGroups[i] == null || batchGroups[i].Count < 1) continue;
                var batchNode = new GameObject(string.Format("[group_{0}]", i)).transform;
                batchNode.SetParent(batchRoot);
                batchNode.localPosition = Vector3.zero;
                batchNode.localRotation = Quaternion.identity;
                batchNode.localScale = Vector3.one;
                StaticBatchingUtility.Combine(batchGroups[i].ToArray(), batchNode.gameObject);
                //yield return null;
            }
        } else
        {
            if (envRoot != null)
            {
                for (int i = 0 ; i < envRoot.childCount ; i++)
                {
                    var child = envRoot.GetChild(i);
                    if (child.name == SceneDataAsset.DynamicRootName) continue;
                    StaticBatchingUtility.Combine(child.gameObject);
                    //yield return null;
                }
            }
        }

        //yield return null;
        //hide all node wait for active

        if (sceneRoot != null)
        {
            sceneRoot.SetActive(false);
        }
        if (sceneFxRoot != null)
        {
            sceneFxRoot.SetActive(false);
        }
        if (sceneCamFxRoot != null)
        {
            sceneCamFxRoot.SetActive(false);
        }

    }

    public static void CleanSceneNode( SceneDataLitAsset asset )
    {
        if (asset == null) return;

        var curScene = SceneManager.GetActiveScene();
        if (curScene.rootCount < 1) return;
        var rootGos = curScene.GetRootGameObjects();
        var sceneName = GetSceneNameFromAsset(asset);

        for (int i = 0 ; i < rootGos.Length ; i++)
        {
            var go = rootGos[i];
            if (go != null && go.name.EndsWith(SCENE_NODE_SURFIX))
            {
                if (go.name.StartsWith(sceneName))
                {
                    GameObject.Destroy(go);
                }
            }
        }


        if (mainCam != null)
        {
            if (mainCam.transform.childCount > 0)
            {
                for (int i = 0 ; i < mainCam.transform.childCount ; i++)
                {
                    var childTrans = mainCam.transform.GetChild(i);
                    if (childTrans != null
                        && childTrans.name.EndsWith(SCENE_NODE_SURFIX)
                        && childTrans.name.StartsWith(sceneName))
                    {
                        GameObject.Destroy(childTrans.gameObject);
                        break;
                    }
                }
            }
        }
        loadedScenes.Remove(sceneName);

        if (loadedScenes == null || loadedScenes.Count < 1)
        {
            if (mainCam != null)
            {
                mainCam.gameObject.SetActive(false);
                mainCam = null;
            }
        }

    }

    public static int GetLoadedSceneCount()
    {
#if UNITY_EDITOR
        if (loadedScenes.Count > 0)
        {
            System.Text.StringBuilder sb = new System.Text.StringBuilder();
            foreach (var item in loadedScenes)
            {
                sb.AppendLine(item);
            }
            Debug.LogError(sb.ToString());
        }
#endif

        return loadedScenes.Count;
    }

    public static GameObject FindSceneRoot( SceneDataLitAsset asset )
    {
        if (asset == null) return null;

        var curScene = SceneManager.GetActiveScene();
        if (curScene.rootCount < 1) return null;
        var rootGos = curScene.GetRootGameObjects();


        //scene root
        GameObject ret = null;

        if (!string.IsNullOrEmpty(asset.sceneRoot))
        {
            var nodeName = Path.GetFileNameWithoutExtension(asset.sceneRoot);
            for (int i = 0 ; i < rootGos.Length ; i++)
            {
                if (rootGos[i] != null && rootGos[i].name.StartsWith(nodeName))
                {
                    ret = rootGos[i];
                    break;
                }
            }
        }
        return ret;
    }

    public static void ConfigBattleCam( CinemachineVirtualCamera vCam, Vector3 pos, Vector3 angle, float fov, Vector3 focusPos )
    {
        if (vCam == null) return;
        vCam.m_Lens.FieldOfView = fov;

        var transer = vCam.GetCinemachineComponent<CinemachineTransposer>();
        if (transer != null && vCam.Follow != null)
        {
            //Logger.Log("pos位置  " + pos.ToString() + "  focusPos   " + focusPos.ToString());        
            NoiseNode noiseNode = vCam.Follow.GetComponent<NoiseNode>();
            if (noiseNode != null)
            {
                noiseNode.SetInitPos(focusPos);
            } else
            {
                vCam.Follow.localPosition = focusPos;
            }
            var offset = vCam.Follow.parent.TransformPoint(pos);
            offset = vCam.Follow.InverseTransformPoint(offset);
            transer.m_FollowOffset = offset;
        } else
        {
            vCam.transform.localPosition = pos;
        }
        vCam.transform.localEulerAngles = angle;

    }


    /// <summary>
    /// 配置场景光照和阴影
    /// </summary>
    /// <param name="asset"></param>
    /// <param name="pos"></param>
    /// <param name="rotate"></param>    
    public static void ConfigLitAndShadow(
        SceneDataLitAsset asset
        , SceneAssetSet assetSet
        , Vector3 pos
        , Vector3 rotate
        , bool hasShadow = true
        , float shadowSize = 15   )
    {
        if (asset == null || asset.sceneRoot == null) return;

        var sceneName = GetSceneNameFromAsset(asset);

        SetupSceneNode(sceneName);


        if (asset.lightMapData != null && asset.lightMapData.Length > 0)
        {
            var lmm = (LightmapsMode)asset.lightmapsMode;
            if (!QualitySetting.GraphicQualityConfigManager.Instance.DirLM)
            {
                lmm = LightmapsMode.NonDirectional;
            }
            LightmapSettings.lightmapsMode = lmm;
        } else
        {
            LightmapSettings.lightmapsMode = LightmapsMode.NonDirectional;
        }


        if (LSRoot == null)
        {
            var scene = UnityEngine.SceneManagement.SceneManager.GetActiveScene();
            var gos = scene.GetRootGameObjects();
            if (gos != null && gos.Length > 0)
            {
                foreach (var go in gos)
                {
                    if (go.name == "[LightRoot]")
                    {
                        LSRoot = go.transform;
                        break;
                    }
                }
            }
            if (LSRoot == null)
                LSRoot = new GameObject("[LightRoot]").transform;

        }
        LSRoot.position = pos;
        LSRoot.eulerAngles = rotate;
        Transform sunTrans = null;
        var lights = Light.GetLights(LightType.Directional, LayerMask.NameToLayer("Charactor"));
        for (int i = 0 ; i < lights.Length ; i++)
        {
            if (sunTrans == null
                && lights[i].gameObject.activeInHierarchy
                )
            {
                sunTrans = lights[i].transform;
                var finPos = LSRoot.localToWorldMatrix.MultiplyPoint(sunTrans.localPosition);
                var finRotate = LSRoot.localToWorldMatrix.rotation * sunTrans.localRotation;
                sunTrans.SetPositionAndRotation(finPos, finRotate);
                break;
            }
        }

        //shadow and projector
        if (sunTrans != null)
        {
            if (hasShadow)
            {
                if (curShdowPorjector == null || curShdowReceiver == null)
                {

                    SceneShadowUtilities.CreateShadowNode(LSRoot, sunTrans, out curShdowPorjector, out curShdowReceiver, shadowSize);
                    if (curShdowPorjector != null && curShdowReceiver != null)
                    {
                        curShdowPorjector.transform.SetParent(LSRoot);
                        curShdowReceiver.transform.SetParent(LSRoot);
                    }
                } else
                {
                    SceneShadowUtilities.SetupShadow(curShdowPorjector, curShdowReceiver, LSRoot, sunTrans,shadowSize);
                }

                if (curShdowPorjector != null)
                {
                    var texRenderer = curShdowPorjector.GetComponent<DynamicShadowProjector.ShadowTextureRenderer>();
                    if (texRenderer != null)
                    {
                        texRenderer.blurLevel = asset.blurLevel;
                        texRenderer.blurSize = asset.blurSize;
                        texRenderer.shadowColor = asset.shadowColor;
                    }
                }

                if (curShdowPorjector != null && !curShdowPorjector.activeSelf) curShdowPorjector.SetActive(true);
                if (curShdowReceiver != null && !curShdowReceiver.activeSelf) curShdowReceiver.SetActive(true);
            } else
            {
                if (curShdowPorjector != null && curShdowPorjector.activeSelf) curShdowPorjector.SetActive(false);
                if (curShdowReceiver != null && curShdowReceiver.activeSelf) curShdowReceiver.SetActive(false);
            }            
        }

        //light global params
        //set Enviornment param for Shader
        Shader.SetGlobalFloat("_FogStrengthYStart", asset.fogHeight);
        Shader.SetGlobalFloat("_FogStrengthYParam", asset.fogTransition);
        Shader.SetGlobalFloat("_windStr", asset.windStrength);

        ApplyRenderSetting(asset, assetSet);

        //set postprocessing
        QualitySetting.GraphicQualityConfigManager.Instance.ApplyPostProcessingConfig();

       


        if (asset.charEnvColor.maxColorComponent > 0f)
        {
            Shader.EnableKeyword(SceneDataAsset.CharEnvLitKeyword);
            Shader.SetGlobalColor(SceneDataAsset.charEnvColorPropId, asset.charEnvColor);
        } else
        {
            Shader.DisableKeyword(SceneDataAsset.CharEnvLitKeyword);
        }

    }

    public static void SetupSceneNode(string sceneName )
    {
        Scene curScene = SceneManager.GetActiveScene();
        List<GameObject> rootGos = new List<GameObject>();
        curScene.GetRootGameObjects(rootGos);

        foreach (var go in rootGos)
        {
            //if (go.name.StartsWith(asset.sceneRoot.name))
            //{
            //    sceneRoot = go;
            //    break;
            //}

            if (go.name.EndsWith(SCENE_NODE_SURFIX))
            {
                var isSceneNode = go.name.StartsWith(sceneName);
                if (go.activeInHierarchy != isSceneNode)
                {
                    go.SetActive(isSceneNode);
                }
            }
        }

        if (mainCam == null)
            FindMainCamera();
        if (mainCam != null)
        {
            for (int i = 0 ; i < mainCam.transform.childCount ; i++)
            {
                var node = mainCam.transform.GetChild(i);
                if (node.name.EndsWith(SCENE_NODE_SURFIX))
                {
                    var isSceneNode = node.name.StartsWith(sceneName);
                    if (node.gameObject.activeInHierarchy != isSceneNode)
                    {
                        node.gameObject.SetActive(isSceneNode);
                    }
                }
            }
        }
    }


    public static void SetFogBlend( SceneDataLitAsset asset, float blend )
    {
        if (asset == null) return;
        BlendFogSetting(asset, blend);
    }

    public static void TriggerBlockCompont()
    {
        if (mainCam == null) return;
        //set camera
        var blockCompont = mainCam.GetComponent<CameraBlockTest>();
        if (blockCompont != null)
        {
            blockCompont.SetBattleCenter(LSRoot);
        }
    }



    public static void ApplyRenderSetting( SceneDataLitAsset asset, SceneAssetSet assetSet )
    {
        RenderSettings.fog = asset.fogEnable;
        RenderSettings.fogColor = asset.fogColor;
        RenderSettings.fogStartDistance = asset.fogStart;
        RenderSettings.fogEndDistance = asset.fogEnd;
        RenderSettings.fogDensity = asset.fogDensity;
        RenderSettings.fogMode = (FogMode)asset.fogMode;
        RenderSettings.ambientMode = UnityEngine.Rendering.AmbientMode.Flat;
        RenderSettings.ambientLight = asset.ambientColor;
        RenderSettings.skybox = assetSet.skyMat;
        LightmapSettings.lightProbes = assetSet.lpData;
    }


    public static void BlendFogSetting( SceneDataLitAsset asset, float blend )
    {
        if (!RenderSettings.fog)
        {
            RenderSettings.fog = asset.fogEnable;
        }
        if (RenderSettings.fogMode != (FogMode)asset.fogMode)
        {
            RenderSettings.fogMode = (FogMode)asset.fogMode;
        }

        RenderSettings.fogColor = Color.Lerp(asset.fogColor, asset.secondFogColor, blend);
        RenderSettings.fogStartDistance = Mathf.Lerp(asset.fogStart, asset.secondFogStart, blend);
        RenderSettings.fogEndDistance = Mathf.Lerp(asset.fogEnd, asset.secondFogEnd, blend);
        RenderSettings.fogDensity = Mathf.Lerp(asset.fogDensity, asset.secondFogDensity, blend);

    }

    public static LightmapData[] LightmapDatas( SceneAssetSet assetSet )
    {

        if (assetSet.lightMapData != null && assetSet.lightMapData.Length < 1) return null;
        LightmapData[] ret = new LightmapData[assetSet.lightMapData.Length];
        for (int i = 0 ; i < ret.Length ; i++)
        {
            ret[i] = new LightmapData();
            ret[i].lightmapColor = assetSet.lightMapData[i].light;
            ret[i].lightmapDir = assetSet.lightMapData[i].dir;
            ret[i].shadowMask = assetSet.lightMapData[i].shadow;
        }
        return ret;

    }

    public static void ConfigCameraStyle( bool ChangeScene )
    {
        if(camBrain == null)
        {
            Logger.Log("剧情camBrain为空");
            return;
        }
        if (ChangeScene)
        {
            camBrain.m_DefaultBlend.m_Style = CinemachineBlendDefinition.Style.Cut;
        } else
        {
            camBrain.m_DefaultBlend.m_Style = CinemachineBlendDefinition.Style.EaseInOut;
        }
    }
    public static void setMainCameraPos()
    {
        mainCam.transform.localPosition = new Vector3(-17.1f, 6.7f, 7.75f);
        mainCam.transform.localEulerAngles = new Vector3(18.4f, 114.2f, 0);
        mainCam.fieldOfView = 30;
        mainCam.farClipPlane = 1000;
    }

    public static void ConfigMainCamera(bool needXFrame)
    {
        if (camBrain == null)
            FindMainCamera();

        var cam = camBrain.OutputCamera;
        cam.allowMSAA = false;
        
        cam.allowHDR = QualitySetting.GraphicQualityConfigManager.Instance.SupportHDR();
        cam.useOcclusionCulling = false;

        if(needXFrame)
        {
            if (XFrameManager.instance != null) return;
            camBrain.gameObject.AddComponent<XFrameManager>();
            SettingXFrameFPS();
        }

    }

    public static void ToggleFPS( bool forceOpen = false )
    {
        if (XFrameManager.instance == null) return;
        XFrameManager.instance.showFPS = forceOpen ? true : !XFrameManager.instance.showFPS;
        if (XFrameManager.instance.showFPS)
            XFrameManager.instance.fpsColor = Color.red;
    }

    public static void SettingXFrameFPS( int fps = 25 )
    {
        if (XFrameManager.instance == null) return;
        XFrameManager.instance.method = XFRAME_DOWNSAMPLING_METHOD.QuadDownsampling;
        XFrameManager.instance.targetFPS = fps;
        XFrameManager.instance.fpsFontSize = Screen.width / 40;
    }

    public static void SettingXFrameParam( float quality )
    {
        if (XFrameManager.instance == null) return;
        if (quality >= 1f)
        {
            XFrameManager.instance.enabled = false;
        } else
        {
            if (!XFrameManager.instance.isActiveAndEnabled)
            {
                XFrameManager.instance.enabled = true;
            }
            XFrameManager.instance.downsampling = quality;
            XFrameManager.instance.staticCameraDownsampling = quality;
        }

    }

    public static void SetXFrameAntialiasing( int level )
    {
        if (XFrameManager.instance == null) return;
        XFrameManager.instance.antialias = level;
    }


    public static void StartLoading( bool hideCam )
    {
        if (hideCam)
        {
            if (mainCam == null)
                FindMainCamera();
            if (mainCam != null)
            {
                camMask = mainCam.cullingMask;
                mainCam.cullingMask = 0;
            }
        }
        QualitySettings.asyncUploadTimeSlice = 8;
    }

    public static void EndLoading()
    {
        if (mainCam == null)
            FindMainCamera();
        if (mainCam != null)
        {
            mainCam.cullingMask = camMask;
        }
        QualitySettings.asyncUploadTimeSlice = 4;
    }


    #region 测试代码
#if UNITY_EDITOR && TEST_LOAD_SCENE

    //测试接口,Lua中不要直接调用
    public static IEnumerator GeneratScene_Test( SceneDataAsset asset, bool addition = false )
    {
        //if (!addition)
        //{
        //    if (LSRoot != null)
        //    {
        //        GameObject.Destroy(LSRoot.gameObject);
        //        LSRoot = null;
        //        curShdowPorjector = null;
        //        curShdowReceiver = null;
        //    }
        //}
        if (asset == null) yield break;
        Transform envRoot = null;
        Transform sunRoot = null;
        curShdowPorjector = null;
    #region Instantiate Scene Root      
        var sceneName = GetSceneNameFromAsset(asset);
        if (!addition)
        {
            FindMainCamera();
            if (mainCam != null)
            {
                var postLayer = mainCam.GetComponent<PostProcessLayer>();
                if (postLayer != null)
                {
                    postLayer.volumeLayer = LayerMask.GetMask("PostProcessingEffect");
                    postLayer.antialiasingMode = (PostProcessLayer.Antialiasing)(asset.PostprocessAnti_aliasingMode);
                }
        //#if UNITY_EDITOR
        else
                {
                    //Debug.LogError("No PostProcessLayer!!!!");
                    var postres = Resources.Load<PostProcessResources>("RuntimePostProcessResources");
                    if (postres != null)
                    {
                        postLayer = mainCam.gameObject.AddComponent<PostProcessLayer>();
                        postLayer.Init(postres);
                    }
                }
                //#endif

            }
            if (loadedScenes == null)
            {
                loadedScenes = new List<string>();
            } else
            {
                loadedScenes.Clear();
            }
            loadedScenes.Add(sceneName);

        } else
        {
            if (!loadedScenes.Contains(sceneName))
                loadedScenes.Add(sceneName);
            else
            {
                Debug.LogWarningFormat("Scene [{0}] Has Loaded!!!", sceneName);
                yield break;
            }
        }

        int sceneIndex = loadedScenes.Count - 1;

        yield return null;
        GameObject sceneCamFxRoot = null;
        if (!addition && asset.camFxRoot != null && mainCam != null)
        {
            sceneCamFxRoot = GameObject.Instantiate(asset.camFxRoot);
            if (sceneCamFxRoot != null)
            {
                sceneCamFxRoot.name = asset.camFxRoot.name + SCENE_NODE_SURFIX;
                sceneCamFxRoot.transform.SetParent(mainCam.transform);
                sceneCamFxRoot.transform.localPosition = Vector3.zero;
                sceneCamFxRoot.transform.localRotation = Quaternion.identity;
                sceneCamFxRoot.transform.localScale = Vector3.one;
            }
        }

        yield return null;


        Vector3 scenePos = RootPos(sceneIndex);

        GameObject sceneRoot = null;
        if (asset.sceneRoot != null)
        {
            sceneRoot = GameObject.Instantiate(asset.sceneRoot);
            sceneRoot.name = asset.sceneRoot.name + SCENE_NODE_SURFIX;
            sceneRoot.transform.position = scenePos;
        }
        yield return null;
        GameObject sceneFxRoot = null;
        if (asset.sceneFxRoot != null)
        {
            sceneFxRoot = GameObject.Instantiate(asset.sceneFxRoot);
            sceneFxRoot.name = asset.sceneFxRoot.name + SCENE_NODE_SURFIX;
            sceneFxRoot.transform.position = scenePos;
        }

        envRoot = sceneRoot.transform.Find(SceneDataAsset.EnvRootName);
        sunRoot = sceneRoot.transform.Find(SceneDataAsset.SunRootName);
    #endregion
        int lightmapIndexOffset = 0;
        if (asset.lightMapData != null && asset.lightMapData.Length > 0)
        {
            if (addition)
            {
                List<LightmapData> oldData = new List<LightmapData>(LightmapSettings.lightmaps);
                lightmapIndexOffset = oldData.Count;
                oldData.AddRange(asset.LightmapDatas);
                LightmapSettings.lightmaps = oldData.ToArray();
            } else
            {
                LightmapSettings.lightmaps = asset.LightmapDatas;
            }
        } else
        {
            // Debug.LogError("No Lightmap Texture");
        }
        yield return null;

        List<GameObject>[] batchGroups = null;
        if (envRoot != null && asset.rendererLightMapDatas != null && asset.rendererLightMapDatas.Length > 0)
        {
            MeshRenderer[] mrs = envRoot.GetComponentsInChildren<MeshRenderer>(true);
            if (mrs != null && mrs.Length > 0)
            {
                int count = mrs.Length;

                int[] groupGoCursor = null;
                if (asset.batchGroups != null && asset.batchGroups.Length > 0)
                {
                    var length = asset.batchGroups.Length;
                    groupGoCursor = new int[length];
                    batchGroups = new List<GameObject>[length];
                    for (int i = 0 ; i < length ; i++)
                    {
                        if (asset.batchGroups[i].transIndex != null && asset.batchGroups[i].transIndex.Length > 0)
                        {
                            groupGoCursor[i] = 0;
                            batchGroups[i] = new List<GameObject>();
                        } else
                        {
                            groupGoCursor[i] = -1;
                        }
                    }
                }

                for (int i = 0 ; i < count ; i++)
                {
                    var mr = mrs[i];
                    mr.gameObject.isStatic = true;
                    mr.lightmapIndex = asset.rendererLightMapDatas[i].lightMapIndex + lightmapIndexOffset;
                    mr.lightmapScaleOffset = asset.rendererLightMapDatas[i].lightMapOffset;
                    //if (layer > 0)
                    //{
                    //    // mr.gameObject.layer = goLayer;
                    //}
#if UNITY_EDITOR
                    if (mr.lightmapIndex < 0)
                    {
                        Debug.LogWarning("lightmap data error!" + mr.name);
                    }
#endif
                    //set batchGroup gameobjects
                    if (batchGroups != null && batchGroups.Length > 0)
                    {
                        int groupIndex = -1;
                        int groupCount = batchGroups.Length;
                        for (int j = 0 ; j < groupCount ; j++)
                        {
                            var cursor = groupGoCursor[j];
                            if (cursor < 0) continue;
                            var index = asset.batchGroups[j].transIndex[cursor];
                            if (index == i)
                            {
                                cursor++;
                                if (cursor >= asset.batchGroups[j].transIndex.Length)
                                {
                                    cursor = -1;
                                }
                                groupGoCursor[j] = cursor;
                                groupIndex = j;
                                break;
                            }
                        }
                        if (groupIndex >= 0)
                        {
                            batchGroups[groupIndex].Add(mr.gameObject);
                        }
                    }
                    if (i % 20 == 0)
                    {
                        yield return null;
                    }
                }
            } else
            {
                Debug.LogError("cannot find MeshRenderers");
            }
        } else
        {
            Debug.LogError("No Renderer Lightmap datas");
        }

        //set reflection prop
        if (sunRoot != null && asset.reflectInfos != null && asset.reflectInfos.Length > 0)
        {
            var refls = sunRoot.GetComponentsInChildren<ReflectionProbe>();
            foreach (var r in refls)
            {
                foreach (var info in asset.reflectInfos)
                {
                    if (info.name == r.name)
                    {
                        r.bakedTexture = info.refTex;
                        break;
                    }
                }
            }
        }
#if UNITY_EDITOR
    #region Debug logic -  Check Lightmap
        yield return null;
        var curLMData = LightmapSettings.lightmaps;
        if (curLMData != null || curLMData.Length > 0)
        {
            for (int i = 0 ; i < curLMData.Length ; i++)
            {
                LightmapData data = (LightmapData)curLMData[i];
                if (data != null)
                {
                    //Debug.LogFormat("LightMap Info: {0} || {1} || {2}",
                    //    (data.lightmapColor == null) ? "null" : data.lightmapColor.name,
                    //    (data.lightmapDir == null) ? "null" : data.lightmapDir.name,
                    //    (data.shadowMask == null) ? "null" : data.shadowMask.name
                    //    );
                } else
                {
                    Debug.LogError("LightMap is NULL : index" + i);
                }
            }
        } else
        {
            Debug.LogError("No Lightmap Texture");
        }
    #endregion
#endif

        //if (sunRoot != null)
        //{
        //    sunRoot.gameObject.SetActive(false);
        //}

        if (batchGroups != null && batchGroups.Length > 0)
        {
            var batchRoot = new GameObject("[batch_root]").transform;
            batchRoot.SetParent(envRoot);
            batchRoot.localPosition = Vector3.zero;
            batchRoot.localRotation = Quaternion.identity;
            batchRoot.localScale = Vector3.one;
            for (int i = 0 ; i < batchGroups.Length ; i++)
            {
                if (batchGroups[i] == null || batchGroups[i].Count < 1) continue;
                var batchNode = new GameObject(string.Format("[group_{0}]", i)).transform;
                batchNode.SetParent(batchRoot);
                batchNode.localPosition = Vector3.zero;
                batchNode.localRotation = Quaternion.identity;
                batchNode.localScale = Vector3.one;
                StaticBatchingUtility.Combine(batchGroups[i].ToArray(), batchNode.gameObject);
            }
        } else
        {
            if (envRoot != null)
            {
                for (int i = 0 ; i < envRoot.childCount ; i++)
                {
                    var child = envRoot.GetChild(i);
                    if (child.name == SceneDataAsset.DynamicRootName) continue;
                    StaticBatchingUtility.Combine(child.gameObject);
                    yield return null;
                }
            }
        }
       
        //hide all node wait for active
        if (sceneRoot != null)
        {
            sceneRoot.SetActive(false);
        }
        if (sceneFxRoot != null)
        {
            sceneFxRoot.SetActive(false);
        }
        if (sceneCamFxRoot != null)
        {
            sceneCamFxRoot.SetActive(false);
        }
    }


    /// <summary>
    /// 配置场景光照和阴影
    /// </summary>
    /// <param name="asset"></param>
    /// <param name="pos"></param>
    /// <param name="rotate"></param>
    public static void ConfigLitAndShadow_Test(
        SceneDataAsset asset
        , Vector3 pos
        , Vector3 rotate
        , bool hasShadow = true
        )
    {
        if (asset == null || asset.sceneRoot == null) return;

        //GameObject sceneRoot = null;
        Scene curScene = SceneManager.GetActiveScene();
        List<GameObject> rootGos = new List<GameObject>();
        curScene.GetRootGameObjects(rootGos);

        var sceneName = GetSceneNameFromAsset(asset);

        foreach (var go in rootGos)
        {

            if (go.name.EndsWith(SCENE_NODE_SURFIX))
            {
                var isSceneNode = go.name.StartsWith(sceneName);
                if (go.activeInHierarchy != isSceneNode)
                {
                    go.SetActive(isSceneNode);
                }
            }
        }

        if (mainCam == null)
            FindMainCamera();
        if (mainCam != null)
        {
            for (int i = 0 ; i < mainCam.transform.childCount ; i++)
            {
                var node = mainCam.transform.GetChild(i);
                if (node.name.EndsWith(SCENE_NODE_SURFIX))
                {
                    var isSceneNode = node.name.StartsWith(sceneName);
                    if (node.gameObject.activeInHierarchy != isSceneNode)
                    {
                        node.gameObject.SetActive(isSceneNode);
                    }
                }
            }
        }

        //if (sceneRoot == null) return;
        //foreach (var go in rootGos)
        //{
        //    bool activeNode = go == sceneRoot;
        //    var sunRoot = go.transform.Find(SceneDataAsset.SunRootName);
        //    if (sunRoot != null)
        //    {
        //        sunRoot.gameObject.SetActive(activeNode);
        //    }
        //}
        LightmapSettings.lightmapsMode = (LightmapsMode)asset.lightmapsMode;


        if (LSRoot == null)
        {
            var scene = UnityEngine.SceneManagement.SceneManager.GetActiveScene();
            var gos = scene.GetRootGameObjects();
            if (gos != null && gos.Length > 0)
            {
                foreach (var go in gos)
                {
                    if (go.name == "[LightRoot]")
                    {
                        LSRoot = go.transform;
                        break;
                    }
                }
            }
            if (LSRoot == null)
                LSRoot = new GameObject("[LightRoot]").transform;

        }
        LSRoot.position = pos;
        LSRoot.eulerAngles = rotate;
        Transform sunTrans = null;
        var lights = Light.GetLights(LightType.Directional, LayerMask.NameToLayer("Charactor"));
        for (int i = 0 ; i < lights.Length ; i++)
        {
            if (sunTrans == null
                && lights[i].gameObject.activeInHierarchy
                )
            {
                sunTrans = lights[i].transform;
                var finPos = LSRoot.localToWorldMatrix.MultiplyPoint(sunTrans.localPosition);
                var finRotate = LSRoot.localToWorldMatrix.rotation * sunTrans.localRotation;
                sunTrans.SetPositionAndRotation(finPos, finRotate);
                break;
            }
        }

        //shadow and projector
        if (sunTrans != null)
        {
            if (hasShadow)
            {
                if (curShdowPorjector == null || curShdowReceiver == null)
                {
                    SceneShadowUtilities.CreateShadowNode(LSRoot, sunTrans, out curShdowPorjector, out curShdowReceiver);
                    if (curShdowPorjector != null && curShdowReceiver != null)
                    {
                        curShdowPorjector.transform.SetParent(LSRoot);
                        curShdowReceiver.transform.SetParent(LSRoot);
                    }
                } else
                {
                    SceneShadowUtilities.SetupShadow(curShdowPorjector, curShdowReceiver, LSRoot, sunTrans);
                }

                if (curShdowPorjector != null)
                {
                    var texRenderer = curShdowPorjector.GetComponent<DynamicShadowProjector.ShadowTextureRenderer>();
                    if (texRenderer != null)
                    {
                        texRenderer.blurLevel = asset.blurLevel;
                        texRenderer.blurSize = asset.blurSize;
                        texRenderer.shadowColor = asset.shadowColor;
                    }
                }

                if (curShdowPorjector != null && !curShdowPorjector.activeSelf) curShdowPorjector.SetActive(true);
                if (curShdowReceiver != null && !curShdowReceiver.activeSelf) curShdowReceiver.SetActive(true);
            } else
            {
                if (curShdowPorjector != null && curShdowPorjector.activeSelf) curShdowPorjector.SetActive(false);
                if (curShdowReceiver != null && curShdowReceiver.activeSelf) curShdowReceiver.SetActive(false);
            }
        }

        //light global params
        //set Enviornment param for Shader
        Shader.SetGlobalFloat("_FogStrengthYStart", asset.fogHeight);
        Shader.SetGlobalFloat("_FogStrengthYParam", asset.fogTransition);
        Shader.SetGlobalFloat("_windStr", asset.windStrength);

        asset.ApplyRenderSetting();

    }


    public static void CleanSceneNode_Test( SceneDataAsset asset )
    {
        if (asset == null) return;

        var curScene = SceneManager.GetActiveScene();
        if (curScene.rootCount < 1) return;
        var rootGos = curScene.GetRootGameObjects();
        var sceneName = GetSceneNameFromAsset(asset);

        for (int i = 0 ; i < rootGos.Length ; i++)
        {
            var go = rootGos[i];
            if (go != null && go.name.EndsWith(SCENE_NODE_SURFIX))
            {
                if (go.name.StartsWith(sceneName))
                {
                    GameObject.Destroy(go);
                }
            }
        }


        if (mainCam != null)
        {
            if (mainCam.transform.childCount > 0)
            {
                for (int i = 0 ; i < mainCam.transform.childCount ; i++)
                {
                    var childTrans = mainCam.transform.GetChild(i);
                    if (childTrans != null
                        && childTrans.name.EndsWith(SCENE_NODE_SURFIX)
                        && childTrans.name.StartsWith(sceneName))
                    {
                        GameObject.Destroy(childTrans.gameObject);
                        break;
                    }
                }
            }
        }
        loadedScenes.Remove(sceneName);

        if (loadedScenes == null || loadedScenes.Count < 1)
        {
            if (mainCam != null)
            {
                mainCam.gameObject.SetActive(false);
                mainCam = null;
            }
        }

    }
#endif

    #endregion



}
