// Shader created with Shader Forge v1.13 
// Shader Forge (c) Neat Corporation / Joachim Holmer - http://www.acegikmo.com/shaderforge/
// Note: Manually altering this data may prevent you from opening it in Shader Forge
/*SF_DATA;ver:1.13;sub:START;pass:START;ps:flbk:,lico:1,lgpr:1,nrmq:1,nrsp:0,limd:0,spmd:1,trmd:0,grmd:0,uamb:True,mssp:True,bkdf:True,rprd:False,enco:False,rmgx:True,rpth:0,hqsc:True,hqlp:False,tesm:0,bsrc:0,bdst:1,culm:0,dpts:2,wrdp:True,dith:0,ufog:False,aust:True,igpj:False,qofs:0,qpre:1,rntp:1,fgom:False,fgoc:False,fgod:False,fgor:False,fgmd:0,fgcr:0.5,fgcg:0.5,fgcb:0.5,fgca:1,fgde:0.01,fgrn:0,fgrf:300,ofsf:0,ofsu:0,f2p0:False;n:type:ShaderForge.SFN_Final,id:0,x:34329,y:31962,varname:node_0,prsc:2|normal-1903-OUT,emission-5545-OUT,custl-64-OUT,olwid-2431-OUT,olcol-7799-RGB,voffset-2228-OUT;n:type:ShaderForge.SFN_LightAttenuation,id:37,x:32964,y:32209,varname:node_37,prsc:2;n:type:ShaderForge.SFN_Dot,id:40,x:31764,y:32587,varname:node_40,prsc:2,dt:4|A-42-OUT,B-41-OUT;n:type:ShaderForge.SFN_NormalVector,id:41,x:31554,y:32638,prsc:2,pt:True;n:type:ShaderForge.SFN_LightVector,id:42,x:31409,y:32543,varname:node_42,prsc:2;n:type:ShaderForge.SFN_LightColor,id:63,x:33860,y:32155,varname:node_63,prsc:2;n:type:ShaderForge.SFN_Multiply,id:64,x:34056,y:32155,varname:node_64,prsc:2|A-63-RGB,B-84-OUT;n:type:ShaderForge.SFN_Multiply,id:84,x:33712,y:32143,cmnt:Diffuse Light,varname:node_84,prsc:2|A-5965-OUT,B-2105-OUT;n:type:ShaderForge.SFN_AmbientLight,id:187,x:33323,y:32415,varname:node_187,prsc:2;n:type:ShaderForge.SFN_TexCoord,id:272,x:32226,y:31667,varname:node_272,prsc:2,uv:0;n:type:ShaderForge.SFN_RemapRangeAdvanced,id:1026,x:32197,y:32697,varname:node_1026,prsc:2|IN-40-OUT,IMIN-2384-OUT,IMAX-9128-OUT,OMIN-5169-OUT,OMAX-3044-OUT;n:type:ShaderForge.SFN_Slider,id:4544,x:32509,y:32314,ptovrint:False,ptlb:MinLight,ptin:_MinLight,varname:node_4544,prsc:2,min:0,cur:0,max:1;n:type:ShaderForge.SFN_Slider,id:5426,x:32521,y:32411,ptovrint:False,ptlb:MaxLight,ptin:_MaxLight,varname:_MinLight_copy,prsc:2,min:0,cur:1,max:1;n:type:ShaderForge.SFN_Slider,id:3630,x:31336,y:33021,ptovrint:False,ptlb:Reach,ptin:_Reach,varname:node_3630,prsc:2,min:0,cur:0.5,max:1;n:type:ShaderForge.SFN_Slider,id:7181,x:31336,y:33116,ptovrint:False,ptlb:Smoothness,ptin:_Smoothness,varname:_Value_copy,prsc:2,min:0,cur:0.025,max:0.5;n:type:ShaderForge.SFN_Add,id:9128,x:31776,y:33050,varname:node_9128,prsc:2|A-3630-OUT,B-7181-OUT;n:type:ShaderForge.SFN_Subtract,id:2384,x:31776,y:32906,varname:node_2384,prsc:2|A-3630-OUT,B-7181-OUT;n:type:ShaderForge.SFN_Clamp01,id:1648,x:32372,y:32697,varname:node_1648,prsc:2|IN-1026-OUT;n:type:ShaderForge.SFN_Vector1,id:5169,x:32170,y:32843,varname:node_5169,prsc:2,v1:0;n:type:ShaderForge.SFN_Vector1,id:3044,x:32168,y:32906,varname:node_3044,prsc:2,v1:1;n:type:ShaderForge.SFN_Lerp,id:6558,x:32995,y:32384,varname:node_6558,prsc:2|A-4544-OUT,B-5426-OUT,T-1648-OUT;n:type:ShaderForge.SFN_Slider,id:2431,x:33847,y:32462,ptovrint:False,ptlb:Outline,ptin:_Outline,varname:node_2431,prsc:2,min:0,cur:0,max:1;n:type:ShaderForge.SFN_Color,id:7799,x:34004,y:32554,ptovrint:False,ptlb:OutlineColor,ptin:_OutlineColor,varname:node_7799,prsc:2,glob:False,c1:0,c2:0,c3:0,c4:1;n:type:ShaderForge.SFN_Multiply,id:2105,x:33252,y:32160,varname:node_2105,prsc:2|A-6558-OUT,B-37-OUT;n:type:ShaderForge.SFN_Vector1,id:5483,x:33323,y:32547,varname:node_5483,prsc:2,v1:0;n:type:ShaderForge.SFN_Clamp,id:7728,x:33640,y:32350,varname:node_7728,prsc:2|IN-2105-OUT,MIN-187-RGB,MAX-36-OUT;n:type:ShaderForge.SFN_Vector1,id:36,x:33523,y:32507,varname:node_36,prsc:2,v1:1;n:type:ShaderForge.SFN_ObjectScale,id:3319,x:32421,y:31895,varname:node_3319,prsc:2,rcp:False;n:type:ShaderForge.SFN_Multiply,id:324,x:32705,y:31767,varname:node_324,prsc:2|A-7035-R,B-3319-X;n:type:ShaderForge.SFN_Multiply,id:6716,x:32705,y:31891,varname:node_6716,prsc:2|A-7035-G,B-3319-Z;n:type:ShaderForge.SFN_Append,id:1132,x:32880,y:31809,varname:node_1132,prsc:2|A-324-OUT,B-6716-OUT;n:type:ShaderForge.SFN_SwitchProperty,id:5074,x:33146,y:31687,ptovrint:False,ptlb:Autotile to scale,ptin:_Autotiletoscale,varname:node_5074,prsc:2,on:True|A-272-UVOUT,B-1132-OUT;n:type:ShaderForge.SFN_ValueProperty,id:3878,x:32343,y:31557,ptovrint:False,ptlb:Base Scale,ptin:_BaseScale,varname:node_3878,prsc:2,glob:False,v1:1;n:type:ShaderForge.SFN_Divide,id:3093,x:32612,y:31530,varname:node_3093,prsc:2|A-272-UVOUT,B-3878-OUT;n:type:ShaderForge.SFN_ComponentMask,id:7035,x:32829,y:31520,varname:node_7035,prsc:2,cc1:0,cc2:1,cc3:-1,cc4:-1|IN-3093-OUT;n:type:ShaderForge.SFN_Multiply,id:5545,x:33815,y:31878,varname:node_5545,prsc:2|A-5965-OUT,B-187-RGB;n:type:ShaderForge.SFN_Lerp,id:6441,x:33747,y:31392,varname:node_6441,prsc:2|A-8359-RGB,T-6664-OUT;n:type:ShaderForge.SFN_Color,id:8359,x:33515,y:31242,ptovrint:False,ptlb:DistanceColor,ptin:_DistanceColor,varname:node_8359,prsc:2,glob:False,c1:1,c2:0,c3:0,c4:1;n:type:ShaderForge.SFN_Distance,id:1156,x:32931,y:31240,varname:node_1156,prsc:2|A-5769-XYZ,B-2239-XYZ;n:type:ShaderForge.SFN_ViewPosition,id:5769,x:32730,y:31150,varname:node_5769,prsc:2;n:type:ShaderForge.SFN_ObjectPosition,id:2239,x:32730,y:31288,varname:node_2239,prsc:2;n:type:ShaderForge.SFN_ObjectScale,id:1149,x:31751,y:31132,varname:node_1149,prsc:2,rcp:False;n:type:ShaderForge.SFN_Divide,id:2921,x:32513,y:31268,varname:node_2921,prsc:2|A-2019-OUT,B-3878-OUT;n:type:ShaderForge.SFN_Divide,id:2091,x:33101,y:31240,varname:node_2091,prsc:2|A-1156-OUT,B-2921-OUT;n:type:ShaderForge.SFN_Add,id:1000,x:31946,y:31157,varname:node_1000,prsc:2|A-1149-X,B-1149-Y;n:type:ShaderForge.SFN_Add,id:7158,x:32116,y:31170,varname:node_7158,prsc:2|A-1000-OUT,B-1149-Z;n:type:ShaderForge.SFN_Divide,id:2019,x:32305,y:31190,varname:node_2019,prsc:2|A-7158-OUT,B-1372-OUT;n:type:ShaderForge.SFN_Vector1,id:1372,x:32116,y:31303,varname:node_1372,prsc:2,v1:3;n:type:ShaderForge.SFN_ValueProperty,id:427,x:32882,y:30997,ptovrint:False,ptlb:Fade Distance,ptin:_FadeDistance,varname:node_427,prsc:2,glob:False,v1:10;n:type:ShaderForge.SFN_Divide,id:411,x:33683,y:31012,varname:node_411,prsc:2|A-6664-OUT,B-427-OUT;n:type:ShaderForge.SFN_Clamp01,id:6664,x:33475,y:30988,varname:node_6664,prsc:2|IN-3072-OUT;n:type:ShaderForge.SFN_Vector3,id:3794,x:33475,y:31441,varname:node_3794,prsc:2,v1:0.3320177,v2:0.6544118,v3:0.4409647;n:type:ShaderForge.SFN_Divide,id:3072,x:33290,y:31036,varname:node_3072,prsc:2|A-427-OUT,B-2091-OUT;n:type:ShaderForge.SFN_VertexColor,id:8652,x:33115,y:33106,varname:node_8652,prsc:2;n:type:ShaderForge.SFN_RemapRangeAdvanced,id:682,x:33470,y:33099,varname:node_682,prsc:2|IN-8652-A,IMIN-894-OUT,IMAX-2084-OUT,OMIN-2094-OUT,OMAX-6128-OUT;n:type:ShaderForge.SFN_Vector1,id:894,x:33115,y:33247,varname:node_894,prsc:2,v1:0;n:type:ShaderForge.SFN_Vector1,id:2084,x:33115,y:33317,varname:node_2084,prsc:2,v1:1;n:type:ShaderForge.SFN_ValueProperty,id:2094,x:33115,y:33411,ptovrint:False,ptlb:Min Height,ptin:_MinHeight,varname:node_2094,prsc:2,glob:False,v1:-1;n:type:ShaderForge.SFN_ValueProperty,id:6128,x:33115,y:33492,ptovrint:False,ptlb:Max Height,ptin:_MaxHeight,varname:node_6128,prsc:2,glob:False,v1:0;n:type:ShaderForge.SFN_Vector3,id:9761,x:33538,y:32971,varname:node_9761,prsc:2,v1:0,v2:1,v3:0;n:type:ShaderForge.SFN_Multiply,id:2228,x:33791,y:33065,varname:node_2228,prsc:2|A-9761-OUT,B-682-OUT;n:type:ShaderForge.SFN_Tex2d,id:2875,x:32631,y:34032,ptovrint:False,ptlb:R Diffuse,ptin:_RDiffuse,varname:node_2875,prsc:2,ntxv:0,isnm:False|UVIN-7551-OUT;n:type:ShaderForge.SFN_Tex2d,id:1500,x:32631,y:34241,ptovrint:False,ptlb:G Diffuse,ptin:_GDiffuse,varname:node_1500,prsc:2,ntxv:0,isnm:False|UVIN-7551-OUT;n:type:ShaderForge.SFN_Tex2d,id:789,x:32631,y:34429,ptovrint:False,ptlb:B Diffuse,ptin:_BDiffuse,varname:node_789,prsc:2,ntxv:0,isnm:False|UVIN-7551-OUT;n:type:ShaderForge.SFN_Lerp,id:497,x:32870,y:34032,varname:node_497,prsc:2|A-577-RGB,B-2875-RGB,T-2475-OUT;n:type:ShaderForge.SFN_Tex2d,id:577,x:32631,y:33854,ptovrint:False,ptlb:Black Diffuse,ptin:_BlackDiffuse,varname:node_577,prsc:2,ntxv:0,isnm:False|UVIN-7551-OUT;n:type:ShaderForge.SFN_Lerp,id:4345,x:32910,y:34214,varname:node_4345,prsc:2|A-497-OUT,B-1500-RGB,T-80-G;n:type:ShaderForge.SFN_Lerp,id:5965,x:32910,y:34415,varname:node_5965,prsc:2|A-4345-OUT,B-789-RGB,T-80-B;n:type:ShaderForge.SFN_VertexColor,id:80,x:32367,y:34109,varname:node_80,prsc:2;n:type:ShaderForge.SFN_Relay,id:7551,x:32068,y:34004,varname:node_7551,prsc:2|IN-5074-OUT;n:type:ShaderForge.SFN_Tex2d,id:525,x:32145,y:34351,ptovrint:False,ptlb:Black Normal,ptin:_BlackNormal,varname:node_525,prsc:2,ntxv:3,isnm:True|UVIN-7551-OUT;n:type:ShaderForge.SFN_Tex2d,id:868,x:32144,y:34543,ptovrint:False,ptlb:R Normal,ptin:_RNormal,varname:node_868,prsc:2,ntxv:3,isnm:True|UVIN-7551-OUT;n:type:ShaderForge.SFN_Tex2d,id:4711,x:32144,y:34738,ptovrint:False,ptlb:G Normal,ptin:_GNormal,varname:node_4711,prsc:2,ntxv:3,isnm:True|UVIN-7551-OUT;n:type:ShaderForge.SFN_Tex2d,id:9168,x:32144,y:34929,ptovrint:False,ptlb:B Normal,ptin:_BNormal,varname:node_9168,prsc:2,ntxv:3,isnm:True|UVIN-7551-OUT;n:type:ShaderForge.SFN_Lerp,id:5954,x:32354,y:34434,varname:node_5954,prsc:2|A-525-RGB,B-868-RGB,T-5999-R;n:type:ShaderForge.SFN_Lerp,id:5033,x:32354,y:34580,varname:node_5033,prsc:2|A-5954-OUT,B-4711-RGB,T-5999-G;n:type:ShaderForge.SFN_Lerp,id:1903,x:32356,y:34741,varname:node_1903,prsc:2|A-5033-OUT,B-9168-RGB,T-5999-B;n:type:ShaderForge.SFN_VertexColor,id:5999,x:31822,y:34585,varname:node_5999,prsc:2;n:type:ShaderForge.SFN_Tex2d,id:1048,x:31660,y:33605,ptovrint:False,ptlb:Mask,ptin:_Mask,varname:node_1048,prsc:2,ntxv:0,isnm:False;n:type:ShaderForge.SFN_Multiply,id:4795,x:32419,y:33885,varname:node_4795,prsc:2|A-904-OUT,B-80-R;n:type:ShaderForge.SFN_Add,id:3683,x:31860,y:33696,varname:node_3683,prsc:2|A-1048-G,B-311-OUT;n:type:ShaderForge.SFN_Vector1,id:311,x:31660,y:33798,varname:node_311,prsc:2,v1:0.5;n:type:ShaderForge.SFN_Power,id:3956,x:32205,y:33755,varname:node_3956,prsc:2|VAL-3683-OUT,EXP-4002-OUT;n:type:ShaderForge.SFN_Vector1,id:4002,x:31994,y:33834,varname:node_4002,prsc:2,v1:4;n:type:ShaderForge.SFN_Clamp01,id:904,x:32380,y:33678,varname:node_904,prsc:2|IN-3956-OUT;n:type:ShaderForge.SFN_Lerp,id:566,x:32589,y:33237,varname:node_566,prsc:2|A-346-OUT,B-904-OUT,T-947-OUT;n:type:ShaderForge.SFN_VertexColor,id:3300,x:31653,y:33280,varname:node_3300,prsc:2;n:type:ShaderForge.SFN_Lerp,id:2475,x:32763,y:33454,varname:node_2475,prsc:2|A-566-OUT,B-622-OUT,T-9551-OUT;n:type:ShaderForge.SFN_Vector1,id:5879,x:31835,y:33553,varname:node_5879,prsc:2,v1:1;n:type:ShaderForge.SFN_RemapRange,id:982,x:31835,y:33299,varname:node_982,prsc:2,frmn:0,frmx:1,tomn:0,tomx:2|IN-3300-R;n:type:ShaderForge.SFN_ConstantClamp,id:947,x:32326,y:33270,varname:node_947,prsc:2,min:0,max:1|IN-8109-OUT;n:type:ShaderForge.SFN_Vector1,id:346,x:32210,y:33203,varname:node_346,prsc:2,v1:0;n:type:ShaderForge.SFN_Subtract,id:1868,x:32032,y:33484,varname:node_1868,prsc:2|A-982-OUT,B-5879-OUT;n:type:ShaderForge.SFN_Clamp01,id:9551,x:32513,y:33435,varname:node_9551,prsc:2|IN-8444-OUT;n:type:ShaderForge.SFN_Vector1,id:622,x:32589,y:33373,varname:node_622,prsc:2,v1:1;n:type:ShaderForge.SFN_Power,id:8109,x:32017,y:33299,varname:node_8109,prsc:2|VAL-982-OUT,EXP-1663-OUT;n:type:ShaderForge.SFN_Power,id:8444,x:32359,y:33488,varname:node_8444,prsc:2|VAL-7275-OUT,EXP-1663-OUT;n:type:ShaderForge.SFN_ValueProperty,id:1663,x:31707,y:33484,ptovrint:False,ptlb:Tansition Sharpness,ptin:_TansitionSharpness,varname:node_1663,prsc:2,glob:False,v1:1;n:type:ShaderForge.SFN_Clamp01,id:7275,x:32194,y:33488,varname:node_7275,prsc:2|IN-1868-OUT;proporder:3630-7181-4544-5426-7799-2431-5074-3878-8359-427-2094-6128-2875-1500-789-577-525-868-4711-9168-1048-1663;pass:END;sub:END;*/

