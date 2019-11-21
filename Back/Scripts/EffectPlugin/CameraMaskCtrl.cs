using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.Rendering.PostProcessing;

public class CameraMaskCtrl : MonoBehaviour
{
    [SerializeField] protected float extraAlpha = -1f;
    [SerializeField] protected LayerMask unMaskLayer;
    [SerializeField] protected MeshRenderer top = null;
    [SerializeField] protected MeshRenderer background = null;
    MaterialPropertyBlock mpb = null;

    int camLayerMask = -1;
    int defaultCamLayer = -1;
    bool hasBackground = false;
    int maxTexPropId = -1;
    int colorPropId = -1;
    Camera cam = null;

    float lastTopScaleVal = 0;
    float lastBackScaleVal = 0;
    float backGroundAlpha = 0f;
    [System.Serializable]
    public class ColorSetting
    {
        public int priority;
        public Color color;
    }

    [SerializeField]
    List<ColorSetting> settings = new List<ColorSetting>();


    private void Awake()
    {
        camLayerMask = unMaskLayer.value;
        cam = CamMaskUtilities.MainCam;
        hasBackground = false;
        defaultCamLayer = cam.cullingMask;
        mpb = new MaterialPropertyBlock();
        maxTexPropId = Shader.PropertyToID("_MainTex");
        colorPropId = Shader.PropertyToID("_Color");
        if (top != null)
        {
            top.GetPropertyBlock(mpb);
            mpb.SetColor(colorPropId, Color.clear);
            top.SetPropertyBlock(mpb);
            top.enabled = false;
        }

        if (background != null)
        {
            background.GetPropertyBlock(mpb);
            mpb.SetColor(colorPropId, Color.clear);
            background.SetPropertyBlock(mpb);
            background.enabled = false;
        }

        transform.localPosition = Vector3.zero;
        transform.localRotation = Quaternion.identity;
    }

    private void Update()
    {
        if (top != null && top.enabled)
        {
            float val = CamMaskUtilities.CalcMaskScale(top.transform.localPosition.z);
            if (val > lastTopScaleVal)
            {
                lastTopScaleVal = val;
            }
            top.transform.localScale = Vector3.one * lastTopScaleVal;//Vector3.one * CamMaskUtilities.CalcMaskScale(top.transform.localPosition.z);
        }

        if (background != null && background.enabled)
        {
            float val = CamMaskUtilities.CalcMaskScale(background.transform.localPosition.z);
            if (val > lastBackScaleVal)
            {
                lastBackScaleVal = val;
            }
            background.transform.localScale = Vector3.one * lastBackScaleVal;//CamMaskUtilities.CalcMaskScale(background.transform.localPosition.z);
        }
    }



    void SetCamCullingMask( bool cullScene )
    {

        if (cullScene || backGroundAlpha > 0.99f)
        {
            if (cam.cullingMask != camLayerMask)
                cam.cullingMask = camLayerMask;
        } else
        {
            if (cam.cullingMask != defaultCamLayer)
                cam.cullingMask = defaultCamLayer;
        }
    }

    /// <summary>
    /// 高优先级的配置会覆盖低优先级的颜色
    /// </summary>
    /// <param name="pri">颜色优等级</param>
    /// <param name="col"></param>
    public void SetColor( int pri, Color col )
    {
        bool found = false;
        for (int i = 0 ; i < settings.Count ; i++)
        {
            if (settings[i].priority == pri)
            {
                settings[i].color = col;
                found = true;
                break;
            } else if (settings[i].priority < pri)
            {
                settings.Insert(i, new ColorSetting()
                {
                    priority = pri,
                    color = col
                });
                found = true;
                break;
            }
        }

        if (!found)
        {
            settings.Add(new ColorSetting()
            {
                priority = pri,
                color = col
            });
        }

        UpdateColor();
    }

    /// <summary>
    /// 移除对应优先级的颜色
    /// </summary>
    /// <param name="pri"></param>
    public void RemoveColor( int pri )
    {
        for (int i = 0 ; i < settings.Count ; i++)
        {
            if (settings[i].priority == pri)
            {
                settings.RemoveAt(i);
                UpdateColor();
                break;
            }
        }
    }

