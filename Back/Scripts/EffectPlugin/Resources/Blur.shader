Shader "Hidden/Blur"
{
	HLSLINCLUDE
	#include "Packages/com.unity.postprocessing/PostProcessing/Shaders/StdLib.hlsl"
	#include "Packages/com.unity.postprocessing/PostProcessing/Shaders/Colors.hlsl"
	#include "Packages/com.unity.postprocessing/PostProcessing/Shaders/Sampling.hlsl"


	TEXTURE2D_SAMPLER2D(_MainTex, sampler_MainTex);
	float4 _MainTex_TexelSize;
	float _BlurSize;
	float4 Frag_Copy(VaryingsDefault i) : SV_Target
	{			
		return SafeHDR(SAMPLE_TEXTURE2D(_MainTex, sampler_MainTex, i.texcoord));
	}

	float4 Frag_Blur(VaryingsDefault i) : SV_Target
	{
		float2 uv = i.texcoord;
		//float4 color = DownsampleBox4Tap(TEXTURE2D_PARAM(_MainTex, sampler_MainTex), i.texcoord, UnityStereoAdjustedTexelSize(_MainTex_TexelSize).xy);

		float4 d = _MainTex_TexelSize.xyxy * float4(-1.0, -1.0, 1.0, 1.0) *_BlurSize;

		half4 s = (SAMPLE_TEXTURE2D(_MainTex, sampler_MainTex, uv ));
		s += (SAMPLE_TEXTURE2D(_MainTex, sampler_MainTex,(uv + d.xy)));
		s += (SAMPLE_TEXTURE2D(_MainTex, sampler_MainTex,(uv + d.zy)));
		s += (SAMPLE_TEXTURE2D(_MainTex, sampler_MainTex,(uv + d.xw)));
		s += (SAMPLE_TEXTURE2D(_MainTex, sampler_MainTex,(uv + d.zw)));

		float4 color = s * (1.0 / 5.0);


		return SafeHDR(color);
	}

	ENDHLSL
	SubShader
	{
		// No culling or depth
		Cull Off ZWrite Off ZTest Always

		Pass
		{
			HLSLPROGRAM
			#pragma vertex VertDefault
			#pragma fragment Frag_Copy

			ENDHLSL
		}

		Pass
		{
			HLSLPROGRAM
			#pragma vertex VertDefault
			#pragma fragment Frag_Blur
			
			ENDHLSL
		}
	}
}
