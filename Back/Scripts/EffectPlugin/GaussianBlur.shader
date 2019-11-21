Shader "Custom/GaussianBlur"
{
	Properties
	{
		_MainTex ("Texture", 2D) = "white" {}
		// _BlurRange("_BlurRange", Range(0, 30)) = 0.1
		// _offset ("_offset", Vector) = (1, 0, 0, 0)
	}
	SubShader
	{
	
		Pass
		{
			CGPROGRAM
			#pragma vertex vert
			#pragma fragment frag
			
			#include "UnityCG.cginc"

			struct appdata
			{
				float4 vertex : POSITION;
				float2 uv : TEXCOORD0;
			};

			struct v2f
			{
				float2 uv0 : TEXCOORD0;
				float4 uv1 : TEXCOORD1;
				float4 uv2 : TEXCOORD2;
				float4 uv3 : TEXCOORD3;
				float4 uv4 : TEXCOORD4;
				float4 vertex : SV_POSITION;
			};

			float4 _MainTex_TexelSize;
			half _BlurRange;
			float4 _offset;

			v2f vert (appdata v)
			{
				v2f o;
				o.vertex = UnityObjectToClipPos(v.vertex);
				o.uv0 = v.uv;
				_offset *= _MainTex_TexelSize.xyxy;

				// o.uv1 = v.uv.xyxy + _offset.xyxy * float4(-_BlurRange, -_BlurRange, _BlurRange, _BlurRange);
				// o.uv2 = v.uv.xyxy + _offset.xyxy * float4(_BlurRange, -_BlurRange, -_BlurRange, _BlurRange);
				// o.uv3 = v.uv.xyxy + _offset.xyxy * float4(-_BlurRange, -_BlurRange, _BlurRange, _BlurRange) * 2;
				// o.uv4 = v.uv.xyxy + _offset.xyxy * float4(_BlurRange, -_BlurRange, -_BlurRange, _BlurRange) * 2;
				o.uv1 = v.uv.xyxy + _offset.xyxy * float4(_BlurRange, _BlurRange, -_BlurRange, -_BlurRange);
				o.uv2 = v.uv.xyxy + _offset.xyxy * float4(_BlurRange, _BlurRange, -_BlurRange, -_BlurRange) * 2;
				o.uv3 = v.uv.xyxy + _offset.xyxy * float4(_BlurRange, _BlurRange, -_BlurRange, -_BlurRange) * 3;
				return o;
			}
			
			sampler2D _MainTex;

			fixed4 frag (v2f i) : SV_Target
			{
				float4 color = float4(0, 0, 0, 0);
				color += 0.45 * tex2D(_MainTex, i.uv0);
				color += 0.2 * tex2D(_MainTex, i.uv1.xy);
				color += 0.2 * tex2D(_MainTex, i.uv1.zw);
				color += 0.06 * tex2D(_MainTex, i.uv2.xy);
				color += 0.06 * tex2D(_MainTex, i.uv2.zw);
				color += 0.015 * tex2D(_MainTex, i.uv3.xy);
				color += 0.015 * tex2D(_MainTex, i.uv3.zw);
				return color;
			}
			ENDCG
		}
	}
}