    /// <summary>
    /// 把遮罩的颜色配置为当前最高优先级的颜色
    /// </summary>
    public void UpdateColor()
    {
        if (!gameObject.activeSelf)
        {
            gameObject.SetActive(true);
        }
        if (top == null) return;

        if (settings.Count < 1)
        {
            top.enabled = false;
            SetCamCullingMask(false);
            return;
        }

        var color = settings[0].color;
        if (extraAlpha > 0f)
        {
            color.a *= extraAlpha;
        }
        if (color.a > 0.001f && !top.enabled)
        {
            top.enabled = true;
        } else if (color.a <= 0.001f && top.enabled)
        {
            top.enabled = false;
        }
        if (gameObject.activeInHierarchy)
        {
            if (mpb == null) mpb = new MaterialPropertyBlock();
            top.GetPropertyBlock(mpb);
            mpb.SetColor(colorPropId, color);
            top.SetPropertyBlock(mpb);
        }

        SetCamCullingMask(color.a > 0.99f);
    }

    /// <summary>
    /// 得到对应优先级的颜色配置
    /// </summary>
    /// <param name="pri"></param>
    /// <returns></returns>
    public Color GetColor( int pri )
    {
        for (int i = 0 ; i < settings.Count ; i++)
        {
            if (settings[i].priority == pri)
            {
                return settings[i].color;
            }
        }
        return Color.clear;
    }


    public void SetBackground( Cubemap tex )
    {
        SetBackground(tex, Color.white);
    }
    public void SetBackground( Cubemap tex, Color col )
    {

        if (background == null || tex == null) return;
        backGroundAlpha = col.a;
        background.enabled = true;
        hasBackground = true;
        background.GetPropertyBlock(mpb);
        mpb.SetTexture(maxTexPropId, tex);
        mpb.SetColor(colorPropId, col);
        background.SetPropertyBlock(mpb);
        UpdateColor();
    }

    public void HideBackground()
    {
        if (background == null) return;
        background.enabled = false;
        hasBackground = false;
        UpdateColor();
    }


    public void SetExtraAlpha( float alpha )
    {
        extraAlpha = alpha;
    }

    public void ResetExtraAlpha()
    {
        extraAlpha = -1f;
    }

    enum OverridePPState
    {
        None,
        Init,
    }

    OverridePPState overridePPState = OverridePPState.None;
    PostProcessVolume mainVolum = null;
    PostProcessVolume overrideVolum;

    PostProcessProfile CustomCopyProfile( PostProcessProfile file )
    {
        if (file.settings == null || file.settings.Count < 1) return null;
        PostProcessProfile ret = Object.Instantiate(file);
        //remove old
        ret.RemoveSettings<ColorGrading>();
        var newOne = ret.AddSettings<ColorGrading>();
        newOne.active = false;
        return ret;
    }

    void InitOverrideVolum()
    {
        overridePPState = OverridePPState.Init;
        var mainLayer = cam.GetComponent<PostProcessLayer>();
        if (mainLayer == null) return;
        List<PostProcessVolume> vols = new List<PostProcessVolume>();
        PostProcessManager.instance.GetActiveVolumes(mainLayer, vols, true, true);
        if (vols == null || vols.Count < 1) return;
        foreach (var v in vols)
        {
            if(v.sharedProfile.HasSettings<ColorGrading>())
            {
                mainVolum = v;
                break;
            }
        }      

        if (mainVolum == null) return;
        var grading = mainVolum.sharedProfile.GetSetting<ColorGrading>();      
        overrideVolum = new GameObject("[OverrideVolum]").AddComponent<PostProcessVolume>();
        overrideVolum.gameObject.layer = mainVolum.gameObject.layer;
        overrideVolum.isGlobal = true;
        overrideVolum.priority = mainVolum.priority;
        overrideVolum.weight = 0f;
        overrideVolum.profile = CustomCopyProfile(mainVolum.sharedProfile);
    }

    void ClearOverrideVolum()
    {
        overridePPState = OverridePPState.None;
        if (overrideVolum == null) return;
        Object.Destroy(overrideVolum.profile);
        Object.Destroy(overrideVolum.gameObject);
    }

    public void SetOverridePPWeight( float weight )
    {
        if (overridePPState < OverridePPState.Init)
        {
            InitOverrideVolum();
        }
        if (overrideVolum == null || mainVolum == null)
        {
            return;
        }

        mainVolum.weight = Mathf.Clamp01(1f - weight);
        overrideVolum.weight = weight;

        if (weight <= 0f)
        {
            overrideVolum.gameObject.SetActive(false);
        } else
        {
            overrideVolum.gameObject.SetActive(true);
        }
    }


    private void OnDestroy()
    {
        ClearOverrideVolum();
    }

}
