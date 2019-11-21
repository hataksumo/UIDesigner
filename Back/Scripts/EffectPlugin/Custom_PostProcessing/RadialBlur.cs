using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.Serialization;
using UnityEngine.Rendering.PostProcessing;

[SerializeField]
[PostProcess(typeof(RadialBlurRenderer), PostProcessEvent.BeforeStack, "Custom/RadialBlur")]
public class RadialBlur : PostProcessEffectSettings
{
    public Vector2Parameter center = new Vector2Parameter { value = Vector2.one * 0.5f };
    [Range(0f, 0.3f)]
    public FloatParameter centerSize = new FloatParameter { value = 0.2f };
    [Range(0f, 2f)]
    public FloatParameter blurSize = new FloatParameter { value = 1.427f };
   // public TextureParameter Texture = new TextureParameter();

    public override bool IsEnabledAndSupported( PostProcessRenderContext context )
    {
        return enabled.value && blurSize > 0f;
    }
}

public class RadialBlurRenderer : PostProcessEffectRenderer<RadialBlur>
{
    PropertySheet sheet = null;
    Shader blurShader = null;
    int PropID_Center = -1;
    int PropID_CenterSize = -1;
    int PropID__BlurSize = -1;
    //int PropID_Tex = -1;

    public override void Init()
    {
        blurShader = Shader.Find("Hidden/RadialBlur");
        PropID_Center = Shader.PropertyToID("_Center");        
        PropID_CenterSize = Shader.PropertyToID("_CenterSize");
        PropID__BlurSize = Shader.PropertyToID("_BlurSize");
        //PropID_Tex = Shader.PropertyToID("_Tex");
        base.Init();
    }

    public override void Render( PostProcessRenderContext context )
    {
        if (blurShader == null) return;

        var cmd = context.command;
        cmd.BeginSample("RadialBlur");

        sheet = context.propertySheets.Get(blurShader);

        sheet.properties.SetVector(PropID_Center, settings.center.value);
        sheet.properties.SetFloat(PropID_CenterSize, settings.centerSize.value);
       
        sheet.properties.SetFloat(PropID__BlurSize, settings.blurSize.value);
        //if( settings.Texture != null && settings.Texture.value != null)
        //    sheet.properties.SetTexture(PropID_Tex, settings.Texture.value);

        cmd.BlitFullscreenTriangle(context.source, context.destination, sheet, 0);
        
        cmd.EndSample("RadialBlur");

    }
}
