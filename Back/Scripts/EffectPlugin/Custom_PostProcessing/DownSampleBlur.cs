using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.Serialization;
using UnityEngine.Rendering.PostProcessing;

[SerializeField]
[PostProcess(typeof(DownSampleBlurRenderer), PostProcessEvent.BeforeStack, "Custom/DownSampleBlur")]
public class DownSampleBlur : PostProcessEffectSettings
{
    [Range(0f, 1f)]
    public FloatParameter blurParam = new FloatParameter { value = 1f };
    [Range(0f, 5f)]
    public FloatParameter blurSize = new FloatParameter { value = 0f };
    // public TextureParameter Texture = new TextureParameter();

    public override bool IsEnabledAndSupported( PostProcessRenderContext context )
    {
        return enabled.value && blurParam <1f || blurSize > 0f;
    }
}

public class DownSampleBlurRenderer : PostProcessEffectRenderer<DownSampleBlur>
{
    PropertySheet sheet = null;
    Shader blurShader = null; 
    int PropID_MipDown = -1;
    int PropID_Copy = -1;
    int PropId_BlurSize = -1;
    public override void Init()
    {
        blurShader = Shader.Find("Hidden/Blur");
        PropID_Copy = Shader.PropertyToID("_BlurCopy");
        PropID_MipDown = Shader.PropertyToID("_BlurMipDown");
        PropId_BlurSize = Shader.PropertyToID("_BlurSize");
        //PropID_Tex = Shader.PropertyToID("_Tex");
        base.Init();
    }

    public override void Render( PostProcessRenderContext context )
    {
        // if (blurShader == null) return;

        var cmd = context.command;

        sheet = context.propertySheets.Get(blurShader);

        float blurP = Mathf.Clamp01(settings.blurParam);
        int sw = Mathf.FloorToInt( context.screenHeight * blurP );
        int sh = Mathf.FloorToInt(context.screenWidth * blurP );
        context.GetScreenSpaceTemporaryRT(
            cmd,
            PropID_Copy, 0,
            context.sourceFormat,
            RenderTextureReadWrite.Default,
            FilterMode.Bilinear, sw, sh
            );
        context.GetScreenSpaceTemporaryRT(
            cmd,
            PropID_MipDown, 0,
            context.sourceFormat,
            RenderTextureReadWrite.Default,
            FilterMode.Bilinear, Mathf.Max(1, sw >> 1), Mathf.Max(1, sh >> 1)
            );
        sheet.properties.SetFloat(PropId_BlurSize, settings.blurSize.value);
        cmd.BlitFullscreenTriangle(context.source, PropID_Copy, sheet, 0);
        cmd.BlitFullscreenTriangle(PropID_Copy, PropID_MipDown, sheet, 1);
        cmd.BlitFullscreenTriangle(PropID_MipDown, PropID_Copy, sheet, 1);
        cmd.BlitFullscreenTriangle(PropID_Copy, context.destination, sheet, 0);
        //cmd.BuiltinBlit(context.source, PropID_MipDown);
        //cmd.BuiltinBlit(PropID_MipDown, context.destination);
        cmd.ReleaseTemporaryRT(PropID_MipDown);
        cmd.ReleaseTemporaryRT(PropID_Copy);
        //cmd.BuiltinBlit(context.source, context.destination);

    }
}
