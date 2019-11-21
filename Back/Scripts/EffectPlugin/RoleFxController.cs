using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class RoleFxController : MonoBehaviour
{

    /// <summary>
    /// Anchor ID:
    /// 0: 根节点    Bip001 ->Parent
    /// 1: 腹        Bip001 Spine
    /// 2: 胸        Bip001 Spine1 / Bip001 Spine2
    /// 3: 头        Bip001 Head
    /// 4: 左手      Bip001 L Hand
    /// 5: 右手      Bip001 R Hand
    /// 6: 左脚      Bip001 L Foot
    /// 7: 右脚      Bip001 R Foot
    /// 8：头顶　　　Bip001 HeadNub
    /// 9: 脚下      FootStep
    /// </summary>
    /// 
    [System.Serializable]
    public struct Anchor
    {
        public Transform trans;
        //public Vector3 offset;
        //public Vector3 rotate;
    }

    public Anchor[] anchorSetting;
    private SkinnedMeshRenderer[] __smr;
    private SkinnedMeshRenderer[] SMR
    {
        get
        {
            if (__smr == null || __smr.Length < 1)
            {
                __smr = this.gameObject.GetComponentsInChildren<SkinnedMeshRenderer>(true);
            }
            return __smr;
        }
    }
    private MaterialPropertyBlock __mpb;
    private MaterialPropertyBlock MPB
    {
        get
        {
            if (__mpb == null)
            {
                __mpb = new MaterialPropertyBlock();
            }
            return __mpb;
        }
    }

    private ParticleSystem[] ps;
    private ParticleSystem[] particels;

    private float startTime = 0;
    private float totalTime = 0;
    private bool startDiss = false;
    private bool startFlash = false;


    public bool StartFlash
    {
        get
        {
            return startFlash;
        }
        set
        {
            startFlash = value;
            SetFlashState(startFlash);
        }
    }


    void Start()
    {
        ps = gameObject.GetComponentsInChildren<ParticleSystem>();
        particels = gameObject.GetComponentsInChildren<ParticleSystem>();
        ResetDissEffect();
        ResetPosClip();
    }

    public void StartDissEffect( float duration )
    {
        startTime = Time.time;
        totalTime = duration;
        this.startDiss = true;
        this.StartFlash = false;
    }

    private readonly static int dissolveOn = Shader.PropertyToID("_UseDissolve");
    private readonly static int dissolveAmount = Shader.PropertyToID("_DissolveAmount");

    void SetDissolveValue( int isOn, float diss, bool activeParaicels )
    {
        if (SMR != null && SMR.Length > 0)
        {
            foreach (var s in SMR)
            {
                if (s != null && s.sharedMesh != null)
                {

                    for (int i = 0 ; i < s.sharedMesh.subMeshCount ; i++)
                    {
                        s.GetPropertyBlock(MPB, i);
                        MPB.SetInt(dissolveOn, isOn);
                        MPB.SetFloat(dissolveAmount, diss);
                        s.SetPropertyBlock(MPB, i);
                    }

                }
            }
        }

        if (particels != null && particels.Length > 0)
        {
            foreach (var ps in particels)
            {
                if (ps != null && ps.gameObject.activeSelf != activeParaicels)
                    ps.gameObject.SetActive(activeParaicels);
            }
        }

    }

    public void ResetDissEffect()
    {
        if (SMR != null && SMR.Length > 0)
        {
            SetDissolveValue(0, 0, true);
        }
        startDiss = false;
    }

    public Anchor GetAnchor( int id )
    {
        if (id < 0 || id >= anchorSetting.Length)
        {
            return anchorSetting[0];
        } else
        {
            return anchorSetting[id];
        }
    }

    public Transform GetAnchorTrans( int id )
    {
        if (id < 0 || id >= anchorSetting.Length)
        {
            return anchorSetting[0].trans;
        } else
        {
            return anchorSetting[id].trans;
        }
    }

    //public Vector3 GetAnchorPos(int id )
    //{       
    //    int index = 0;
    //    if (id > 0 || id < anchorSetting.Length)
    //    {
    //        index = id;
    //    }

    //    if( anchorSetting[index].trans!= null)
    //    {
    //        return anchorSetting[index].trans.position + anchorSetting[index].offset;
    //    } else
    //    {
    //        return Vector3.zero;
    //    }
    //}

    //public Vector3 GetAnchorRotate( int id )
    //{
    //    int index = 0;
    //    if (id > 0 || id < anchorSetting.Length)
    //    {
    //        index = id;
    //    }

    //    if (anchorSetting[index].trans != null)
    //    {
    //        return anchorSetting[index].trans.eulerAngles + anchorSetting[index].rotate;
    //    } else
    //    {
    //        return Vector3.zero;
    //    }
    //}

    public int FindAnchorId( Transform trans )
    {
        if (trans == null) return -1;

        for (int i = 0 ; i < anchorSetting.Length ; i++)
        {
            if (anchorSetting[i].trans != null && anchorSetting[i].trans == trans)
            {
                return i;
            }
        }
        return -1;
    }

    public void PlayDeadEffect( float dissvolveAmount )
    {
        SetDissolveValue(1, dissvolveAmount, false);
    }

    public void RoleRelife()
    {
        startDiss = false;
        SetDissolveValue(0, 0, true);
    }


    void Update()
    {
        if (startDiss)
        {
            float percent = (Time.time - startTime) / totalTime;
            PlayDeadEffect(percent);
            if (percent > 1)
                startDiss = false;
        }

        if (StartFlash)
        {
            float percent = (Time.time - startTime) / totalTime;
            if (percent > 1)
                StartFlash = false;
        }


    }

    Renderer[] topRenderer;

    public void SetRenderQueue2Top()
    {
#if UNITY_EDITOR
        if (!Application.isPlaying)
        {
            return;
        }
#endif

        var trans = transform;
        if (trans.parent != null)
        {
            trans = trans.parent;
        }
        topRenderer = trans.gameObject.GetComponentsInChildren<Renderer>(true);
        foreach (var r in topRenderer)
        {
            if (r.gameObject.name.Equals("CamMask")) continue;
            foreach (var m in r.materials)
            {
                m.renderQueue = CalcRenderLayer(m.renderQueue);
            }
        }
    }

    public void ResetRenderQueue()
    {
#if UNITY_EDITOR
        if (!Application.isPlaying)
        {
            return;
        }
#endif
        if (topRenderer == null || topRenderer.Length < 1) return;
        foreach (var r in topRenderer)
        {
            if (r == null) continue;

            if (r.gameObject.name.Equals("CamMask")) continue;

            foreach (var m in r.materials)
            {
                m.renderQueue = GetOldLyaer(m.renderQueue);
            }
        }
    }
    int CalcRenderLayer( int oldLayer )
    {
        if (oldLayer >= 3510) return oldLayer;
        var ret = 3510 + Mathf.Max(0, oldLayer - 2000) / 5;
        return ret;
    }

    int GetOldLyaer( int layer )
    {
        if (layer < 3510) return layer;
        return (layer - 3510) * 5 + 2000;
    }

    public void Flash( float duration )
    {
        if (startDiss) return;
        StartFlash = true;
        startTime = Time.time;
        totalTime = duration;
    }

    static readonly int edgeLightId = Shader.PropertyToID("_EdgeLight");
    static readonly int edgeColorWidthId = Shader.PropertyToID("_EdgeColorWidth");
    static readonly int edgeColorId = Shader.PropertyToID("_EdgeColor");
    const float edgeWidth = 1.5f;
    static readonly Color edgeColor = Color.white;

    void SetFlashState( bool state )
    {
        if (SMR == null || SMR.Length < 1) return;
        foreach (var smr in SMR)
        {
            int matCount = smr.sharedMaterials.Length;
            for (int i = 0 ; i < matCount ; i++)
            {
                smr.GetPropertyBlock(MPB, i);
                if (state)
                {
                    MPB.SetInt(edgeLightId, 1);
                    MPB.SetFloat(edgeColorWidthId, edgeWidth);
                    MPB.SetColor(edgeColorId, edgeColor);
                } else
                {
                    MPB.SetInt(edgeLightId, 0);
                }
                smr.SetPropertyBlock(MPB, i);
            }
        }
    }

    /// <summary>
    /// 开启角色的边缘光效果
    /// </summary>
    /// <param name="state">true开启,false关闭</param>
    /// <param name="col">边缘光颜色</param>
    /// <param name="width">边缘光宽度,0最宽,角色全亮,10以上很窄</param>
    public void SetEdgeLit( bool state, Color col, float width )
    {
        if (SMR == null || SMR.Length < 1) return;
        foreach (var smr in SMR)
        {
            int matCount = smr.sharedMaterials.Length;
            for (int i = 0 ; i < matCount ; i++)
            {
                smr.GetPropertyBlock(MPB, i);
                if (state)
                {
                    MPB.SetInt(edgeLightId, 1);
                    MPB.SetFloat(edgeColorWidthId, width);
                    MPB.SetColor(edgeColorId, col);
                } else
                {
                    MPB.SetInt(edgeLightId, 0);
                }
                smr.SetPropertyBlock(MPB, i);
            }
        }
    }
    /// <summary>
    /// 判断边缘光是否已经开启
    /// </summary>
    /// <returns></returns>
    public bool IsEdgeLitOpen()
    {
        if (SMR == null || SMR.Length < 1) return false;
        var smr = SMR[0];
        smr.GetPropertyBlock(MPB,0);
        return MPB.GetInt(edgeLightId) > 0;
    }


    static readonly int localSpaceProp = Shader.PropertyToID("_LocalSpace");
    static readonly int _PosMaskZProp = Shader.PropertyToID("_PosMaskZ");
    static readonly int _PosMaskEdgeColorProp = Shader.PropertyToID("_PosMaskEdgeColor");
    static readonly int _UsePosClipProp = Shader.PropertyToID("_UsePosClip");

    private void SetPosClipValue( int isOn, float zPos, Color color )
    {
        if (SMR == null || SMR.Length < 1) return;
        Matrix4x4 localSpace = transform.worldToLocalMatrix;
        foreach (var r in SMR)
        {
            
                for (int i = 0 ; i < r.sharedMesh.subMeshCount ; i++)
                {
                    r.GetPropertyBlock(MPB, i);
                    MPB.SetMatrix(localSpaceProp, localSpace);
                    MPB.SetInt(_UsePosClipProp, isOn);
                    MPB.SetFloat(_PosMaskZProp, zPos);
                    MPB.SetColor(_PosMaskEdgeColorProp, color);
                    r.SetPropertyBlock(MPB, i);
                }
           
        }
    }

    public void SetPosClip( float zPos, Color clipColor )
    {
        SetPosClipValue(1, zPos, clipColor);
    }

    public void ResetPosClip()
    {
        Matrix4x4 localSpace = Matrix4x4.identity;
        SetPosClipValue(0, -10000, Color.black);
    }


}
