using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.Rendering.PostProcessing;
using XLua;

namespace QualitySetting
{
    [System.Serializable]
    public struct GraphicQualityConfig
    {
        [Header("场景参数")]
        [SerializeField] public bool enableEnvRealtimeLit;//= true;
        [SerializeField] public bool enableRealtimeShadow;//= true;
        [SerializeField] public bool enableLightmap_Dir;//= true;
        [SerializeField] public bool enableSceneEffect;//= true;

        [Header("PostProcessing")]
        [SerializeField] public bool enablePostProcessing;// = true;
        [SerializeField] public bool enableBloom;// = true;
        [SerializeField] public int AAType;// = true;
        [SerializeField] public bool enableLUT;

        [Header("Shader")]
        [SerializeField] public bool enableOutline;//= true;
        [SerializeField] public int shaderLOD;//= 500;
        [SerializeField] public bool enableAO;//= true;
        [SerializeField] public bool enableNormal;//= true;

        [Header("HDR")]
        [SerializeField] public bool useHDR;

        public void Reset()
        {
            enableEnvRealtimeLit = true;
            enableRealtimeShadow = true;
            enableLightmap_Dir = true;
            enableSceneEffect = true;
            enablePostProcessing = true;
            enableBloom = true;
            AAType = 0;
            enableLUT = true;
            enableOutline = true;
            shaderLOD = 500;
            enableAO = true;
            enableNormal = true;
            useHDR = true;
        }

    }
    [LuaCallCSharp]
    public sealed class GraphicQualityConfigManager : MonoSingleton<GraphicQualityConfigManager>
    {
        [SerializeField]
        private GraphicQualityConfig config;

        private bool isDirty = false;

        private const string SAVE_KEY = "ZHJ_USEER_SETTING";

        //场景参数       
        public bool Shadow
        {
            set
            {
                if (config.enableRealtimeShadow != value)
                {
                    //isDirty = true;
                    config.enableRealtimeShadow = value;
                }
            }
            get
            {
                return config.enableRealtimeShadow;
            }
        }
        public bool SceneEffect
        {
            set
            {
                if (config.enableSceneEffect != value)
                {
                    //isDirty = true;
                    config.enableSceneEffect = value;
                }
            }
            get
            {
                return config.enableSceneEffect;
            }
        }
        public bool DirLM
        {
            set
            {
                if (config.enableLightmap_Dir != value)
                {
                    //isDirty = true;
                    config.enableLightmap_Dir = value;
                }
            }
            get
            {
                return config.enableLightmap_Dir;
            }
        }
        //postprocess
        public bool PostProcessing
        {
            set
            {
                if (config.enablePostProcessing != value)
                {
                    isDirty = true;
                    config.enablePostProcessing = value;
                }
            }
            get
            {
                return config.enablePostProcessing;
            }
        }
        public bool Bloom
        {
            set
            {
                if (config.enableBloom != value)
                {
                    isDirty = true;
                    config.enableBloom = value;
                }
            }
            get
            {
                return config.enableBloom;
            }
        }
        public bool LUT
        {
            set
            {
                if (config.enableLUT != value)
                {
                    isDirty = true;
                    config.enableLUT = value;
                }
            }
            get
            {
                return config.enableLUT;
            }
        }

        public int AAType
        {
            set
            {
                if (config.AAType != value)
                {
                    isDirty = true;
                    config.AAType = value;
                }
            }
            get
            {
                return config.AAType;
            }
        }
        //shader
        public bool Outline
        {
            set
            {
                if (config.enableOutline != value)
                {
                    isDirty = true;
                    config.enableOutline = value;
                }
            }
            get
            {
                return config.enableOutline;
            }
        }
        public int LOD
        {
            set
            {
                if (config.shaderLOD != value)
                {
                    isDirty = true;
                    config.shaderLOD = value;
                }
            }
            get
            {
                return config.shaderLOD;
            }
        }
        public bool AOMap
        {
            set
            {
                if (config.enableAO != value)
                {
                    isDirty = true;
                    config.enableAO = value;
                }
            }
            get
            {
                return config.enableAO;
            }
        }
        public bool NormalMap
        {
            set
            {
                if (config.enableNormal != value)
                {
                    isDirty = true;
                    config.enableNormal = value;
                }
            }
            get
            {
                return config.enableNormal;
            }
        }

        public bool RTLit
        {
            set
            {
                if (config.enableEnvRealtimeLit != value)
                {
                    isDirty = true;
                    config.enableEnvRealtimeLit = value;
                }
            }
            get
            {
                return config.enableEnvRealtimeLit;
            }
        }

