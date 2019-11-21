Shader "Unlit/SceneMasker"
{
	Properties
	{
		//_MainTex ("Texture", 2D) = "white" {}
		_Color ("Tin Color", color) = (1,1,1,1)
	}
	SubShader
	{
		Tags { "RenderType"="Transparent" "Queue"="Transparent" }		
		ztest off
		zwrite off			
		Blend SrcAlpha OneMinusSrcAlpha

		Pass
		{
			CGPROGRAM
			#pragma vertex vert
			#pragma fragment frag		
			
			#include "UnityCG.cginc"

			struct appdata
			{
				float4 vertex : POSITION;
				//float2 uv : TEXCOORD0;
			};

			struct v2f
			{
				float4 vertex : SV_POSITION;
				//float2 uv : TEXCOORD0;				
			};

			//sampler2D _MainTex;		
			fixed4 _Color;
			
			v2f vert (appdata v)
			{
				v2f o;
				o.vertex = UnityObjectToClipPos(v.vertex);
				//o.uv = v.uv;
				return o;
			}
			
			fixed4 frag (v2f i) : SV_Target
			{
				// sample the texture
				//fixed4 col = tex2D(_MainTex, i.uv) * _Color;
				//return col;
				return _Color;
			}
			ENDCG
		}
	}
}
