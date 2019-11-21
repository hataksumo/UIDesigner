using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.Serialization;
using UnityEngine.Rendering.PostProcessing;

[SerializeField]
[PostProcess(typeof(Honkai3BloomRenderer), PostProcessEvent.BeforeStack, "Custom/Honkai3Bloom")]
public class Honkai3Bloom : PostProcessEffectSettings
{

    public ColorParameter _bloomColor = new ColorParameter { value = Color.white };
    public FloatParameter _Scaler = new FloatParameter { value = 0f };
    [Range(0f, 1.5f)]
    public FloatParameter _Threshhold = new FloatParameter { value = 1f };
    //[DisplayName("Use ACES(Legacy)"), Tooltip("将在下个版本移除")]
    //public BoolParameter _UseACESFile = new BoolParameter { value = true };
    [DisplayName("Tone Mode"), Tooltip("Select a tonemapping algorithm to use at the end of the color grading process.")]
    public Honkai3BloomRenderer.ToneTypeParameter ToneType = new Honkai3BloomRenderer.ToneTypeParameter { value = Honkai3BloomRenderer.ToneType.None };

    //[Range(-1.0f, 1.0f)]
    //public FloatParameter _Hue = new FloatParameter { value = 1f };
    //[Range(-1.0f, 1.0f)]
    //public FloatParameter _Saturation = new FloatParameter { value = 1f };
    //[Range(-1.0f, 1.0f)]
    //public FloatParameter _Value = new FloatParameter { value = 1f };

    //扭曲参数
    public bool _DistortionSwitch = false; //扭曲开关

    public TextureParameter _NoiseTex = new TextureParameter { value = null };
    public TextureParameter _MaskTex = new TextureParameter { value = null };

   [Range(0f, 1f)]
    public FloatParameter _MoveSpeed = new FloatParameter { value = 0.0136f };
    [Range(0f, 0.1f)]
    public FloatParameter _MoveForce = new FloatParameter { value = 0.0361f };
    

    public override bool IsEnabledAndSupported( PostProcessRenderContext context )
    {
        return enabled.value;
    }
}


public class Honkai3BloomRenderer : PostProcessEffectRenderer<Honkai3Bloom>
{
    PropertySheet sheet = null;
    Shader bloomShader = null;
    //id for rendertextures
    int rt_320x180 = -1;
    int rt_256x256 = -1;
    int rt_256x256x1 = -1;
    int rt_128x128 = -1;
    int rt_128x128x1 = -1;
    int rt_64x64 = -1;
    int rt_64x64x1 = -1;
    int rt_32x32 = -1;
    int rt_32x32x1 = -1;
    int rt_1920x1080 = -1;

    //prop id
    int prop_texelSize = -1;
    int prop_Color = -1;
    int prop_Scaler = -1;
    int prop_Threshhold = -1;
    int prop_Coeff = -1;
    int prop_Tex0 = -1;
    int prop_Tex1 = -1;
    int prop_Tex2 = -1;
    int prop_Tex3 = -1;
    int prop_HSV = -1;
    int prop_NoiseTex = -1;
    int prop_MaskTex = -1;
    int prop_MoveSpeed = -1;
    int prop_MoveForce = -1;
    public enum ToneType
    {
        None,
        Neutral,
        ACES
    }
    [System.Serializable]
    public sealed class ToneTypeParameter : ParameterOverride<ToneType> { }

