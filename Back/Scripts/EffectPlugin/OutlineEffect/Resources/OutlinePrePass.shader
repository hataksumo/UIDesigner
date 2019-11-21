// Upgrade NOTE: replaced 'mul(UNITY_MATRIX_MVP,*)' with 'UnityObjectToClipPos(*)'

//描边Shader
//by：puppet_master
//2017.6.7

Shader "Hidden/OutlinePrePass"
{
	//子着色器	
	SubShader
	{
		
		//描边使用两个Pass，第一个pass沿法线挤出一点，只输出描边的颜色
		Pass
		{
			CGPROGRAM
			#include "UnityCG.cginc"
			fixed4 _OutlineCol;
			
			struct v2f
			{
				float4 pos : SV_POSITION;
			};

			v2f vert(appdata_full v)
			{
				v2f o;
				o.pos = UnityObjectToClipPos(v.vertex);
				return o;
			}

			fixed4 frag(v2f i) : SV_Target
			{
				//这个Pass直接输出描边颜色
				return fixed4(_OutlineCol.rgb,1);
			}

			//使用vert函数和frag函数
			#pragma vertex vert
			#pragma fragment frag
			ENDCG
		}

		Pass
		{
				Cull front
			CGPROGRAM
			#include "UnityCG.cginc"
			fixed4 _OutlineCol;

			struct v2f
			{
				float4 pos : SV_POSITION;
			};

			v2f vert(appdata_full v)
			{
				v2f o;
				o.pos = UnityObjectToClipPos(v.vertex +  v.normal * 0.015);
				return o;
			}

			fixed4 frag(v2f i) : SV_Target
			{
				//这个Pass直接输出描边颜色
				return fixed4(_OutlineCol.rgb,1);
			}

			//使用vert函数和frag函数
			#pragma vertex vert
			#pragma fragment frag
			ENDCG
		}
	}
}