using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;
[ExecuteAlways]
public class UICircleClipHelper : MonoBehaviour
{
    [SerializeField]
    protected Image img;
        static readonly int prop_WDH = Shader.PropertyToID("_WDH");

    private void SetupMaterialProp()
    {
        var trans = transform as RectTransform;
        var bounds = RectTransformUtility.CalculateRelativeRectTransformBounds(trans);
        var realSizeX = bounds.size.x * trans.localScale.x;
        var realSizeY = bounds.size.y * trans.localScale.y;
        
        var wdh = realSizeX / Mathf.Max(0.0001f, realSizeY);

        img.material.SetFloat(prop_WDH, wdh);
      
    }

    private void OnEnable()
    {
        if( img == null)
            img = GetComponent<Image>();
        if (img == null) {
            enabled = false;
            return;
        }
        if (img.material == null 
            || img.material.shader == null 
            || !img.material.shader.name.EndsWith("/UI/UVClip_Circle"))
        {
            enabled = false;
            return;
        }
        
        SetupMaterialProp();
    }


#if UNITY_EDITOR
    private void Update()
    {
        if( img == null)
        {
            return;
        }
        SetupMaterialProp();
    }
#endif

}
