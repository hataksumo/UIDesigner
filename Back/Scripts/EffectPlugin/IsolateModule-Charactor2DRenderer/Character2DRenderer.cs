using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;
using XLua;

[LuaCallCSharp]
public class Character2DRenderer : MonoBehaviour
{

    //private List<CharacterPair> charPairs;
    // 模型和2d渲染映射
    private Dictionary<GameObject,CharacterPair> charPairDict;
    public Camera cam; // 需要的渲染相机
    static int charMatTexId;
    static Shader charSpShader = null;
    private int defaultLayer;
    private int noneLayer;
    private void Awake()
    {
        Init();
    }

    private void OnEnable()
    {
      
    }

    private void OnDestroy()
    {
        if (charPairDict != null)
        {
            List<GameObject> tempList = new List<GameObject>(charPairDict.Keys);
            int index = 0;
            while (index < tempList.Count)
            {
                GameObject go = tempList[index];
                if (go == null)
                {
                    index++;
                    continue;
                }

                var item = charPairDict[go];
                if (item == null)
                {
                    index++;
                    continue;
                }
                item.Release();
                index++;
            }

            charPairDict.Clear();
            charPairDict = null;
        }
        charSpShader = null;
    }

    // Update is called once per frame
    void Update()
    {
        if (!RenderChar())
        {
            //enabled = false;
        }
    }

    void Init()
    {
        //rtd = new RenderTextureDescriptor(RTSize, RTSize, RenderTextureFormat.ARGB32, 8);
        if (cam == null)
        {
            cam = GetComponentInChildren<Camera>();
        }
        if (cam != null)
        {
            //cam.enabled = false;
        }
        charMatTexId = Shader.PropertyToID("_CharTex");
        EnSureHasShader();
    }

    public void SetShowLayer(int defaultLayer,int noneLayer)
    {
        this.defaultLayer = defaultLayer;
        this.noneLayer = noneLayer;
    }

    private void SetChildLayer(Transform tran,int layer) {
        foreach (Transform one in tran.GetComponentInChildren<Transform>(true))
        {//遍历当前物体及其所有子物体

            one.gameObject.layer = layer;//更改物体的Layer层
        }
    }

    public static void EnSureHasShader()
    {
        if (charSpShader == null)
            charSpShader = Shader.Find("Sprites/CharSprite");
    }


    bool RenderChar()
    {
        if (cam == null || charPairDict == null || charPairDict.Count < 1) return false;   
        List<GameObject> tempList = new List<GameObject>(charPairDict.Keys);
        int index = 0;
        while (index < tempList.Count)
        {
            GameObject go = tempList[index];
            if (go == null)
            {
                index++;
                continue;
            }

            CharacterPair item = charPairDict[go];
            if (item == null) {
                index++;
                continue;
            }

            if (item.charGo == null) {
                index = DeleteOneCharPair(index, item);
                continue;
            }
            if (item.charSp == null && item.charImage == null) {
                index = DeleteOneCharPair(index, item);
                continue;
            }

            GameObject renderGameObject = null;
            if (item.charSp != null) {
                renderGameObject = item.charSp.gameObject;
            }

            if (item.charImage != null)
            {
                renderGameObject = item.charImage.gameObject;
            }

            if (renderGameObject == null) {
                index = DeleteOneCharPair(index, item);
                continue;
            }

            if (!renderGameObject.activeInHierarchy)
            {
                index = DeleteOneCharPair(index, item);
                continue;
            }


            if (item.needReloadTexture)
            {
                item.ReloadRenderTexture();
            }

            RenderTexture renderTexture = item.GetCharRT();

            if (!item.charGo.activeSelf)
                item.charGo.SetActive(true);

            SetChildLayer(item.charGo.transform, defaultLayer);
            cam.targetTexture = renderTexture;
            cam.Render();
            cam.targetTexture = null;
            SetChildLayer(item.charGo.transform, noneLayer);
            if (item.charSp != null)
            {
                if (!item.charSp.enabled)
                {
                    item.charSp.enabled = true;
                }
            }

            if (item.charImage != null)
            {
                if (!item.charImage.enabled)
                {
                    item.charImage.enabled = true;
                }
            }
            index++;
        }
        cam.targetTexture = null;
        if (charPairDict.Count < 1) {
            return false;
        }
        return true;
    }

    private int DeleteOneCharPair(int index, CharacterPair item)
    {
        charPairDict.Remove(item.charGo);
        item.Release();
        return index + 1;
    }


    //public void AddCharacter( GameObject go, SpriteRenderer sp )
    //{
    //    if (go == null || sp == null) return;
    //    if (charPairs != null && charPairs.Count > 0)
    //    {
    //        foreach (var item in charPairs)
    //        {
    //            if (item.charGo != null && item.charGo == go)
    //            {
    //                return;
    //            }
    //        }
    //    } else if (charPairs == null)
    //    {
    //        charPairs = new List<CharacterPair>();
    //    }

