///不引用任何资源,用于在Lua中按条件加载资源
using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using XLua;
/// <summary>
/// 需要加载的资源
/// string sceneRoot;
/// string sceneFxRoot;
/// string camFxRoot;
/// LightMapDataToken[] lightMapData => {public string light;public string dir;public string shadow;}
///  ReflectInfo[] reflectInfos; => {[public string name];public string refTex;}
///  string skyMat
/// string lpData;
/// </summary>
public class SceneDataLitAsset : ScriptableObject
{
    [System.Serializable]
    public struct LightMapDataToken
    {
        public string light;
        public string dir;
        public string shadow;
    }
   
    [System.Serializable]
    public struct ReflectInfo
    {
        public string name;
        public string refTex;
    }


    public string sceneRoot;
    public string sceneFxRoot;
    public string camFxRoot;

    //light map datas
    [SerializeField]
    public LightMapDataToken[] lightMapData;
    public int lightmapsMode;
   
    //renderers datas
    public SceneDataAsset.RendererLightMapData[] rendererLightMapDatas;
    public SceneDataAsset.BatchGroupMrIndex[] batchGroups;
    //public int PostprocessAnti_aliasingMode = 0;

    public ReflectInfo[] reflectInfos;

    public Color ambientColor;

    //fog
    public bool     fogEnable       ;
    public Color    fogColor        ;
    public int      fogMode         ;
    public float    fogStart        ;
    public float    fogEnd          ;
    public float    fogDensity      ;
    public float    fogHeight       = 0;
    public float    fogTransition   = 0f;

    //second fog    
    public Color secondFogColor     ;
    public float secondFogStart     ;
    public float secondFogEnd       ;
    public float secondFogDensity       ;

    //wind
    public float windStrength = 0;

    //skybox
    public string skyMat;

    //shadow
    public Color    shadowColor     = Color.black;
    public int      blurLevel       = 1;
    public float    blurSize        = 1.88f;

    //light probs
    public string lpData;
    public Color charEnvColor = Color.white;
   
}

//用于Lua加载资源后,传入场景拼装器
[LuaCallCSharp]
public class SceneAssetSet
{
    public GameObject sceneRoot;
    public GameObject sceneFxRoot;
    public GameObject camFxRoot;
    [SerializeField]
    public SceneDataAsset.LightMapDataToken[] lightMapData;   
    public SceneDataAsset.ReflectInfo[] reflectInfos;
    public Material skyMat;
    public LightProbes lpData;
}
