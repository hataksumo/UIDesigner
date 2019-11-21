using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.Serialization;
using UnityEngine.Rendering.PostProcessing;

[SerializeField]
[PostProcess(typeof(SimpleToneMapRenderer), PostProcessEvent.BeforeStack, "Custom/SimpleToneMap")]
public class SimpleToneMap : PostProcessEffectSettings
{
    [DisplayName("Tone Mode"), Tooltip("Select a tonemapping algorithm to use at the end of the color grading process.")]
    public SimpleToneMapRenderer.ToneTypeParameter ToneType = new SimpleToneMapRenderer.ToneTypeParameter { value = SimpleToneMapRenderer.ToneType.None };

    //[Range(-1.0f, 1.0f)]
    //public FloatParameter _Hue = new FloatParameter { value = 1f };
    //[Range(-1.0f, 1.0f)]
    //public FloatParameter _Saturation = new FloatParameter { value = 1f };
    //[Range(-1.0f, 1.0f)]
    //public FloatParameter _Value = new FloatParameter { value = 1f };

    public override bool IsEnabledAndSupported( PostProcessRenderContext context )
    {
        return enabled.value 
            &&( ToneType.value != SimpleToneMapRenderer.ToneType.None
                //|| _Hue.value < 1f
                //|| _Saturation.value < 1f
                //|| _Value.value < 1f
            )
            ;
    }
}

public class SimpleToneMapRenderer : PostProcessEffectRenderer<SimpleToneMap>
{
    PropertySheet sheet = null;
    Shader toneMapShader = null;
    public enum ToneType
    {
        None,
        Neutral,
        ACES
    }
    [System.Serializable]
    public sealed class ToneTypeParameter : ParameterOverride<ToneType> { }
    int prop_HSV = -1;

    public override void Init()
    {
        toneMapShader = Shader.Find("Hidden/SimpleTonemap");
        prop_HSV = Shader.PropertyToID("_HSV");
        base.Init();
    }

    public override void Render( PostProcessRenderContext context )
    {
        if (toneMapShader == null) return;

        var cmd = context.command;
        sheet = context.propertySheets.Get(toneMapShader);
        sheet.ClearKeywords();

        if (settings.ToneType.value == ToneType.ACES)
            sheet.EnableKeyword("TONEMAPPING_ACES");
        else if (settings.ToneType.value == ToneType.Neutral)
            sheet.EnableKeyword("TONEMAPPING_NEUTRAL");
        //sheet.properties.SetVector(prop_HSV,
        //    new Vector4(settings._Hue.value, settings._Saturation.value, settings._Value.value));

        cmd.BlitFullscreenTriangle(context.source, context.destination, sheet, 1);
    }


}