    //    charPairs.Add(new CharacterPair(go, sp, rtd));
    //    if (!enabled)
    //    {
    //        enabled = true;
    //    }

    //}

    /// <summary>
    /// 移除一个渲染人物
    /// </summary>
    public void RemoveCharacter(GameObject go)
    {
        if (charPairDict == null) {
            return;
        }
        var item = charPairDict[go];
        if (item == null) {
            return;
        }
        if (item.charGo != null) {
            //item.needDestroy = true;
            charPairDict.Remove(item.charGo);
            item.Release();
        }
        charPairDict[go] = null;
        //if (charPairDict.Remove(go)) {
        //    item.Release();
        //}
    }

    public void SetAllCharsWidthHeight(int width,int height)
    {
        if (charPairDict == null)
        {
            return;
        }

        List<GameObject> tempList = new List<GameObject>(charPairDict.Keys);
        int index = 0;
        while (index < tempList.Count)
        {
            GameObject go = tempList[index];
            if (go == null)
            {
                index++;
                continue;
            }

            var item = charPairDict[go];
            if (item == null)
            {
                index++;
                continue;
            }
            item.ModefyRenderTextureWH(width, height);
            index++;
        }
    }

        /// <summary>
        /// 增加一个渲染人物
        /// </summary>
        public void AddCharacterWidthHeight(GameObject go, SpriteRenderer sp,Image image,int width,int height)
    {
        if (go == null)
        {
            return;
        }

        if (image == null && sp == null) return;

        if (charPairDict != null && charPairDict.Count > 0)
        {
            //foreach (var item in charPairs)
            //{
            //    if (item.charGo != null && item.charGo == go)
            //    {
            //        return;
            //    }
            //}
            if (charPairDict.ContainsKey(go)) {
                var item = charPairDict[go];
                if (item != null) {
                    RenderTextureDescriptor tempRtd2 = new RenderTextureDescriptor(width, height, RenderTextureFormat.ARGB32, 8);
                    item.ResetCharacterPair(go, sp, image, tempRtd2);
                    return;
                }
            }
        }
        else if (charPairDict == null)
        {
            charPairDict = new Dictionary<GameObject, CharacterPair>();
            //charPairs = new List<CharacterPair>();
        }
        SetChildLayer(go.transform, noneLayer);
        RenderTextureDescriptor tempRtd = new RenderTextureDescriptor(width, height, RenderTextureFormat.ARGB32, 8);
        CharacterPair characterPair =  new CharacterPair(go, sp, image, tempRtd);
        charPairDict[go] = characterPair;
       
        //charPairs.Add(new CharacterPair(go, sp, tempRtd));
        //if (!enabled)
        //{
        //    enabled = true;
        //}

    }

    private class CharacterPair
    {
        public GameObject charGo;
        public SpriteRenderer charSp;
        public Image charImage;
        public RenderTextureDescriptor rtDesc;
        public RenderTexture charRT;
        public Material spMat;
        //public bool needDestroy;
        public bool needReloadTexture;

        public RenderTexture GetCharRT()
        {
            return charRT;
        }

        public void ModefyRenderTextureWH(int width, int height)
        {
            //if (needDestroy)
            //{
            //    return;
            //}
            rtDesc.width = width;
            rtDesc.height = height;
            needReloadTexture = true;
        }

        public RenderTexture ReloadRenderTexture()
        {
            FreeCharRT();
            charRT = RenderTexture.GetTemporary(rtDesc);
            if (spMat == null)
            {
                spMat = new Material(Character2DRenderer.charSpShader);
            }
            else {
                if (spMat.shader != Character2DRenderer.charSpShader) {
                    spMat.shader = Character2DRenderer.charSpShader;
                }
            }
            spMat.SetTexture(Character2DRenderer.charMatTexId, charRT);
            if (charImage != null) {
                charImage.material = spMat;
            }

            if (charSp != null)
            {
                charSp.material = spMat;
            }
            needReloadTexture = false;
            return charRT;
        }

        public CharacterPair(GameObject go, SpriteRenderer sp,Image image, RenderTextureDescriptor rtd)
        {
            charGo = go;
            charImage = image;
            charSp = sp;
            this.rtDesc = rtd;
            //needDestroy = false;
            needReloadTexture = true;
            Character2DRenderer.EnSureHasShader();
        }

        public void ResetCharacterPair(GameObject go, SpriteRenderer sp,Image image, RenderTextureDescriptor rtd)
        {
            charGo = go;
            charSp = sp;
            charImage = image;

            if (rtd.width != rtDesc.width || rtd.height != rtDesc.height)
            {
                needReloadTexture = true;
            }
            this.rtDesc = rtd;
            Character2DRenderer.EnSureHasShader();
        }

        private void FreeCharRT() {
            if (charRT != null)
            {
                RenderTexture.ReleaseTemporary(charRT);
                charRT = null;
            }
        }

        public void Release()
        {
            FreeCharRT();
            if (spMat != null)
            {
                Object.DestroyImmediate(spMat);
            }
        }

    }
}