        public bool HDR
        {
            set
            {
                if (config.useHDR != value)
                {
                    isDirty = true;
                    config.useHDR = value;
                }
            }
            get
            {
                return config.useHDR;
            }
        }

        protected override void Init()
        {
            base.Init();
            SetDirty();
            RevertConfigData();
            ApplyConfig();
        }

        //utilities
        public void SetConfigData( GraphicQualityConfig _config )
        {
            config.enableEnvRealtimeLit = _config.enableEnvRealtimeLit;
            config.enableRealtimeShadow = _config.enableRealtimeShadow;
            config.enableLightmap_Dir = _config.enableLightmap_Dir;
            config.enableSceneEffect = _config.enableSceneEffect;
            config.enablePostProcessing = _config.enablePostProcessing;
            config.enableBloom = _config.enableBloom;
            config.AAType = _config.AAType;
            config.enableOutline = _config.enableOutline;
            config.shaderLOD = _config.shaderLOD;
            config.enableAO = _config.enableAO;
            config.enableNormal = _config.enableNormal;
            config.enableLUT = _config.enableLUT;
        }

        public void SaveConfigData()
        {
            var configStr = JsonUtility.ToJson(config);
            PlayerPrefs.SetString(SAVE_KEY, configStr);
        }

        public void RevertConfigData()
        {
            var configStr = PlayerPrefs.GetString(SAVE_KEY, string.Empty);
            bool revertSucceed = false;
            if (!string.IsNullOrEmpty(configStr))
            {
                try
                {
                    var savedConfig = JsonUtility.FromJson<GraphicQualityConfig>(configStr);
                    revertSucceed = true;
                    SetConfigData(savedConfig);
                } catch
                {
                }
            }

            if (!revertSucceed)
            {
                config.Reset();
            }
           
        }

        public void SetDirty()
        {
            isDirty = true;
        }

        /// <summary>
        /// 应用可以动态修改的特性
        /// </summary>
        public void ApplyConfig()
        {
            if (!isDirty) return;
            SaveConfigData();
            ApplyPostProcessingConfig();
            ApplyShaderConfig();
            isDirty = false;
            Application.targetFrameRate = 30;
            QualitySettings.vSyncCount = 0;

            if (HDR)
            {
                if (SystemInfo.SupportsRenderTextureFormat(RenderTextureFormat.RGB111110Float))
                {
                    Graphics.activeTier = UnityEngine.Rendering.GraphicsTier.Tier3;
                } else
                {
                    Graphics.activeTier = UnityEngine.Rendering.GraphicsTier.Tier2;
                }
            } else
            {
                Graphics.activeTier = UnityEngine.Rendering.GraphicsTier.Tier2;
            }
        }

        public bool SupportHDR()
        {
            return SystemInfo.SupportsRenderTextureFormat(RenderTextureFormat.RGB111110Float);
        }

        public void ApplyPostProcessingConfig()
        {
            var layer = curPPLayer;
            if (layer == null) return;
            layer.enabled = this.PostProcessing;
            if (!this.PostProcessing) return;

            switch (AAType)
            {
                case 0:
                    layer.antialiasingMode = PostProcessLayer.Antialiasing.None;
                    break;
                case 1:
                    layer.antialiasingMode = PostProcessLayer.Antialiasing.FastApproximateAntialiasing;
                    layer.fastApproximateAntialiasing.fastMode = true;
                    break;
                case 2:
                    layer.antialiasingMode = PostProcessLayer.Antialiasing.SubpixelMorphologicalAntialiasing;
                    layer.subpixelMorphologicalAntialiasing.quality = SubpixelMorphologicalAntialiasing.Quality.Medium;
                    break;
            }

            layer.fastApproximateAntialiasing.fastMode = true;

            List<PostProcessVolume> volums = new List<PostProcessVolume>();
            PostProcessManager.instance.GetActiveVolumes(layer, volums, false, false);
            if (volums.Count > 0)
            {
                foreach (var v in volums)
                {
                    var profile = v.sharedProfile;
                    if (profile == null) continue;
                    //bloom
                    Honkai3Bloom bloomSetting = null;
                    SimpleToneMap simpleTone = null;
                    if (profile.TryGetSettings<Honkai3Bloom>(out bloomSetting))
                    {
                        bloomSetting.enabled.value = this.Bloom;

                        var hasSimpleTone = profile.HasSettings<SimpleToneMap>();
                        if (this.Bloom && hasSimpleTone)
                        {
                            simpleTone = profile.GetSetting<SimpleToneMap>();
                            simpleTone.enabled.value = false;
                        } else if (!this.Bloom)
                        {
                            if (!hasSimpleTone)
                            {
                                simpleTone = profile.AddSettings<SimpleToneMap>();
                            } else
                            {
                                simpleTone = profile.GetSetting<SimpleToneMap>();
                            }
                            simpleTone.enabled.value = true;
                            simpleTone.ToneType.value = (SimpleToneMapRenderer.ToneType)bloomSetting.ToneType.value;
                        }

                        //check tonetype
                        bloomSetting.ToneType.overrideState = true;
                        if (simpleTone != null)
                        {
                            simpleTone.ToneType.overrideState = true;
                        }

                    }
                    //LUT
                    ColorGrading cGrad = null;
                    if (profile.TryGetSettings<ColorGrading>(out cGrad))
                    {
                        cGrad.enabled.value = this.LUT;
                    }
                }
            }
        }

