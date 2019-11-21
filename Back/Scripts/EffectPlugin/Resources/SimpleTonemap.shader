Shader "Hidden/SimpleTonemap"
{
	HLSLINCLUDE

	#include "Packages/com.unity.postprocessing/PostProcessing/Shaders/StdLib.hlsl"		
    #include "Packages/com.unity.postprocessing/PostProcessing/Shaders/Colors.hlsl"
	struct appdata_simple
	{
		float3 vertex : POSITION;
	};

	struct v2f_simple
	{
		float4 vertex : SV_POSITION;
		float2 texcoord : TEXCOORD0;
	};


	TEXTURE2D_SAMPLER2D(_MainTex, sampler_MainTex);
	v2f_simple Vert(appdata_simple v)
	{
		v2f_simple o;
		o.vertex = float4(v.vertex.xy, 0.0, 1.0);
		o.texcoord = TransformTriangleVertexToUV(v.vertex.xy);
#if UNITY_UV_STARTS_AT_TOP
		o.texcoord = o.texcoord * float2(1.0, -1.0) + float2(0.0, 1.0);
#endif
		return o;
	}
		
	float3 ToneMapping_ACESFilm(float3 x)
	{
		float a = 2.51f;
		float b = 0.03f;
		float c = 2.43f;
		float d = 0.59f;
		float e = 0.14f;
		return saturate((x*(a*x + b)) / (x*(c*x + d) + e));
	}

	ENDHLSL

	SubShader
	{
		// No culling or depth
		Cull Off ZWrite Off ZTest Always

		//pass 0 "None"
		Pass
		{
			Name "None"
			HLSLPROGRAM
			#pragma vertex Vert
			#pragma fragment Frag

			float4 Frag(v2f_simple i) : SV_Target
			{
				float4 col = SAMPLE_TEXTURE2D(_MainTex, sampler_MainTex, i.texcoord);
				return col;
			}
			ENDHLSL
		}
	
		
		//pass 1 "Final-ACES"
		Pass
		{
			Name "Final"
			HLSLPROGRAM
			#pragma vertex Vert
			#pragma fragment Frag			
			#pragma multi_compile __ TONEMAPPING_ACES TONEMAPPING_NEUTRAL
			
			float4 _Coeff; 
			float4 _HSV;
		
			float3 ToneMapping(float3 col)
			{
#if TONEMAPPING_ACES
				return ToneMapping_ACESFilm(col);
#elif TONEMAPPING_NEUTRAL
				return NeutralTonemap(col);
#else
				return col;
#endif
			}

			float4 Frag(v2f_simple i) : SV_Target
			{
				
				float4 col = SAMPLE_TEXTURE2D(_MainTex, sampler_MainTex, i.texcoord); //tex2D(_MainTex, i.vs_TEXCOORD0.xy);

				
				/*float3 colHSV = RgbToHsv(col.rgb);
				colHSV *= _HSV.xyz;
				col.rgb = HsvToRgb(colHSV);*/

				float4 output;
				output.rgb = ToneMapping(col.rgb);
				output.a = col.a;
				return output;

			}
			ENDHLSL
		}

	}
}