    public override void Init()
    {
        bloomShader = Shader.Find("Hidden/Hokai3Bloom");
        //rt propid
        rt_320x180 = Shader.PropertyToID("RT_320X180");
        rt_256x256 = Shader.PropertyToID("RT_256X256");
        rt_256x256x1 = Shader.PropertyToID("RT_256X256X1");
        rt_128x128 = Shader.PropertyToID("RT_128X128");
        rt_128x128x1 = Shader.PropertyToID("RT_128X128X1");
        rt_64x64 = Shader.PropertyToID("RT_64X64");
        rt_64x64x1 = Shader.PropertyToID("RT_64X64X1");
        rt_32x32 = Shader.PropertyToID("RT_32X32");
        rt_32x32x1 = Shader.PropertyToID("RT_32X32X1");
        rt_1920x1080 = Shader.PropertyToID("RT_1920x1080");
        //prop id
        prop_texelSize = Shader.PropertyToID("_texelSize");
        prop_Color = Shader.PropertyToID("_Color");
        prop_Scaler = Shader.PropertyToID("_Scaler");
        prop_Threshhold = Shader.PropertyToID("_Threshhold");
        prop_Coeff = Shader.PropertyToID("_Coeff");
        prop_Tex0 = Shader.PropertyToID("_Tex0");
        prop_Tex1 = Shader.PropertyToID("_Tex1");
        prop_Tex2 = Shader.PropertyToID("_Tex2");
        prop_Tex3 = Shader.PropertyToID("_Tex3");
        prop_HSV = Shader.PropertyToID("_HSV");
        prop_NoiseTex = Shader.PropertyToID("_NoiseTex");
        prop_MaskTex = Shader.PropertyToID("_MaskTex");
        prop_MoveSpeed = Shader.PropertyToID("_MoveSpeed");
        prop_MoveForce = Shader.PropertyToID("_MoveForce");
        base.Init();
    }

