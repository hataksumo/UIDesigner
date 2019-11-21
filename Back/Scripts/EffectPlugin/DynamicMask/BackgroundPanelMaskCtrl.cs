using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;


[RequireComponent(typeof(Camera))]
public class BackgroundPanelMaskCtrl : MonoBehaviour
{
    public Image panel;   
    public RenderTexture maskRt;
    public int width;
    public int height;
    
    Camera cam;
    Shader cutShader = null;
    [SerializeField]  bool keepUpdate = false;
    public bool KeepUpdate
    {
        get
        {
            return keepUpdate;
        }
        set
        {
            keepUpdate = value;
        }
    }
    // Start is called before the first frame update
    private void OnEnable()
    {
        if (panel == null) return;
        cutShader = Shader.Find("Hidden/MaskCut");
        maskRt = RenderTexture.GetTemporary(width, height, 0, RenderTextureFormat.R8);
        maskRt.filterMode = FilterMode.Trilinear;
        maskRt.autoGenerateMips = false;
        panel.material.SetTexture("_AlphaMask", maskRt);
        cam = GetComponent<Camera>();      
    }

    private void OnDisable()
    {
        if (maskRt != null)
        {
            RenderTexture.ReleaseTemporary(maskRt);
        }
      
    }

    private void Update()
    {
        if (keepUpdate)
            UpdateMask();
    }

    public void UpdateMask()
    {
        cam.SetReplacementShader(cutShader, "RenderType");
        cam.targetTexture = maskRt;
        var oldFlag = cam.clearFlags;
        var oldCol = cam.backgroundColor;
        cam.clearFlags = CameraClearFlags.Color;
        cam.backgroundColor = Color.white;
        cam.Render();
        cam.targetTexture = null;
        cam.clearFlags = oldFlag;
        cam.backgroundColor = oldCol;
        cam.ResetReplacementShader();

    }

    public void SetMaskSize(int width,int height )
    {
        if (this.width == width && this.height == height) return;
        this.width = width;
        this.height = height;
        if (maskRt != null)
        {
            RenderTexture.ReleaseTemporary(maskRt);
        }
        maskRt = RenderTexture.GetTemporary(this.width, this.height, 0, RenderTextureFormat.R8);
    }

}
