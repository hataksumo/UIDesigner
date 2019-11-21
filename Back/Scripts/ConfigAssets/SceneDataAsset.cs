using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class SceneDataAsset : ScriptableObject
{

    public const string GenFloder = "/AutoGen_Prefabs";

    public const string SceneDataFileSurfix = "_sceneData.asset";

    public const string SceneRootSurfix = "_Root";
    public const string SunRootName = "Sun";
    public const string SkyRootName = "Sky";
    public const string EnvRootName = "Environment";
    public const string DynamicRootName = "[Dynamic]";

    public const string EnvFxRootSurfix = "_FxRoot";
    public const string CamFxRootSurfix = "_CamFxRoot";

    public static readonly int charEnvColorPropId = Shader.PropertyToID("_CharEnvLight");
    public const string CharEnvLitKeyword = "_USEAMBIENT_ON";

    [System.Serializable]
    public struct LightMapDataToken
    {
        public Texture2D light;
        public Texture2D dir;
        public Texture2D shadow;
    }
    [System.Serializable]
    public struct RendererLightMapData
    {
        public int lightMapIndex;
        public float offsetX, offsetY, offsetZ, offsetW;
        public Vector4 lightMapOffset
        {
            get
            {
                return new Vector4(offsetX, offsetY, offsetZ, offsetW);
            }
        }
    }

    [System.Serializable]
    public struct ReflectInfo
    {
        public string name;
        public Texture refTex;
    }

    [System.Serializable]
    public struct BatchGroupMrIndex
    {
        public int[] transIndex;
    }

    public GameObject sceneRoot;
    public GameObject sceneFxRoot;
    public GameObject camFxRoot;

    //light map datas
    [SerializeField]
    public LightMapDataToken[] lightMapData;
    public int lightmapsMode;
    public LightmapData[] LightmapDatas
    {
        get
        {
            if (lightMapData != null && lightMapData.Length < 1) return null;
            LightmapData[] ret = new LightmapData[lightMapData.Length];
            for (int i = 0 ; i < ret.Length ; i++)
            {
                ret[i] = new LightmapData();
                ret[i].lightmapColor = lightMapData[i].light;
                ret[i].lightmapDir = lightMapData[i].dir;
                ret[i].shadowMask = lightMapData[i].shadow;
            }
            return ret;
        }

        set
        {
            if (value == null || value.Length < 1) return;
            lightMapData = new LightMapDataToken[value.Length];
            for (int i = 0 ; i < value.Length ; i++)
            {
                lightMapData[i].light = value[i].lightmapColor;
                lightMapData[i].dir = value[i].lightmapDir;
                lightMapData[i].shadow = value[i].shadowMask;
            }
        }
    }
    

    //renderers datas
    public RendererLightMapData[] rendererLightMapDatas;
    public BatchGroupMrIndex[] batchGroups;

    public int PostprocessAnti_aliasingMode = 0;

    public ReflectInfo[] reflectInfos;

    public Color ambientColor;

    

    //fog
    public bool fogEnable;
    public Color fogColor;
    public int fogMode;
    public float fogStart;
    public float fogEnd;
    public float fogDensity;
    public float fogHeight = 0;
    public float fogTransition = 0f;

    //second fog    
    public Color    secondFogColor;    
    public float    secondFogStart;
    public float    secondFogEnd;
    public float    secondFogDensity;
   

    //wind
    public float windStrength = 0;

    //skybox
    public Material skyMat;

    //shadow
    public Color shadowColor = Color.black;
    public int blurLevel = 1;
    public float blurSize = 1.88f;

    //light probs
    public LightProbes lpData;
    public Color charEnvColor = Color.white;
    public void SaveRenderSetting()
    {
        fogEnable = RenderSettings.fog;
        fogColor = RenderSettings.fogColor;
        fogStart = RenderSettings.fogStartDistance;
        fogEnd = RenderSettings.fogEndDistance;
        fogDensity = RenderSettings.fogDensity;
        fogMode = (int)RenderSettings.fogMode;
        ambientColor = RenderSettings.ambientLight;
        skyMat = RenderSettings.skybox;
        lpData = LightmapSettings.lightProbes;       

    }

    public void ApplyRenderSetting()
    {
        RenderSettings.fog = fogEnable;
        RenderSettings.fogColor = fogColor;
        RenderSettings.fogStartDistance = fogStart;
        RenderSettings.fogEndDistance = fogEnd;
        RenderSettings.fogDensity = fogDensity;
        RenderSettings.fogMode = (FogMode)fogMode;
        RenderSettings.ambientMode = UnityEngine.Rendering.AmbientMode.Flat;        
        RenderSettings.ambientLight = ambientColor;
        RenderSettings.skybox = skyMat;
        LightmapSettings.lightProbes = lpData;
    }


    public void BlendFogSetting(float blend )
    {
        if(!RenderSettings.fog)
        {
            RenderSettings.fog = fogEnable;
        }
        if( RenderSettings.fogMode != (FogMode)fogMode)
        {
            RenderSettings.fogMode = (FogMode)fogMode;
        }

        RenderSettings.fogColor =  Color.Lerp( fogColor,secondFogColor,blend);
        RenderSettings.fogStartDistance = Mathf.Lerp( fogStart,secondFogStart,blend);
        RenderSettings.fogEndDistance = Mathf.Lerp(fogEnd, secondFogEnd, blend);
        RenderSettings.fogDensity = Mathf.Lerp(fogDensity, secondFogDensity, blend);

        if (charEnvColor.maxColorComponent > 0f)
        {
            Shader.EnableKeyword(CharEnvLitKeyword);
            Shader.SetGlobalColor(charEnvColorPropId, charEnvColor);
        } else
        {
            Shader.DisableKeyword(CharEnvLitKeyword);
        }

    }

}