        private void ApplyShaderConfig()
        {
            //set shadar keywords
            SetShaderKeyword("ALLOW_REALTIME_LIT", RTLit);
            SetShaderKeyword("ALLOW_AO", AOMap);
            SetShaderKeyword("ALLOW_NORMALMAP", NormalMap);

            Shader.globalMaximumLOD = LOD;
            //只用设置角色的描边,场景没有.
            var shader = Shader.Find("LJShader/Character/Cartoon_Lit");
            if (shader != null)
                shader.maximumLOD = Outline ? 500 : 300;
        }


        public PostProcessLayer curPPLayer
        {
            get
            {
                var layerCam = SceneDataUtilities.MainCam;
                PostProcessLayer curLayer =
                    (layerCam == null) ? null
                        : layerCam.gameObject.GetComponent<PostProcessLayer>();

                if (curLayer == null)
                {
                    var postres = Resources.Load<PostProcessResources>("RuntimePostProcessResources");
                    if (postres != null)
                    {
                        curLayer = layerCam.gameObject.AddComponent<PostProcessLayer>();
                        curLayer.Init(postres);
                    }
#if UNITY_EDITOR
        else
                    {
                        Debug.LogError("找不到默认PostProcess配置信息,请检查 \"Assets/Scripts/EffectPlugin/Resources/RuntimePostProcessResources.asset\"");
                    }
#endif
                }
                if (curLayer != null)
                {
                    curLayer.volumeTrigger = curLayer.transform;
                    curLayer.volumeLayer = LayerMask.GetMask(new string[] { "PostProcessingEffect" });
                }


                //foreach (var cam in Camera.allCameras)
                //{
                //    if (!cam.gameObject.activeInHierarchy) continue;
                //    curLayer = cam.gameObject.GetComponent<PostProcessLayer>();
                //    if (curLayer != null) break;
                //}

                return curLayer;
            }
        }

        public void SetShaderKeyword( string keyword, bool enable )
        {
            if (string.IsNullOrEmpty(keyword)) return;
            if (Shader.IsKeywordEnabled(keyword) != enable)
            {
                if (enable)
                {
                    Shader.EnableKeyword(keyword);
                } else
                {
                    Shader.DisableKeyword(keyword);
                }
            }
        }

        public int GetCPUCount()
        {
            return SystemInfo.processorCount;
        }

        public int GetCPUFrequency()
        {
            return SystemInfo.processorFrequency;
        }

        public int GetMemorySize()
        {
            int memory = SystemInfo.systemMemorySize;

            //#if !UNITY_EDITOR && UNITY_ANDROID
            //            try
            //            {
            //                AndroidJavaClass unityPlayer = new AndroidJavaClass("com.unity3d.player.UnityPlayer");
            //                AndroidJavaObject currentActivity = unityPlayer.GetStatic<AndroidJavaObject>("currentActivity");
            //                AndroidJavaClass unityPluginLoader = new AndroidJavaClass("com.tencent.tmgp.ysj.YSJActivity");
            //                float tempMemory = unityPluginLoader.CallStatic<float>("GetMemory", currentActivity);
            //                memory = (int)tempMemory;
            //            Debuger.Log("android memory:"+memory);
            //            }
            //            catch (Exception e)
            //            {
            //                Debug.Log("com.moba.unityplugin.AndroidUtile GetMemory: " + e.Message);
            //            }
            //#endif   
            return memory;
        }


    }

}