// Unity built-in shader source. Copyright (c) 2016 Unity Technologies. MIT license (see license.txt)

Shader "Hidden/MaskCut"
{
    Properties
    {
        [PerRendererData] _MainTex ("Sprite Texture", 2D) = "white" {}
       
        _StencilComp ("Stencil Comparison", Float) = 8
        _Stencil ("Stencil ID", Float) = 0
        _StencilOp ("Stencil Operation", Float) = 0
        _StencilWriteMask ("Stencil Write Mask", Float) = 255
        _StencilReadMask ("Stencil Read Mask", Float) = 255

    }

    SubShader
    {
        Tags
        {           
			"Queue" = "Transparent"
			"IgnoreProjector" = "True"
			"RenderType" = "CUTIMAGE"
			"PreviewType" = "Plane"
			"CanUseSpriteAtlas" = "True"
        }

      /*  Stencil
        {
            Ref [_Stencil]
            Comp [_StencilComp]
            Pass [_StencilOp]
            ReadMask [_StencilReadMask]
            WriteMask [_StencilWriteMask]
        }*/

        Cull Off
        Lighting Off
        ZWrite Off
       // ZTest [unity_GUIZTestMode]
        //Blend SrcAlpha OneMinusSrcAlpha
        //ColorMask [_ColorMask]

        Pass
        {           
			
        CGPROGRAM
            #pragma vertex vert
            #pragma fragment frag
            
            #include "UnityCG.cginc"
            #include "UnityUI.cginc"

            //#pragma multi_compile __ UNITY_UI_CLIP_RECT
            //#pragma multi_compile __ UNITY_UI_ALPHACLIP

            struct appdata_t
            {
                float4 vertex   : POSITION;
                float4 color    : COLOR;
                float2 texcoord : TEXCOORD0;
                UNITY_VERTEX_INPUT_INSTANCE_ID
            };

            struct v2f
            {
                float4 vertex   : SV_POSITION;               
                float2 texcoord  : TEXCOORD0;             
                UNITY_VERTEX_OUTPUT_STEREO
            };

            sampler2D _MainTex;                     
            float4 _MainTex_ST;

            v2f vert(appdata_t v)
            {
                v2f OUT;
               // UNITY_SETUP_INSTANCE_ID(v);
                //UNITY_INITIALIZE_VERTEX_OUTPUT_STEREO(OUT);              
                OUT.vertex = UnityObjectToClipPos(v.vertex);

                OUT.texcoord = TRANSFORM_TEX(v.texcoord, _MainTex);               
                return OUT;
            }

            fixed4 frag(v2f IN) : SV_Target
            {
				half4 color = tex2D(_MainTex, IN.texcoord);               
               // clip (0.001 - color.r);
                return color;
            }
        ENDCG
        }
    }
}