Shader "Shader Forge/Examples/Environment_Toon_Shader" {
    Properties {
        _Reach ("Reach", Range(0, 1)) = 0.5
        _Smoothness ("Smoothness", Range(0, 0.5)) = 0.025
        _MinLight ("MinLight", Range(0, 1)) = 0
        _MaxLight ("MaxLight", Range(0, 1)) = 1
        _OutlineColor ("OutlineColor", Color) = (0,0,0,1)
        _Outline ("Outline", Range(0, 1)) = 0
        [MaterialToggle] _Autotiletoscale ("Autotile to scale", Float ) = 0
        _BaseScale ("Base Scale", Float ) = 1
        _DistanceColor ("DistanceColor", Color) = (1,0,0,1)
        _FadeDistance ("Fade Distance", Float ) = 10
        _MinHeight ("Min Height", Float ) = -1
        _MaxHeight ("Max Height", Float ) = 0
        _RDiffuse ("R Diffuse", 2D) = "white" {}
        _GDiffuse ("G Diffuse", 2D) = "white" {}
        _BDiffuse ("B Diffuse", 2D) = "white" {}
        _BlackDiffuse ("Black Diffuse", 2D) = "white" {}
        _BlackNormal ("Black Normal", 2D) = "bump" {}
        _RNormal ("R Normal", 2D) = "bump" {}
        _GNormal ("G Normal", 2D) = "bump" {}
        _BNormal ("B Normal", 2D) = "bump" {}
        _Mask ("Mask", 2D) = "white" {}
        _TansitionSharpness ("Tansition Sharpness", Float ) = 1
    }
    SubShader {
        Tags {
            "RenderType"="Opaque"
        }
        Pass {
            Name "Outline"
            Tags {
            }
            Cull Front
            
            CGPROGRAM
            #pragma vertex vert
            #pragma fragment frag
            #include "UnityCG.cginc"
            #pragma fragmentoption ARB_precision_hint_fastest
            #pragma multi_compile_shadowcaster
            #pragma exclude_renderers xbox360 ps3 
            #pragma target 3.0
            uniform float _Outline;
            uniform float4 _OutlineColor;
            uniform float _MinHeight;
            uniform float _MaxHeight;
            struct VertexInput {
                float4 vertex : POSITION;
                float3 normal : NORMAL;
                float4 vertexColor : COLOR;
            };
            struct VertexOutput {
                float4 pos : SV_POSITION;
                float4 vertexColor : COLOR;
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o = (VertexOutput)0;
                o.vertexColor = v.vertexColor;
                float node_894 = 0.0;
                v.vertex.xyz += (float3(0,1,0)*(_MinHeight + ( (o.vertexColor.a - node_894) * (_MaxHeight - _MinHeight) ) / (1.0 - node_894)));
                o.pos = mul(UNITY_MATRIX_MVP, float4(v.vertex.xyz + v.normal*_Outline,1));
                return o;
            }
            float4 frag(VertexOutput i) : COLOR {
/////// Vectors:
                return fixed4(_OutlineColor.rgb,0);
            }
            ENDCG
        }
        Pass {
            Name "FORWARD"
            Tags {
                "LightMode"="ForwardBase"
            }
            
            
            CGPROGRAM
            #pragma vertex vert
            #pragma fragment frag
            #define UNITY_PASS_FORWARDBASE
            #include "UnityCG.cginc"
            #include "AutoLight.cginc"
            #include "Lighting.cginc"
            #pragma multi_compile_fwdbase_fullshadows
            #pragma exclude_renderers xbox360 ps3 
            #pragma target 3.0
            uniform float _MinLight;
            uniform float _MaxLight;
            uniform float _Reach;
            uniform float _Smoothness;
            uniform fixed _Autotiletoscale;
            uniform float _BaseScale;
            uniform float _MinHeight;
            uniform float _MaxHeight;
            uniform sampler2D _RDiffuse; uniform float4 _RDiffuse_ST;
            uniform sampler2D _GDiffuse; uniform float4 _GDiffuse_ST;
            uniform sampler2D _BDiffuse; uniform float4 _BDiffuse_ST;
            uniform sampler2D _BlackDiffuse; uniform float4 _BlackDiffuse_ST;
            uniform sampler2D _BlackNormal; uniform float4 _BlackNormal_ST;
            uniform sampler2D _RNormal; uniform float4 _RNormal_ST;
            uniform sampler2D _GNormal; uniform float4 _GNormal_ST;
            uniform sampler2D _BNormal; uniform float4 _BNormal_ST;
            uniform sampler2D _Mask; uniform float4 _Mask_ST;
            uniform float _TansitionSharpness;
            struct VertexInput {
                float4 vertex : POSITION;
                float3 normal : NORMAL;
                float4 tangent : TANGENT;
                float2 texcoord0 : TEXCOORD0;
                float4 vertexColor : COLOR;
            };
            struct VertexOutput {
                float4 pos : SV_POSITION;
                float2 uv0 : TEXCOORD0;
                float4 posWorld : TEXCOORD1;
                float3 normalDir : TEXCOORD2;
                float3 tangentDir : TEXCOORD3;
                float3 bitangentDir : TEXCOORD4;
                float4 vertexColor : COLOR;
                LIGHTING_COORDS(5,6)
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o = (VertexOutput)0;
                o.uv0 = v.texcoord0;
                o.vertexColor = v.vertexColor;
                o.normalDir = UnityObjectToWorldNormal(v.normal);
                o.tangentDir = normalize( mul( _Object2World, float4( v.tangent.xyz, 0.0 ) ).xyz );
                o.bitangentDir = normalize(cross(o.normalDir, o.tangentDir) * v.tangent.w);
                float3 recipObjScale = float3( length(_World2Object[0].xyz), length(_World2Object[1].xyz), length(_World2Object[2].xyz) );
                float3 objScale = 1.0/recipObjScale;
                float node_894 = 0.0;
                v.vertex.xyz += (float3(0,1,0)*(_MinHeight + ( (o.vertexColor.a - node_894) * (_MaxHeight - _MinHeight) ) / (1.0 - node_894)));
                o.posWorld = mul(_Object2World, v.vertex);
                float3 lightColor = _LightColor0.rgb;
                o.pos = mul(UNITY_MATRIX_MVP, v.vertex);
                TRANSFER_VERTEX_TO_FRAGMENT(o)
                return o;
            }
            float4 frag(VertexOutput i) : COLOR {
                float3 recipObjScale = float3( length(_World2Object[0].xyz), length(_World2Object[1].xyz), length(_World2Object[2].xyz) );
                float3 objScale = 1.0/recipObjScale;
                i.normalDir = normalize(i.normalDir);
                float3x3 tangentTransform = float3x3( i.tangentDir, i.bitangentDir, i.normalDir);
/////// Vectors:
                float2 node_7035 = (i.uv0/_BaseScale).rg;
                float2 node_7551 = lerp( i.uv0, float2((node_7035.r*objScale.r),(node_7035.g*objScale.b)), _Autotiletoscale );
                float3 _BlackNormal_var = UnpackNormal(tex2D(_BlackNormal,TRANSFORM_TEX(node_7551, _BlackNormal)));
                float3 _RNormal_var = UnpackNormal(tex2D(_RNormal,TRANSFORM_TEX(node_7551, _RNormal)));
                float3 _GNormal_var = UnpackNormal(tex2D(_GNormal,TRANSFORM_TEX(node_7551, _GNormal)));
                float3 _BNormal_var = UnpackNormal(tex2D(_BNormal,TRANSFORM_TEX(node_7551, _BNormal)));
                float3 normalLocal = lerp(lerp(lerp(_BlackNormal_var.rgb,_RNormal_var.rgb,i.vertexColor.r),_GNormal_var.rgb,i.vertexColor.g),_BNormal_var.rgb,i.vertexColor.b);
                float3 normalDirection = normalize(mul( normalLocal, tangentTransform )); // Perturbed normals
                float3 lightDirection = normalize(_WorldSpaceLightPos0.xyz);
                float3 lightColor = _LightColor0.rgb;
////// Lighting:
                float attenuation = LIGHT_ATTENUATION(i);
////// Emissive:
                float4 _BlackDiffuse_var = tex2D(_BlackDiffuse,TRANSFORM_TEX(node_7551, _BlackDiffuse));
                float4 _RDiffuse_var = tex2D(_RDiffuse,TRANSFORM_TEX(node_7551, _RDiffuse));
                float4 _Mask_var = tex2D(_Mask,TRANSFORM_TEX(i.uv0, _Mask));
                float node_904 = saturate(pow((_Mask_var.g+0.5),4.0));
                float node_982 = (i.vertexColor.r*2.0+0.0);
                float4 _GDiffuse_var = tex2D(_GDiffuse,TRANSFORM_TEX(node_7551, _GDiffuse));
                float4 _BDiffuse_var = tex2D(_BDiffuse,TRANSFORM_TEX(node_7551, _BDiffuse));
                float3 node_5965 = lerp(lerp(lerp(_BlackDiffuse_var.rgb,_RDiffuse_var.rgb,lerp(lerp(0.0,node_904,clamp(pow(node_982,_TansitionSharpness),0,1)),1.0,saturate(pow(saturate((node_982-1.0)),_TansitionSharpness)))),_GDiffuse_var.rgb,i.vertexColor.g),_BDiffuse_var.rgb,i.vertexColor.b);
                float3 emissive = (node_5965*UNITY_LIGHTMODEL_AMBIENT.rgb);
                float node_2384 = (_Reach-_Smoothness);
                float node_5169 = 0.0;
                float node_2105 = (lerp(_MinLight,_MaxLight,saturate((node_5169 + ( (0.5*dot(lightDirection,normalDirection)+0.5 - node_2384) * (1.0 - node_5169) ) / ((_Reach+_Smoothness) - node_2384))))*attenuation);
                float3 finalColor = emissive + (_LightColor0.rgb*(node_5965*node_2105));
                return fixed4(finalColor,1);
            }
            ENDCG
        }
        Pass {
            Name "FORWARD_DELTA"
            Tags {
                "LightMode"="ForwardAdd"
            }
            Blend One One
            
            
            CGPROGRAM
            #pragma vertex vert
            #pragma fragment frag
            #define UNITY_PASS_FORWARDADD
            #include "UnityCG.cginc"
            #include "AutoLight.cginc"
            #include "Lighting.cginc"
            #pragma multi_compile_fwdadd_fullshadows
            #pragma exclude_renderers xbox360 ps3 
            #pragma target 3.0
            uniform float _MinLight;
            uniform float _MaxLight;
            uniform float _Reach;
            uniform float _Smoothness;
            uniform fixed _Autotiletoscale;
            uniform float _BaseScale;
            uniform float _MinHeight;
            uniform float _MaxHeight;
            uniform sampler2D _RDiffuse; uniform float4 _RDiffuse_ST;
            uniform sampler2D _GDiffuse; uniform float4 _GDiffuse_ST;
            uniform sampler2D _BDiffuse; uniform float4 _BDiffuse_ST;
            uniform sampler2D _BlackDiffuse; uniform float4 _BlackDiffuse_ST;
            uniform sampler2D _BlackNormal; uniform float4 _BlackNormal_ST;
            uniform sampler2D _RNormal; uniform float4 _RNormal_ST;
            uniform sampler2D _GNormal; uniform float4 _GNormal_ST;
            uniform sampler2D _BNormal; uniform float4 _BNormal_ST;
            uniform sampler2D _Mask; uniform float4 _Mask_ST;
            uniform float _TansitionSharpness;
            struct VertexInput {
                float4 vertex : POSITION;
                float3 normal : NORMAL;
                float4 tangent : TANGENT;
                float2 texcoord0 : TEXCOORD0;
                float4 vertexColor : COLOR;
            };
            struct VertexOutput {
                float4 pos : SV_POSITION;
                float2 uv0 : TEXCOORD0;
                float4 posWorld : TEXCOORD1;
                float3 normalDir : TEXCOORD2;
                float3 tangentDir : TEXCOORD3;
                float3 bitangentDir : TEXCOORD4;
                float4 vertexColor : COLOR;
                LIGHTING_COORDS(5,6)
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o = (VertexOutput)0;
                o.uv0 = v.texcoord0;
                o.vertexColor = v.vertexColor;
                o.normalDir = UnityObjectToWorldNormal(v.normal);
                o.tangentDir = normalize( mul( _Object2World, float4( v.tangent.xyz, 0.0 ) ).xyz );
                o.bitangentDir = normalize(cross(o.normalDir, o.tangentDir) * v.tangent.w);
                float3 recipObjScale = float3( length(_World2Object[0].xyz), length(_World2Object[1].xyz), length(_World2Object[2].xyz) );
                float3 objScale = 1.0/recipObjScale;
                float node_894 = 0.0;
                v.vertex.xyz += (float3(0,1,0)*(_MinHeight + ( (o.vertexColor.a - node_894) * (_MaxHeight - _MinHeight) ) / (1.0 - node_894)));
                o.posWorld = mul(_Object2World, v.vertex);
                float3 lightColor = _LightColor0.rgb;
                o.pos = mul(UNITY_MATRIX_MVP, v.vertex);
                TRANSFER_VERTEX_TO_FRAGMENT(o)
                return o;
            }
            float4 frag(VertexOutput i) : COLOR {
                float3 recipObjScale = float3( length(_World2Object[0].xyz), length(_World2Object[1].xyz), length(_World2Object[2].xyz) );
                float3 objScale = 1.0/recipObjScale;
                i.normalDir = normalize(i.normalDir);
                float3x3 tangentTransform = float3x3( i.tangentDir, i.bitangentDir, i.normalDir);
/////// Vectors:
                float2 node_7035 = (i.uv0/_BaseScale).rg;
                float2 node_7551 = lerp( i.uv0, float2((node_7035.r*objScale.r),(node_7035.g*objScale.b)), _Autotiletoscale );
                float3 _BlackNormal_var = UnpackNormal(tex2D(_BlackNormal,TRANSFORM_TEX(node_7551, _BlackNormal)));
                float3 _RNormal_var = UnpackNormal(tex2D(_RNormal,TRANSFORM_TEX(node_7551, _RNormal)));
                float3 _GNormal_var = UnpackNormal(tex2D(_GNormal,TRANSFORM_TEX(node_7551, _GNormal)));
                float3 _BNormal_var = UnpackNormal(tex2D(_BNormal,TRANSFORM_TEX(node_7551, _BNormal)));
                float3 normalLocal = lerp(lerp(lerp(_BlackNormal_var.rgb,_RNormal_var.rgb,i.vertexColor.r),_GNormal_var.rgb,i.vertexColor.g),_BNormal_var.rgb,i.vertexColor.b);
                float3 normalDirection = normalize(mul( normalLocal, tangentTransform )); // Perturbed normals
                float3 lightDirection = normalize(lerp(_WorldSpaceLightPos0.xyz, _WorldSpaceLightPos0.xyz - i.posWorld.xyz,_WorldSpaceLightPos0.w));
                float3 lightColor = _LightColor0.rgb;
////// Lighting:
                float attenuation = LIGHT_ATTENUATION(i);
                float4 _BlackDiffuse_var = tex2D(_BlackDiffuse,TRANSFORM_TEX(node_7551, _BlackDiffuse));
                float4 _RDiffuse_var = tex2D(_RDiffuse,TRANSFORM_TEX(node_7551, _RDiffuse));
                float4 _Mask_var = tex2D(_Mask,TRANSFORM_TEX(i.uv0, _Mask));
                float node_904 = saturate(pow((_Mask_var.g+0.5),4.0));
                float node_982 = (i.vertexColor.r*2.0+0.0);
                float4 _GDiffuse_var = tex2D(_GDiffuse,TRANSFORM_TEX(node_7551, _GDiffuse));
                float4 _BDiffuse_var = tex2D(_BDiffuse,TRANSFORM_TEX(node_7551, _BDiffuse));
                float3 node_5965 = lerp(lerp(lerp(_BlackDiffuse_var.rgb,_RDiffuse_var.rgb,lerp(lerp(0.0,node_904,clamp(pow(node_982,_TansitionSharpness),0,1)),1.0,saturate(pow(saturate((node_982-1.0)),_TansitionSharpness)))),_GDiffuse_var.rgb,i.vertexColor.g),_BDiffuse_var.rgb,i.vertexColor.b);
                float node_2384 = (_Reach-_Smoothness);
                float node_5169 = 0.0;
                float node_2105 = (lerp(_MinLight,_MaxLight,saturate((node_5169 + ( (0.5*dot(lightDirection,normalDirection)+0.5 - node_2384) * (1.0 - node_5169) ) / ((_Reach+_Smoothness) - node_2384))))*attenuation);
                float3 finalColor = (_LightColor0.rgb*(node_5965*node_2105));
                return fixed4(finalColor * 1,0);
            }
            ENDCG
        }
        Pass {
            Name "ShadowCaster"
            Tags {
                "LightMode"="ShadowCaster"
            }
            Offset 1, 1
            
            CGPROGRAM
            #pragma vertex vert
            #pragma fragment frag
            #define UNITY_PASS_SHADOWCASTER
            #include "UnityCG.cginc"
            #include "Lighting.cginc"
            #pragma fragmentoption ARB_precision_hint_fastest
            #pragma multi_compile_shadowcaster
            #pragma exclude_renderers xbox360 ps3 
            #pragma target 3.0
            uniform float _MinHeight;
            uniform float _MaxHeight;
            struct VertexInput {
                float4 vertex : POSITION;
                float4 vertexColor : COLOR;
            };
            struct VertexOutput {
                V2F_SHADOW_CASTER;
                float4 vertexColor : COLOR;
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o = (VertexOutput)0;
                o.vertexColor = v.vertexColor;
                float node_894 = 0.0;
                v.vertex.xyz += (float3(0,1,0)*(_MinHeight + ( (o.vertexColor.a - node_894) * (_MaxHeight - _MinHeight) ) / (1.0 - node_894)));
                o.pos = mul(UNITY_MATRIX_MVP, v.vertex);
                TRANSFER_SHADOW_CASTER(o)
                return o;
            }
            float4 frag(VertexOutput i) : COLOR {
/////// Vectors:
                SHADOW_CASTER_FRAGMENT(i)
            }
            ENDCG
        }
        Pass {
            Name "Meta"
            Tags {
                "LightMode"="Meta"
            }
            Cull Off
            
            CGPROGRAM
            #pragma vertex vert
            #pragma fragment frag
            #define UNITY_PASS_META 1
            #include "UnityCG.cginc"
            #include "UnityMetaPass.cginc"
            #pragma fragmentoption ARB_precision_hint_fastest
            #pragma multi_compile_shadowcaster
            #pragma exclude_renderers xbox360 ps3 
            #pragma target 3.0
            uniform fixed _Autotiletoscale;
            uniform float _BaseScale;
            uniform float _MinHeight;
            uniform float _MaxHeight;
            uniform sampler2D _RDiffuse; uniform float4 _RDiffuse_ST;
            uniform sampler2D _GDiffuse; uniform float4 _GDiffuse_ST;
            uniform sampler2D _BDiffuse; uniform float4 _BDiffuse_ST;
            uniform sampler2D _BlackDiffuse; uniform float4 _BlackDiffuse_ST;
            uniform sampler2D _Mask; uniform float4 _Mask_ST;
            uniform float _TansitionSharpness;
            struct VertexInput {
                float4 vertex : POSITION;
                float2 texcoord0 : TEXCOORD0;
                float2 texcoord1 : TEXCOORD1;
                float2 texcoord2 : TEXCOORD2;
                float4 vertexColor : COLOR;
            };
            struct VertexOutput {
                float4 pos : SV_POSITION;
                float2 uv0 : TEXCOORD0;
                float4 vertexColor : COLOR;
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o = (VertexOutput)0;
                o.uv0 = v.texcoord0;
                o.vertexColor = v.vertexColor;
                float3 recipObjScale = float3( length(_World2Object[0].xyz), length(_World2Object[1].xyz), length(_World2Object[2].xyz) );
                float3 objScale = 1.0/recipObjScale;
                float node_894 = 0.0;
                v.vertex.xyz += (float3(0,1,0)*(_MinHeight + ( (o.vertexColor.a - node_894) * (_MaxHeight - _MinHeight) ) / (1.0 - node_894)));
                o.pos = UnityMetaVertexPosition(v.vertex, v.texcoord1.xy, v.texcoord2.xy, unity_LightmapST, unity_DynamicLightmapST );
                return o;
            }
            float4 frag(VertexOutput i) : SV_Target {
                float3 recipObjScale = float3( length(_World2Object[0].xyz), length(_World2Object[1].xyz), length(_World2Object[2].xyz) );
                float3 objScale = 1.0/recipObjScale;
/////// Vectors:
                UnityMetaInput o;
                UNITY_INITIALIZE_OUTPUT( UnityMetaInput, o );
                
                float2 node_7035 = (i.uv0/_BaseScale).rg;
                float2 node_7551 = lerp( i.uv0, float2((node_7035.r*objScale.r),(node_7035.g*objScale.b)), _Autotiletoscale );
                float4 _BlackDiffuse_var = tex2D(_BlackDiffuse,TRANSFORM_TEX(node_7551, _BlackDiffuse));
                float4 _RDiffuse_var = tex2D(_RDiffuse,TRANSFORM_TEX(node_7551, _RDiffuse));
                float4 _Mask_var = tex2D(_Mask,TRANSFORM_TEX(i.uv0, _Mask));
                float node_904 = saturate(pow((_Mask_var.g+0.5),4.0));
                float node_982 = (i.vertexColor.r*2.0+0.0);
                float4 _GDiffuse_var = tex2D(_GDiffuse,TRANSFORM_TEX(node_7551, _GDiffuse));
                float4 _BDiffuse_var = tex2D(_BDiffuse,TRANSFORM_TEX(node_7551, _BDiffuse));
                float3 node_5965 = lerp(lerp(lerp(_BlackDiffuse_var.rgb,_RDiffuse_var.rgb,lerp(lerp(0.0,node_904,clamp(pow(node_982,_TansitionSharpness),0,1)),1.0,saturate(pow(saturate((node_982-1.0)),_TansitionSharpness)))),_GDiffuse_var.rgb,i.vertexColor.g),_BDiffuse_var.rgb,i.vertexColor.b);
                o.Emission = (node_5965*UNITY_LIGHTMODEL_AMBIENT.rgb);
                
                float3 diffColor = float3(0,0,0);
                o.Albedo = diffColor;
                
                return UnityMetaFragment( o );
            }
            ENDCG
        }
    }
    FallBack "Diffuse"
    CustomEditor "ShaderForgeMaterialInspector"
}