    public override void Render( PostProcessRenderContext context )
    {
        if (bloomShader == null) return;

        var cmd = context.command;       

       // cmd.BeginSample("Honkei3Bloom");
        var texFormat = context.sourceFormat;
        sheet = context.propertySheets.Get(bloomShader);
        sheet.ClearKeywords();
        cmd.GetTemporaryRT(rt_320x180, 320, 180, 0, FilterMode.Bilinear, texFormat);
        sheet.properties.SetVector(prop_texelSize, new Vector2(0.00078f, 0.00139f));
        sheet.properties.SetColor(prop_Color, settings._bloomColor.value);
        cmd.BlitFullscreenTriangle(context.source, rt_320x180, sheet, 2); //pass First

        //256
        //copy
        cmd.GetTemporaryRT(rt_256x256, 256, 256, 0, FilterMode.Bilinear, texFormat);
        cmd.GetTemporaryRT(rt_256x256x1, 256, 256, 0, FilterMode.Bilinear, texFormat);
        sheet.properties.SetVector(prop_texelSize, new Vector2(0.00156f, 0.00278f));
        cmd.BlitFullscreenTriangle(rt_320x180, rt_256x256x1, sheet, 2);//pass First
        cmd.ReleaseTemporaryRT(rt_320x180);
        //ScalerThreshold
        sheet.properties.SetFloat(prop_Scaler, settings._Scaler.value);
        sheet.properties.SetFloat(prop_Threshhold, settings._Threshhold.value);
        cmd.BlitFullscreenTriangle(rt_256x256x1, rt_256x256, sheet, 1);//pass ScalerThreshold
        //Scaler
        sheet.properties.SetVector(prop_Scaler, new Vector2(0.5625f, 0.00f));
        cmd.BlitFullscreenTriangle(rt_256x256, rt_256x256x1, sheet, 3);//pass Scaler1
        sheet.properties.SetVector(prop_Scaler, new Vector2(0.00f, 1.00f));
        cmd.BlitFullscreenTriangle(rt_256x256x1, rt_256x256, sheet, 3);//pass Scaler1

        cmd.ReleaseTemporaryRT(rt_256x256x1);
        //res in rt_256x256

        //128
        cmd.GetTemporaryRT(rt_128x128, 128, 128, 0, FilterMode.Bilinear, texFormat);
        cmd.GetTemporaryRT(rt_128x128x1, 128, 128, 0, FilterMode.Bilinear, texFormat);

        cmd.BlitFullscreenTriangle(rt_256x256, rt_128x128, sheet, 0);//pass None

        //scaler
        sheet.properties.SetVector(prop_Scaler, new Vector2(0.5625f, 0.00f));
        cmd.BlitFullscreenTriangle(rt_128x128, rt_128x128x1, sheet, 4);//pass Scaler2
        sheet.properties.SetVector(prop_Scaler, new Vector2(0.00f, 1.00f));
        cmd.BlitFullscreenTriangle(rt_128x128x1, rt_128x128, sheet, 4);//pass Scaler2

        cmd.ReleaseTemporaryRT(rt_128x128x1);
        //res in rt_128x128

        //64
        cmd.GetTemporaryRT(rt_64x64, 64, 64, 0, FilterMode.Bilinear, texFormat);
        cmd.GetTemporaryRT(rt_64x64x1, 64, 64, 0, FilterMode.Bilinear, texFormat);

        cmd.BlitFullscreenTriangle(rt_128x128, rt_64x64, sheet, 0);//pass None

        //scaler
        sheet.properties.SetVector(prop_Scaler, new Vector2(0.5625f, 0.00f));
        cmd.BlitFullscreenTriangle(rt_64x64, rt_64x64x1, sheet, 5);//pass Scaler3
        sheet.properties.SetVector(prop_Scaler, new Vector2(0.00f, 1.00f));
        cmd.BlitFullscreenTriangle(rt_64x64x1, rt_64x64, sheet, 5);//pass Scaler3

        cmd.ReleaseTemporaryRT(rt_64x64x1);
        //res in rt_64x64

        //32
        cmd.GetTemporaryRT(rt_32x32, 32, 32, 0, FilterMode.Bilinear, texFormat);
        cmd.GetTemporaryRT(rt_32x32x1, 32, 32, 0, FilterMode.Bilinear, texFormat);

        cmd.BlitFullscreenTriangle(rt_64x64, rt_32x32, sheet, 0);//pass None
        sheet.properties.SetVector(prop_Scaler, new Vector2(0.5625f, 0.00f));
        cmd.BlitFullscreenTriangle(rt_32x32, rt_32x32x1, sheet, 6);//pass Scaler4
        sheet.properties.SetVector(prop_Scaler, new Vector2(0.00f, 1.00f));
        cmd.BlitFullscreenTriangle(rt_32x32x1, rt_32x32, sheet, 6);//pass Scaler4

        cmd.ReleaseTemporaryRT(rt_32x32x1);

        sheet.properties.SetVector(prop_Coeff, new Vector4(0.24f, 0.24f, 0.28f, 0.225f));
        cmd.SetGlobalTexture(prop_Tex0, rt_256x256);
        cmd.SetGlobalTexture(prop_Tex1, rt_128x128);
        cmd.SetGlobalTexture(prop_Tex2, rt_64x64);
        cmd.SetGlobalTexture(prop_Tex3, rt_32x32);

        if (settings.ToneType.value == ToneType.ACES)
            sheet.EnableKeyword("TONEMAPPING_ACES");
        else if (settings.ToneType.value == ToneType.Neutral)
            sheet.EnableKeyword("TONEMAPPING_NEUTRAL");
        //sheet.properties.SetVector(prop_HSV,
        //    new Vector4(settings._Hue.value, settings._Saturation.value, settings._Value.value));
        //if (settings._UseACESFile)
        //{
        //    sheet.EnableKeyword("USE_ACESFILM");
        //}

        if(settings._DistortionSwitch == true)
        {
            // 如果开启扭曲，进行扭曲处理,
            cmd.GetTemporaryRT(rt_1920x1080, context.screenWidth, context.screenHeight, 0, FilterMode.Bilinear, texFormat);
            cmd.BlitFullscreenTriangle(context.source, rt_1920x1080, sheet, 7);

            sheet.properties.SetFloat(prop_MoveSpeed, settings._MoveSpeed);
            sheet.properties.SetFloat(prop_MoveForce, settings._MoveForce);
            sheet.properties.SetTexture(prop_NoiseTex, settings._NoiseTex);
            sheet.properties.SetTexture(prop_MaskTex, settings._MaskTex);

            cmd.BlitFullscreenTriangle(rt_1920x1080, context.destination, sheet, 8);
            cmd.ReleaseTemporaryRT(rt_1920x1080);
            settings._DistortionSwitch = false;
        }
        else
        {
            cmd.BlitFullscreenTriangle(context.source, context.destination, sheet, 7);
        }
       


        cmd.ReleaseTemporaryRT(rt_256x256);
        cmd.ReleaseTemporaryRT(rt_128x128);
        cmd.ReleaseTemporaryRT(rt_64x64);
        cmd.ReleaseTemporaryRT(rt_32x32);

        //cmd.EndSample("Honkei3Bloom");

    }
}
