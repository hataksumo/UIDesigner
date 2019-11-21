using System;
using UnityEngine;
using UnityEngine.Rendering.PostProcessing;
using UnityEngine.Rendering;
[Serializable]
//[PostProcess(typeof(PostBloomEffectRender),PostProcessEvent.AfterStack,"zhj/PostBloom")]
public sealed class PostBloomEffect: PostProcessEffectSettings
{
    [HideInInspector]
    public Vector2Parameter _FirstScaler = new Vector2Parameter { value = new Vector2(0.5625f, 0.00f) };
    [HideInInspector]
    public Vector2Parameter _SecondScaler = new Vector2Parameter { value = new Vector2(0.00f, 1.00f) };

    public Vector4Parameter _Coeff = new Vector4Parameter { value = new Vector4(0.24f, 0.24f, 0.28f, 0.225f) };

    public FloatParameter _ThreshholdScaler = new FloatParameter { value = 1.06f };
    [Range(0.0f, 1.0f)]
    public FloatParameter _Threshhold = new FloatParameter { value = 0.15f };
    public ColorParameter _bloomColor = new ColorParameter { value = new Color(1.0f, 1.0f, 1.0f, 1.0f) };
}




public class PostBloomEffectRender : PostProcessEffectRenderer<PostBloomEffect>
{
    public override void Render(PostProcessRenderContext context)
    {
        
        RenderTexture tex320x180 = RenderTexture.GetTemporary(320, 180, 0, context.sourceFormat);

        var sheet = context.propertySheets.Get(Shader.Find("Hidden/PostProcessing/PostBloom"));

        sheet.properties.SetVector("_texelSize", new Vector2(0.00078f, 0.00139f));
        sheet.properties.SetColor("_Color", settings._bloomColor);
        context.command.BlitFullscreenTriangle(context.source, tex320x180, sheet, 2); //bloomFirst

        /////////////////// 256
        RenderTexture tex256x256 = RenderTexture.GetTemporary(256, 256, 0, context.sourceFormat);
        sheet.properties.SetVector("_texelSize", new Vector2(0.00156f, 0.00278f));
        context.command.BlitFullscreenTriangle(tex320x180, tex256x256, sheet, 2); //bloomFirst
        RenderTexture.ReleaseTemporary(tex320x180);

        RenderTexture tex256x256x1 = RenderTexture.GetTemporary(256, 256, 0, context.sourceFormat);
        sheet.properties.SetFloat("_ThresholdScaler", settings._ThreshholdScaler);
        sheet.properties.SetFloat("_Threshhold", settings._Threshhold);
        context.command.BlitFullscreenTriangle(tex256x256, tex256x256x1, sheet, 1); //ScalerThreshold
        RenderTexture.ReleaseTemporary(tex256x256);

        RenderTexture tex256x256x2 = RenderTexture.GetTemporary(256, 256, 0, context.sourceFormat);
        sheet.properties.SetVector("_Scaler", settings._FirstScaler);
        context.command.BlitFullscreenTriangle(tex256x256x1, tex256x256x2, sheet, 3); //Scaler1
        RenderTexture.ReleaseTemporary(tex256x256x1);

        RenderTexture tex256x256x3 = RenderTexture.GetTemporary(256, 256, 0, context.sourceFormat);
        sheet.properties.SetVector("_Scaler", settings._SecondScaler);
        context.command.BlitFullscreenTriangle(tex256x256x2, tex256x256x3, sheet, 3); //Scaler1
        RenderTexture.ReleaseTemporary(tex256x256x2);

        ////////////////// 128
        RenderTexture tex128x128 = RenderTexture.GetTemporary(128, 128, 0, context.sourceFormat);
        context.command.BlitFullscreenTriangle(tex256x256x3, tex128x128, sheet, 0);

        RenderTexture tex128x128x1 = RenderTexture.GetTemporary(128, 128, 0, context.sourceFormat);
        sheet.properties.SetVector("_Scaler", settings._FirstScaler);
        context.command.BlitFullscreenTriangle(tex128x128, tex128x128x1, sheet, 4);
        RenderTexture.ReleaseTemporary(tex128x128);

        RenderTexture tex128x128x2 = RenderTexture.GetTemporary(128, 128, 0, context.sourceFormat);
        sheet.properties.SetVector("_Scaler", settings._SecondScaler);
        context.command.BlitFullscreenTriangle(tex128x128x1, tex128x128x2, sheet, 4);
        RenderTexture.ReleaseTemporary(tex128x128x1);

        ///////////////////////////64
        RenderTexture tex64x64 = RenderTexture.GetTemporary(64, 64, 0, context.sourceFormat);
        context.command.BlitFullscreenTriangle(tex128x128x2, tex64x64, sheet, 0);

        RenderTexture tex64x64x1 = RenderTexture.GetTemporary(64, 64, 0, context.sourceFormat);
        sheet.properties.SetVector("_Scaler", settings._FirstScaler);
        context.command.BlitFullscreenTriangle(tex64x64, tex64x64x1, sheet, 5);
        RenderTexture.ReleaseTemporary(tex64x64);

        RenderTexture tex64x64x2 = RenderTexture.GetTemporary(64, 64, 0, context.sourceFormat);
        sheet.properties.SetVector("_Scaler", settings._SecondScaler);
        context.command.BlitFullscreenTriangle(tex64x64x1, tex64x64x2, sheet, 5);
        RenderTexture.ReleaseTemporary(tex64x64x1);

        /////////////////////// 32
        RenderTexture tex32x32 = RenderTexture.GetTemporary(32, 32, 0, context.sourceFormat);
        context.command.BlitFullscreenTriangle(tex64x64x2, tex32x32, sheet, 0);

        RenderTexture tex32x32x1 = RenderTexture.GetTemporary(32, 32, 0, context.sourceFormat);
        sheet.properties.SetVector("_Scaler", settings._FirstScaler);
        context.command.BlitFullscreenTriangle(tex32x32, tex32x32x1, sheet, 6);
        RenderTexture.ReleaseTemporary(tex32x32);

        RenderTexture tex32x32x2 = RenderTexture.GetTemporary(32, 32, 0, context.sourceFormat);
        sheet.properties.SetVector("_Scaler", settings._SecondScaler);
        context.command.BlitFullscreenTriangle(tex32x32x1, tex32x32x2, sheet, 6);
        RenderTexture.ReleaseTemporary(tex32x32x1);


        //////////////////// Final
        sheet.properties.SetVector("_Coeff", settings._Coeff);
        sheet.properties.SetTexture("_Tex0", tex256x256x3);
        sheet.properties.SetTexture("_Tex1", tex128x128x2);
        sheet.properties.SetTexture("_Tex2", tex64x64x2);
        sheet.properties.SetTexture("_Tex3", tex32x32x2);


        context.command.BlitFullscreenTriangle(context.source, context.destination, sheet, 7);

        RenderTexture.ReleaseTemporary(tex256x256x3);
        RenderTexture.ReleaseTemporary(tex128x128x2);
        RenderTexture.ReleaseTemporary(tex64x64x2);
        RenderTexture.ReleaseTemporary(tex32x32x2);
     
    }
}