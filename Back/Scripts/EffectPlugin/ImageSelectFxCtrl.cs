using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;

[RequireComponent(typeof(Image))]
[ExecuteAlways]
public class ImageSelectFxCtrl : MonoBehaviour
{
    static readonly int MaskTexProp = Shader.PropertyToID("_Mask");
    static readonly int MaskTexSTProp = Shader.PropertyToID("_Mask_ST");
    
    public Texture2D mask;
    Image img;   
    bool selected = false;
    private void OnEnable()
    {
        img = GetComponent<Image>();
        img.material = null;
        selected = false;
    }

    public void Select(Material mat)
    {
        if (IsSelected() || mat == null) return;
#if UNITY_EDITOR
        if (!mat.HasProperty(MaskTexProp)
       || !mat.HasProperty(MaskTexSTProp)
       )
        {
            Debug.LogError("选中效果的材质Shader不对!!!!" + mat.shader.name);
            return;
        } 
#endif
        selected = true;       
        if (mat != null && img.sprite != null)
        {
            mat.SetTexture(MaskTexProp, mask);
            var sp = img.sprite;
            float W = sp.texture.width;
            float H = sp.texture.height;
            float W1 = sp.rect.width;
            float H1 = sp.rect.height;
            float offsetX = sp.textureRect.x;
            float offsetY = sp.textureRect.y;
            float offsetX1 = sp.textureRectOffset.x;
            float offsetY1 = sp.textureRectOffset.y;

            Vector4 MaskOffset = Vector4.zero;
            MaskOffset.x = W / W1;
            MaskOffset.y = H / H1;
            MaskOffset.z = (offsetX1 - offsetX) / W1;
            MaskOffset.w = (offsetY1 - offsetY) / H1;

            mat.SetVector(MaskTexSTProp, MaskOffset);
            img.material = mat;
        }
    }

    public Material Unselect()
    {
        if (!IsSelected()) return null;
        selected = false;
        var mat = img.material;
        img.material = null;
        return mat;
    }

    public bool IsSelected()
    {
        return selected;
    }
}
