Shader "Unlit/SceneBackground"
{
	Properties
	{
		_MainTex("Texture", Cube) = "_Skybox" {}
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
				float3 dir : TEXCOORD0;				
			};

			samplerCUBE _MainTex;
			fixed4 _Color;
			
			v2f vert (appdata v)
			{
				v2f o;
				o.vertex = UnityObjectToClipPos(v.vertex);
				o.dir = WorldSpaceViewDir(v.vertex);
				return o;
			}
			
			fixed4 frag (v2f i) : SV_Target
			{
				// sample the texture
				fixed3 col = texCUBE(_MainTex, i.dir).rgb * _Color.rgb;
				return fixed4( col.rgb,_Color.a);
			}
			ENDCG
		}
	}
}
