Shader "Hidden/RadialBlur"
{   
    SubShader
    {
        // No culling or depth
        Cull Off ZWrite Off ZTest Always

        Pass
        {
			HLSLPROGRAM
            #pragma vertex VertDefault
            #pragma fragment Frag

			#include "Packages/com.unity.postprocessing/PostProcessing/Shaders/StdLib.hlsl"
			//#include "Assets/Plugins/com.unity.postprocessing@2.1.6/PostProcessing/Shaders/StdLib.hlsl"

			TEXTURE2D_SAMPLER2D(_MainTex, sampler_MainTex);
			
			float2 _Center;
			float _CenterSize;			
			float _BlurSize;

			//TEXTURE2D_SAMPLER2D(_Tex,sampler_Tex);
			float4 Frag(VaryingsDefault i) : SV_Target
			{				
				half2 dir = _Center - i.texcoord ;
				half len = length(dir);
				dir /= len;
				float2 uv = i.texcoord;
				float4 color = SAMPLE_TEXTURE2D(_MainTex, sampler_MainTex, uv);
				//blur
				float t = saturate((len - _CenterSize)/(1.0 - _CenterSize)) * _BlurSize;
				float2 offset = dir * t;
				float subParam = 1.0 / (4.0 + t * 3);
				float4 sum = color * subParam;

				sum += SAMPLE_TEXTURE2D(_MainTex, sampler_MainTex, uv + offset * 0.03) * subParam;
				sum += SAMPLE_TEXTURE2D(_MainTex, sampler_MainTex, uv + offset * 0.04) * subParam;
				sum += SAMPLE_TEXTURE2D(_MainTex, sampler_MainTex, uv + offset * 0.05) * subParam;	
				return sum;

			}
			ENDHLSL
        }
    }
}
