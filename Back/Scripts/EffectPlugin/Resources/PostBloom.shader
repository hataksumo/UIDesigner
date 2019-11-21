Shader "Hidden/PostProcessing/PostBloom"
{
	HLSLINCLUDE


#include "Packages/com.unity.postprocessing/PostProcessing/Shaders/StdLib.hlsl"
#include "Packages/com.unity.postprocessing/PostProcessing/Shaders/Colors.hlsl"
#include "Packages/com.unity.postprocessing/PostProcessing/Shaders/Sampling.hlsl"

	TEXTURE2D_SAMPLER2D(_MainTex, sampler_MainTex);


	float4 _MainTex_TexelSize;
	float  _SampleScale;
	float _ThresholdScaler;
	half2 _Scaler;
	float _Threshhold;
	half2 _texelSize;
	half4 _Color;


	TEXTURE2D_SAMPLER2D(_Tex0, sampler_Tex0);
	TEXTURE2D_SAMPLER2D(_Tex1, sampler_Tex1);
	TEXTURE2D_SAMPLER2D(_Tex2, sampler_Tex2);
	TEXTURE2D_SAMPLER2D(_Tex3, sampler_Tex3);
	half4 _Coeff;


	struct appdata_simple
	{
		float3 vertex : POSITION;
	};

	struct v2f_simple
	{
		float4 vertex : SV_POSITION;
		float2 texcoord : TEXCOORD0;
	};


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


	half4 BloomNone(VaryingsDefault i) : SV_Target
	{
		half4 color = SAMPLE_TEXTURE2D(_MainTex, sampler_MainTex, i.texcoord);
		return color;
	}


	half4 FragScalerThreshold(VaryingsDefault i) : SV_Target
	{
		half4 col = SAMPLE_TEXTURE2D(_MainTex, sampler_MainTex, i.texcoord);
		half3 colScale = col.aaa * (col.rgb - half3(_Threshhold, _Threshhold, _Threshhold)) * _ThresholdScaler;
		half4 fin;
		fin.rgb = max(colScale.rgb, half3(0.0, 0.0, 0.0));
		fin.a = col.a;
		//return col.aaaa;
		return fin;
	}

//first 
	struct v2f_first
	{
		float4 vertex : SV_POSITION;
		half4 texcoord : TEXCOORD0;
		half4 texcoord1 : TEXCOORD1;
	};

	v2f_first Vert_First(appdata_simple v)
	{
		v2f_first o;
		o.vertex = half4(v.vertex.xy, 0.0, 1.0);

		half2 uv = TransformTriangleVertexToUV(v.vertex.xy);
		#if UNITY_UV_STARTS_AT_TOP
				uv = uv * half2(1.0, -1.0) + half2(0.0, 1.0);
		#endif
		half4 output1;
		output1.xy = uv.xy + _texelSize.xy;
		output1.zw = _texelSize.xy * half2(1.0, -1.0) + uv.xy;
		o.texcoord = output1;

		half4 output2;
		output2.xy = uv.xy - _texelSize.xy;
		output2.zw = _texelSize.xy * half2(-1.0, 1.0) + uv.xy;
		o.texcoord1 = output2;

		return o;
	}


	half4 Frag_First(v2f_first i) : SV_Target
	{
		half4 col0 = SAMPLE_TEXTURE2D(_MainTex, sampler_MainTex, i.texcoord.xy);
		half4 col1 = SAMPLE_TEXTURE2D(_MainTex, sampler_MainTex,i.texcoord.zw);
		half4 col2 = SAMPLE_TEXTURE2D(_MainTex, sampler_MainTex,i.texcoord1.xy);
		half4 col3 = SAMPLE_TEXTURE2D(_MainTex, sampler_MainTex,i.texcoord1.zw);
		half4 avg = (col0 + col1 + col2 + col3) * 0.25;
		half4 col;
		col.rgb = avg.rgb * _Color.rgb;
		col.a = avg.a;
		return col;
	}
//end first


	half4 Frag_Scaler1(v2f_simple i) : SV_Target
	{
		half4 scaleUV = _Scaler.xyxy * half4(-0.0119120004, -0.0119120004, -0.00476399995, -0.00476399995) + i.texcoord.xyxy;
		half4 texCol1 = SAMPLE_TEXTURE2D(_MainTex, sampler_MainTex, scaleUV.xy); //tex2D(_MainTex, scaleUV.xy);
		half4 texCol2 = SAMPLE_TEXTURE2D(_MainTex, sampler_MainTex, scaleUV.zw);//tex2D(_MainTex, scaleUV.zw);

		half4 scaleUV1 = _Scaler.xyxy * half4(0.00154700002, 0.00154700002, 0.00823399983, 0.00823399983) + i.texcoord.xyxy;
		half4 texCol3 = SAMPLE_TEXTURE2D(_MainTex, sampler_MainTex, scaleUV1.xy); //tex2D(_MainTex, scaleUV1.xy);
		half4 texCol4 = SAMPLE_TEXTURE2D(_MainTex, sampler_MainTex, scaleUV1.zw); //tex2D(_MainTex, scaleUV1.zw);

		half2 scaleUV2 = _Scaler.xy * half2(0.015625, 0.015625) + i.texcoord.xy;
		half4 texCol5 = SAMPLE_TEXTURE2D(_MainTex, sampler_MainTex, scaleUV2); //tex2D(_MainTex, scaleUV1.xy);

		half4 col =
			texCol1 * half4(0.00860899966, 0.00860899966, 0.00860899966, 0.00860899966)
			+ texCol2 * half4(0.308025986, 0.308025986, 0.308025986, 0.308025986)
			+ texCol3 * half4(0.607088029, 0.607088029, 0.607088029, 0.607088029)
			+ texCol4 * half4(0.0758519992, 0.0758519992, 0.0758519992, 0.0758519992)
			+ texCol5 * half4(0.000425000006, 0.000425000006, 0.000425000006, 0.000425000006);
		return col;
	}

	half4 Frag_Scaler2(v2f_simple i) : SV_Target
	{
		half4 scaleUV = _Scaler.xyxy * half4(-0.0475560017, -0.0475560017, -0.0325350016, -0.0325350016) + i.texcoord.xyxy;
		half4 texCol1 = SAMPLE_TEXTURE2D(_MainTex, sampler_MainTex, scaleUV.xy);
		half4 texCol2 = SAMPLE_TEXTURE2D(_MainTex, sampler_MainTex, scaleUV.zw);

		half4 scaleUV1 = _Scaler.xyxy * half4(-0.0178779997, -0.0178779997, -0.00355400005, -0.00355400005) + i.texcoord.xyxy;
		half4 texCol3 = SAMPLE_TEXTURE2D(_MainTex, sampler_MainTex, scaleUV1.xy);
		half4 texCol4 = SAMPLE_TEXTURE2D(_MainTex, sampler_MainTex, scaleUV1.zw);

		half4 scaleUV2 = _Scaler.xyxy * half4(0.0106859999, 0.0106859999, 0.0251579992, 0.0251579992) + i.texcoord.xyxy;
		half4 texCol5 = SAMPLE_TEXTURE2D(_MainTex, sampler_MainTex, scaleUV2.xy);
		half4 texCol6 = SAMPLE_TEXTURE2D(_MainTex, sampler_MainTex, scaleUV2.zw);

		half4 scaleUV3 = _Scaler.xyxy * half4(0.0400049984, 0.0400049984, 0.0546879992, 0.0546879992) + i.texcoord.xyxy;
		half4 texCol7 = SAMPLE_TEXTURE2D(_MainTex, sampler_MainTex, scaleUV3.xy);
		half4 texCol8 = SAMPLE_TEXTURE2D(_MainTex, sampler_MainTex, scaleUV3.zw);

		half4 col =
			texCol1 * half4(0.000394000002, 0.000394000002, 0.000394000002, 0.000394000002)
			+ texCol2 * half4(0.0159489997, 0.0159489997, 0.0159489997, 0.0159489997)
			+ texCol3 * half4(0.163608998, 0.163608998, 0.163608998, 0.163608998)
			+ texCol4 * half4(0.439938992, 0.439938992, 0.439938992, 0.439938992)
			+ texCol5 * half4(0.316579998, 0.316579998, 0.316579998, 0.316579998)
			+ texCol6 * half4(0.0605119988, 0.0605119988, 0.0605119988, 0.0605119988)
			+ texCol7 * half4(0.00298199989, 0.00298199989, 0.00298199989, 0.00298199989)
			+ texCol8 * half4(3.40000006e-05, 3.40000006e-05, 3.40000006e-05, 3.40000006e-05)
			;
		return col;
	}

	half4 Frag_Scaler3(v2f_simple i) : SV_Target
	{
		half4 scaleUV = _Scaler.xyxy * half4(-0.143375993, -0.143375993, -0.112940997, -0.112940997) + i.texcoord.xyxy;
		half4 texCol1 = SAMPLE_TEXTURE2D(_MainTex, sampler_MainTex, scaleUV.xy);
		half4 texCol2 = SAMPLE_TEXTURE2D(_MainTex, sampler_MainTex, scaleUV.zw);

		half4 scaleUV1 = _Scaler.xyxy * half4(-0.0826620013, -0.0826620013, -0.0525240004, -0.0525240004) + i.texcoord.xyxy;
		half4 texCol3 = SAMPLE_TEXTURE2D(_MainTex, sampler_MainTex, scaleUV1.xy);
		half4 texCol4 = SAMPLE_TEXTURE2D(_MainTex, sampler_MainTex, scaleUV1.zw);

		half4 scaleUV2 = _Scaler.xyxy * half4(-0.0224900004, -0.0224900004, 0.00749500003, 0.00749500003) + i.texcoord.xyxy;
		half4 texCol5 = SAMPLE_TEXTURE2D(_MainTex, sampler_MainTex, scaleUV2.xy);
		half4 texCol6 = SAMPLE_TEXTURE2D(_MainTex, sampler_MainTex, scaleUV2.zw);

		half4 scaleUV3 = _Scaler.xyxy * half4(0.037498001, 0.037498001, 0.0675780028, 0.0675780028) + i.texcoord.xyxy;
		half4 texCol7 = SAMPLE_TEXTURE2D(_MainTex, sampler_MainTex, scaleUV3.xy);
		half4 texCol8 = SAMPLE_TEXTURE2D(_MainTex, sampler_MainTex, scaleUV3.zw);

		half4 scaleUV4 = _Scaler.xyxy * half4(0.0977829993, 0.0977829993, 0.128139004, 0.128139004) + i.texcoord.xyxy;
		half4 texCol9 = SAMPLE_TEXTURE2D(_MainTex, sampler_MainTex,  scaleUV4.xy);
		half4 texCol10 = SAMPLE_TEXTURE2D(_MainTex, sampler_MainTex,  scaleUV4.zw);

		half2 scaleUV5 = _Scaler.xy * half2(0.15625, 0.15625) + i.texcoord.xy;
		half4 texCol11 = SAMPLE_TEXTURE2D(_MainTex, sampler_MainTex,  scaleUV5.xy);

		half4 col =
			texCol1 * half4(0.000270999997, 0.000270999997, 0.000270999997, 0.000270999997)
			+ texCol2 * half4(0.00389300007, 0.00389300007, 0.00389300007, 0.00389300007)
			+ texCol3 * half4(0.0297420006, 0.0297420006, 0.0297420006, 0.0297420006)
			+ texCol4 * half4(0.121250004, 0.121250004, 0.121250004, 0.121250004)
			+ texCol5 * half4(0.264445007, 0.264445007, 0.264445007, 0.264445007)
			+ texCol6 * half4(0.309049994, 0.309049994, 0.309049994, 0.309049994)
			+ texCol7 * half4(0.193601996, 0.193601996, 0.193601996, 0.193601996)
			+ texCol8 * half4(0.0649449974, 0.0649449974, 0.0649449974, 0.0649449974)
			+ texCol9 * half4(0.0116410004, 0.0116410004, 0.0116410004, 0.01164100049)
			+ texCol10 * half4(0.00111199997, 0.00111199997, 0.00111199997, 0.00111199997)
			+ texCol11 * half4(4.80000017e-05, 4.80000017e-05, 4.80000017e-05, 4.80000017e-05)
			;
		return col;
	}

	half4 Frag_Scaler4(v2f_simple i) : SV_Target
	{
		half4 scaleUV = _Scaler.xyxy * half4(-0.539946973, -0.539946973, -0.478147, -0.478147) + i.texcoord.xyxy;
		half4 texCol1 = SAMPLE_TEXTURE2D(_MainTex, sampler_MainTex,   scaleUV.xy);
		half4 texCol2 = SAMPLE_TEXTURE2D(_MainTex, sampler_MainTex,   scaleUV.zw);

		half4 scaleUV1 = _Scaler.xyxy * half4(-0.416377991, -0.416377991, -0.354636997, -0.354636997) + i.texcoord.xyxy;
		half4 texCol3 = SAMPLE_TEXTURE2D(_MainTex, sampler_MainTex,   scaleUV1.xy);
		half4 texCol4 = SAMPLE_TEXTURE2D(_MainTex, sampler_MainTex,   scaleUV1.zw);

		half4 scaleUV2 = _Scaler.xyxy * half4(-0.29292199, -0.29292199, -0.231227994, -0.231227994) + i.texcoord.xyxy;
		half4 texCol5 = SAMPLE_TEXTURE2D(_MainTex, sampler_MainTex,   scaleUV2.xy);
		half4 texCol6 = SAMPLE_TEXTURE2D(_MainTex, sampler_MainTex,   scaleUV2.zw);

		half4 scaleUV3 = _Scaler.xyxy * half4(-0.169552997, -0.169552997, -0.107891001, -0.107891001) + i.texcoord.xyxy;
		half4 texCol7 = SAMPLE_TEXTURE2D(_MainTex, sampler_MainTex,   scaleUV3.xy);
		half4 texCol8 = SAMPLE_TEXTURE2D(_MainTex, sampler_MainTex,   scaleUV3.zw);

		half4 scaleUV4 = _Scaler.xyxy * half4(-0.0462369993, -0.0462369993, 0.015412, 0.015412) + i.texcoord.xyxy;
		half4 texCol9 = SAMPLE_TEXTURE2D(_MainTex, sampler_MainTex,  scaleUV4.xy);
		half4 texCol10 = SAMPLE_TEXTURE2D(_MainTex, sampler_MainTex,  scaleUV4.zw);

		half4 scaleUV5 = _Scaler.xyxy * half4(0.0770630017, 0.0770630017, 0.138720006, 0.138720006) + i.texcoord.xyxy;
		half4 texCol11 = SAMPLE_TEXTURE2D(_MainTex, sampler_MainTex,   scaleUV5.xy);
		half4 texCol12 = SAMPLE_TEXTURE2D(_MainTex, sampler_MainTex,   scaleUV5.zw);

		half4 scaleUV6 = _Scaler.xyxy * half4(0.200387999, 0.200387999, 0.262071997, 0.262071997) + i.texcoord.xyxy;
		half4 texCol13 = SAMPLE_TEXTURE2D(_MainTex, sampler_MainTex,  scaleUV6.xy);
		half4 texCol14 = SAMPLE_TEXTURE2D(_MainTex, sampler_MainTex,  scaleUV6.zw);

		half4 scaleUV7 = _Scaler.xyxy * half4(0.323776007, 0.323776007, 0.385504007, 0.385504007) + i.texcoord.xyxy;
		half4 texCol15 = SAMPLE_TEXTURE2D(_MainTex, sampler_MainTex,   scaleUV7.xy);
		half4 texCol16 = SAMPLE_TEXTURE2D(_MainTex, sampler_MainTex,   scaleUV7.zw);

		half4 scaleUV8 = _Scaler.xyxy * half4(0.447257996, 0.447257996, 0.509042978, 0.509042978) + i.texcoord.xyxy;
		half4 texCol17 = SAMPLE_TEXTURE2D(_MainTex, sampler_MainTex,   scaleUV8.xy);
		half4 texCol18 = SAMPLE_TEXTURE2D(_MainTex, sampler_MainTex,   scaleUV8.zw);

		half2 scaleUV9 = _Scaler.xy * half2(0.5625, 0.5625) + i.texcoord.xy;
		half4 texCol19 = SAMPLE_TEXTURE2D(_MainTex, sampler_MainTex, scaleUV9.xy);

		half4 col =
			texCol1 * half4(4.89999984e-05, 4.89999984e-05, 4.89999984e-05, 4.89999984e-05)
			+ texCol2 * half4(0.000291000004, 0.000291000004, 0.000291000004, 0.000291000004)
			+ texCol3 * half4(0.00138300005, 0.00138300005, 0.00138300005, 0.00138300005)
			+ texCol4 * half4(0.00529999984, 0.00529999984, 0.00529999984, 0.00529999984)
			+ texCol5 * half4(0.0163780004, 0.0163780004, 0.0163780004, 0.0163780004)
			+ texCol6 * half4(0.0408219993, 0.0408219993, 0.0408219993, 0.0408219993)
			+ texCol7 * half4(0.0820680037, 0.0820680037, 0.0820680037, 0.0820680037)
			+ texCol8 * half4(0.133082002, 0.133082002, 0.133082002, 0.133082002)
			+ texCol9 * half4(0.174079999, 0.174079999, 0.174079999, 0.174079999)
			+ texCol10 * half4(0.183685005, 0.183685005, 0.183685005, 0.183685005)
			+ texCol11 * half4(0.156350002, 0.156350002, 0.156350002, 0.156350002)
			+ texCol12 * half4(0.107352003, 0.107352003, 0.107352003, 0.107352003)
			+ texCol13 * half4(0.0594570003, 0.0594570003, 0.0594570003, 0.0594570003)
			+ texCol14 * half4(0.0265619997, 0.0265619997, 0.0265619997, 0.0265619997)
			+ texCol15 * half4(0.009571, 0.009571, 0.009571, 0.009571)
			+ texCol16 * half4(0.00278099999, 0.00278099999, 0.00278099999, 0.00278099999)
			+ texCol17 * half4(0.000652000017, 0.000652000017, 0.000652000017, 0.000652000017)
			+ texCol18 * half4(0.000123000005, 0.000123000005, 0.000123000005, 0.000123000005)
			+ texCol19 * half4(1.40000002e-05, 1.40000002e-05, 1.40000002e-05, 1.40000002e-05)
			;
		return col;
	}

	half4 Frag_Final(v2f_simple i) : SV_Target
	{

		half4 colmain = SAMPLE_TEXTURE2D(_MainTex, sampler_MainTex,i.texcoord); //tex2D(_MainTex, i.vs_TEXCOORD0.xy);

		half4 col0 = SAMPLE_TEXTURE2D(_Tex0, sampler_Tex0,  i.texcoord); //tex2D(_MainTex0, i.vs_TEXCOORD0.xy);
		col0 *= _Coeff.xxxx;

		half4 col1 = half4(0, 0, 0, 0);
		if (_Coeff.y > 0.001) {
			col1 = SAMPLE_TEXTURE2D(_Tex1, sampler_Tex1 , i.texcoord); //tex2D(_MainTex1, i.vs_TEXCOORD0.xy);
			col1 *= _Coeff.yyyy;
		}

		half4 col2 = half4(0, 0, 0, 0);
		if (_Coeff.z > 0.001) {
			SAMPLE_TEXTURE2D(_Tex2, sampler_Tex2,  i.texcoord); //tex2D(_MainTex2, i.vs_TEXCOORD0.xy);
			col2 *= _Coeff.zzzz;
		}

		half4 col3 = half4(0,0,0,0);
		if (_Coeff.w > 0.001) {
			SAMPLE_TEXTURE2D(_Tex3, sampler_Tex3, i.texcoord); //tex2D(_MainTex3, i.vs_TEXCOORD0.xy);
			col3 *= _Coeff.wwww;
		}

		half4 col = colmain + col0 + col1 + col2 + col3;

		return col;
		//return half4(1, 0, 0, 1);
	}



	ENDHLSL

	SubShader
	{
		Cull Off ZWrite Off ZTest Always

		// 0: BloomNone
		Pass
		{
			HLSLPROGRAM
			#pragma vertex Vert
			#pragma fragment BloomNone
			ENDHLSL
		}
		// 1: ScalerThreshold
		Pass
		{
			HLSLPROGRAM
			#pragma vertex Vert
			#pragma fragment FragScalerThreshold
			ENDHLSL
		}
		// 2: First
		Pass
		{
			HLSLPROGRAM
			#pragma vertex Vert_First
			#pragma fragment Frag_First
			ENDHLSL
		}
		// 3: Scaler1
		Pass
		{
			HLSLPROGRAM
			#pragma vertex Vert
			#pragma fragment Frag_Scaler1
			ENDHLSL
		}
		// 4: Scaler2
		Pass
		{
			HLSLPROGRAM
			#pragma vertex Vert
			#pragma fragment Frag_Scaler2
			ENDHLSL
		}
		// 5: Scaler3
		Pass
		{
			HLSLPROGRAM
			#pragma vertex Vert
			#pragma fragment Frag_Scaler3
			ENDHLSL
		}
		// 6: Scaler4
		Pass
		{
			HLSLPROGRAM
			#pragma vertex Vert
			#pragma fragment Frag_Scaler4
			ENDHLSL
		}
		// 7: Final
		Pass
		{
			HLSLPROGRAM
			#pragma vertex Vert
			#pragma fragment Frag_Final
			ENDHLSL
		}
	}
}
