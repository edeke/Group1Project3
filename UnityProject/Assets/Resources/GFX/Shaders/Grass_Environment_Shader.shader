// Shader created with Shader Forge v1.13 
// Shader Forge (c) Neat Corporation / Joachim Holmer - http://www.acegikmo.com/shaderforge/
// Note: Manually altering this data may prevent you from opening it in Shader Forge
/*SF_DATA;ver:1.13;sub:START;pass:START;ps:flbk:,lico:1,lgpr:1,nrmq:1,nrsp:0,limd:0,spmd:1,trmd:0,grmd:0,uamb:True,mssp:True,bkdf:True,rprd:False,enco:False,rmgx:True,rpth:0,hqsc:True,hqlp:False,tesm:0,bsrc:3,bdst:7,culm:2,dpts:2,wrdp:True,dith:0,ufog:False,aust:True,igpj:False,qofs:0,qpre:2,rntp:3,fgom:False,fgoc:False,fgod:False,fgor:False,fgmd:0,fgcr:0.5,fgcg:0.5,fgcb:0.5,fgca:1,fgde:0.01,fgrn:0,fgrf:300,ofsf:0,ofsu:0,f2p0:False;n:type:ShaderForge.SFN_Final,id:0,x:34329,y:31962,varname:node_0,prsc:2|normal-83-RGB,emission-5545-OUT,custl-64-OUT,clip-82-A,olwid-2431-OUT,olcol-7799-RGB,voffset-7003-OUT;n:type:ShaderForge.SFN_LightAttenuation,id:37,x:32964,y:32209,varname:node_37,prsc:2;n:type:ShaderForge.SFN_Dot,id:40,x:31764,y:32587,varname:node_40,prsc:2,dt:4|A-42-OUT,B-41-OUT;n:type:ShaderForge.SFN_NormalVector,id:41,x:31554,y:32638,prsc:2,pt:True;n:type:ShaderForge.SFN_LightVector,id:42,x:31409,y:32543,varname:node_42,prsc:2;n:type:ShaderForge.SFN_LightColor,id:63,x:33860,y:32155,varname:node_63,prsc:2;n:type:ShaderForge.SFN_Multiply,id:64,x:34056,y:32155,varname:node_64,prsc:2|A-63-RGB,B-84-OUT;n:type:ShaderForge.SFN_Tex2d,id:82,x:33007,y:32011,ptovrint:False,ptlb:Diffuse,ptin:_Diffuse,varname:_Diffuse,prsc:2,ntxv:0,isnm:False|UVIN-5074-OUT;n:type:ShaderForge.SFN_Tex2d,id:83,x:34056,y:31966,ptovrint:False,ptlb:Normals,ptin:_Normals,varname:_Normals,prsc:2,ntxv:3,isnm:True|UVIN-5074-OUT;n:type:ShaderForge.SFN_Multiply,id:84,x:33712,y:32143,cmnt:Diffuse Light,varname:node_84,prsc:2|A-3954-OUT,B-2105-OUT;n:type:ShaderForge.SFN_AmbientLight,id:187,x:33323,y:32415,varname:node_187,prsc:2;n:type:ShaderForge.SFN_TexCoord,id:272,x:32226,y:31667,varname:node_272,prsc:2,uv:0;n:type:ShaderForge.SFN_RemapRangeAdvanced,id:1026,x:32197,y:32697,varname:node_1026,prsc:2|IN-40-OUT,IMIN-2384-OUT,IMAX-9128-OUT,OMIN-5169-OUT,OMAX-3044-OUT;n:type:ShaderForge.SFN_Slider,id:4544,x:32509,y:32314,ptovrint:False,ptlb:MinLight,ptin:_MinLight,varname:node_4544,prsc:2,min:0,cur:0,max:1;n:type:ShaderForge.SFN_Slider,id:5426,x:32521,y:32411,ptovrint:False,ptlb:MaxLight,ptin:_MaxLight,varname:_MinLight_copy,prsc:2,min:0,cur:1,max:1;n:type:ShaderForge.SFN_Slider,id:3630,x:31336,y:33021,ptovrint:False,ptlb:Reach,ptin:_Reach,varname:node_3630,prsc:2,min:0,cur:0.5,max:1;n:type:ShaderForge.SFN_Slider,id:7181,x:31336,y:33116,ptovrint:False,ptlb:Smoothness,ptin:_Smoothness,varname:_Value_copy,prsc:2,min:0,cur:0.025,max:0.5;n:type:ShaderForge.SFN_Add,id:9128,x:31776,y:33050,varname:node_9128,prsc:2|A-3630-OUT,B-7181-OUT;n:type:ShaderForge.SFN_Subtract,id:2384,x:31776,y:32906,varname:node_2384,prsc:2|A-3630-OUT,B-7181-OUT;n:type:ShaderForge.SFN_Clamp01,id:1648,x:32372,y:32697,varname:node_1648,prsc:2|IN-1026-OUT;n:type:ShaderForge.SFN_Vector1,id:5169,x:32170,y:32843,varname:node_5169,prsc:2,v1:0;n:type:ShaderForge.SFN_Vector1,id:3044,x:32168,y:32906,varname:node_3044,prsc:2,v1:1;n:type:ShaderForge.SFN_Lerp,id:6558,x:32995,y:32384,varname:node_6558,prsc:2|A-4544-OUT,B-5426-OUT,T-1648-OUT;n:type:ShaderForge.SFN_Slider,id:2431,x:33847,y:32462,ptovrint:False,ptlb:Outline,ptin:_Outline,varname:node_2431,prsc:2,min:0,cur:0,max:1;n:type:ShaderForge.SFN_Color,id:7799,x:34004,y:32554,ptovrint:False,ptlb:OutlineColor,ptin:_OutlineColor,varname:node_7799,prsc:2,glob:False,c1:0,c2:0,c3:0,c4:1;n:type:ShaderForge.SFN_Multiply,id:2105,x:33252,y:32160,varname:node_2105,prsc:2|A-6558-OUT,B-37-OUT;n:type:ShaderForge.SFN_Vector1,id:5483,x:33323,y:32547,varname:node_5483,prsc:2,v1:0;n:type:ShaderForge.SFN_Clamp,id:7728,x:33640,y:32350,varname:node_7728,prsc:2|IN-2105-OUT,MIN-187-RGB,MAX-36-OUT;n:type:ShaderForge.SFN_Vector1,id:36,x:33523,y:32507,varname:node_36,prsc:2,v1:1;n:type:ShaderForge.SFN_ObjectScale,id:3319,x:32421,y:31895,varname:node_3319,prsc:2,rcp:False;n:type:ShaderForge.SFN_Multiply,id:324,x:32705,y:31767,varname:node_324,prsc:2|A-7035-R,B-3319-X;n:type:ShaderForge.SFN_Multiply,id:6716,x:32705,y:31891,varname:node_6716,prsc:2|A-7035-G,B-3319-Z;n:type:ShaderForge.SFN_Append,id:1132,x:32880,y:31809,varname:node_1132,prsc:2|A-324-OUT,B-6716-OUT;n:type:ShaderForge.SFN_SwitchProperty,id:5074,x:33121,y:31590,ptovrint:False,ptlb:Autotile to scale,ptin:_Autotiletoscale,varname:node_5074,prsc:2,on:True|A-272-UVOUT,B-1132-OUT;n:type:ShaderForge.SFN_ValueProperty,id:3878,x:32343,y:31557,ptovrint:False,ptlb:Base Scale,ptin:_BaseScale,varname:node_3878,prsc:2,glob:False,v1:1;n:type:ShaderForge.SFN_Divide,id:3093,x:32612,y:31530,varname:node_3093,prsc:2|A-272-UVOUT,B-3878-OUT;n:type:ShaderForge.SFN_ComponentMask,id:7035,x:32829,y:31520,varname:node_7035,prsc:2,cc1:0,cc2:1,cc3:-1,cc4:-1|IN-3093-OUT;n:type:ShaderForge.SFN_Multiply,id:5545,x:33815,y:31878,varname:node_5545,prsc:2|A-3954-OUT,B-187-RGB;n:type:ShaderForge.SFN_Lerp,id:6441,x:33747,y:31392,varname:node_6441,prsc:2|A-8359-RGB,B-3954-OUT,T-6664-OUT;n:type:ShaderForge.SFN_SwitchProperty,id:5711,x:33564,y:31829,ptovrint:False,ptlb:DistanceFade,ptin:_DistanceFade,varname:node_5711,prsc:2,on:False|A-3954-OUT,B-6441-OUT;n:type:ShaderForge.SFN_Color,id:8359,x:33515,y:31242,ptovrint:False,ptlb:DistanceColor,ptin:_DistanceColor,varname:node_8359,prsc:2,glob:False,c1:1,c2:0,c3:0,c4:1;n:type:ShaderForge.SFN_Distance,id:1156,x:32931,y:31240,varname:node_1156,prsc:2|A-5769-XYZ,B-2239-XYZ;n:type:ShaderForge.SFN_ViewPosition,id:5769,x:32730,y:31150,varname:node_5769,prsc:2;n:type:ShaderForge.SFN_ObjectPosition,id:2239,x:32730,y:31321,varname:node_2239,prsc:2;n:type:ShaderForge.SFN_ObjectScale,id:1149,x:31751,y:31132,varname:node_1149,prsc:2,rcp:False;n:type:ShaderForge.SFN_Divide,id:2921,x:32513,y:31268,varname:node_2921,prsc:2|A-2019-OUT,B-3878-OUT;n:type:ShaderForge.SFN_Divide,id:2091,x:33101,y:31240,varname:node_2091,prsc:2|A-1156-OUT,B-2921-OUT;n:type:ShaderForge.SFN_Add,id:1000,x:31946,y:31157,varname:node_1000,prsc:2|A-1149-X,B-1149-Y;n:type:ShaderForge.SFN_Add,id:7158,x:32116,y:31170,varname:node_7158,prsc:2|A-1000-OUT,B-1149-Z;n:type:ShaderForge.SFN_Divide,id:2019,x:32305,y:31190,varname:node_2019,prsc:2|A-7158-OUT,B-1372-OUT;n:type:ShaderForge.SFN_Vector1,id:1372,x:32116,y:31303,varname:node_1372,prsc:2,v1:3;n:type:ShaderForge.SFN_ValueProperty,id:427,x:32882,y:30997,ptovrint:False,ptlb:Fade Distance,ptin:_FadeDistance,varname:node_427,prsc:2,glob:False,v1:10;n:type:ShaderForge.SFN_Divide,id:411,x:33683,y:31012,varname:node_411,prsc:2|A-6664-OUT,B-427-OUT;n:type:ShaderForge.SFN_Clamp01,id:6664,x:33475,y:30988,varname:node_6664,prsc:2|IN-3072-OUT;n:type:ShaderForge.SFN_Vector3,id:3794,x:33475,y:31441,varname:node_3794,prsc:2,v1:0.3320177,v2:0.6544118,v3:0.4409647;n:type:ShaderForge.SFN_Vector3,id:5859,x:34040,y:31745,varname:node_5859,prsc:2,v1:0,v2:0,v3:1;n:type:ShaderForge.SFN_SwitchProperty,id:5304,x:34511,y:31569,ptovrint:False,ptlb:DistanceFade_copy,ptin:_DistanceFade_copy,varname:_DistanceFade_copy,prsc:2,on:True|A-83-RGB,B-1029-OUT;n:type:ShaderForge.SFN_Lerp,id:1029,x:34279,y:31452,varname:node_1029,prsc:2|A-5859-OUT,B-5859-OUT,T-6664-OUT;n:type:ShaderForge.SFN_Divide,id:3072,x:33290,y:31036,varname:node_3072,prsc:2|A-427-OUT,B-2091-OUT;n:type:ShaderForge.SFN_Lerp,id:4272,x:33349,y:32021,varname:node_4272,prsc:2|A-9908-RGB,B-4589-RGB,T-82-R;n:type:ShaderForge.SFN_Tex2d,id:1939,x:33322,y:31724,ptovrint:False,ptlb:LerpMask,ptin:_LerpMask,varname:node_1939,prsc:2,ntxv:0,isnm:False;n:type:ShaderForge.SFN_Lerp,id:3954,x:33548,y:31960,varname:node_3954,prsc:2|A-82-RGB,B-4272-OUT,T-1939-R;n:type:ShaderForge.SFN_Color,id:9908,x:33121,y:31819,ptovrint:False,ptlb:Low Color,ptin:_LowColor,varname:node_9908,prsc:2,glob:False,c1:0.1871436,c2:0.2794118,c3:0.09861592,c4:1;n:type:ShaderForge.SFN_Color,id:4589,x:33175,y:32011,ptovrint:False,ptlb:High Color,ptin:_HighColor,varname:node_4589,prsc:2,glob:False,c1:0.2206423,c2:0.5661765,c3:0.3374091,c4:1;n:type:ShaderForge.SFN_Color,id:2490,x:32232,y:31698,ptovrint:False,ptlb:Skin Color 3,ptin:_SkinColor3,varname:_SkinColor3,prsc:2,glob:False,c1:0.2869585,c2:0.2698962,c3:0.7647059,c4:1;n:type:ShaderForge.SFN_Tex2d,id:5269,x:34032,y:29961,ptovrint:False,ptlb:node_5269,ptin:_node_5269,varname:node_5269,prsc:2,ntxv:0,isnm:False|UVIN-4711-OUT;n:type:ShaderForge.SFN_FragmentPosition,id:3428,x:32826,y:30010,varname:node_3428,prsc:2;n:type:ShaderForge.SFN_Panner,id:7577,x:33838,y:29925,varname:node_7577,prsc:2,spu:0.1,spv:0.1|UVIN-3679-OUT;n:type:ShaderForge.SFN_Add,id:3679,x:33638,y:29964,varname:node_3679,prsc:2|A-8818-UVOUT,B-4312-OUT;n:type:ShaderForge.SFN_Divide,id:4312,x:33277,y:30007,varname:node_4312,prsc:2|A-1747-OUT,B-2477-OUT;n:type:ShaderForge.SFN_ValueProperty,id:2477,x:32859,y:30188,ptovrint:False,ptlb:Position Scale,ptin:_PositionScale,varname:node_2477,prsc:2,glob:False,v1:100;n:type:ShaderForge.SFN_Append,id:1747,x:33101,y:30007,varname:node_1747,prsc:2|A-3428-X,B-3428-Y;n:type:ShaderForge.SFN_TexCoord,id:8818,x:33624,y:29705,varname:node_8818,prsc:2,uv:0;n:type:ShaderForge.SFN_Relay,id:7003,x:35090,y:29720,varname:node_7003,prsc:2|IN-7550-OUT;n:type:ShaderForge.SFN_Vector3,id:4584,x:34026,y:30259,varname:node_4584,prsc:2,v1:1,v2:0,v3:0;n:type:ShaderForge.SFN_Multiply,id:5213,x:34445,y:29793,varname:node_5213,prsc:2|A-1242-XYZ,B-7493-OUT;n:type:ShaderForge.SFN_Lerp,id:7550,x:34819,y:29624,varname:node_7550,prsc:2|A-1667-OUT,B-5213-OUT,T-3822-OUT;n:type:ShaderForge.SFN_Vector3,id:1667,x:34339,y:29652,varname:node_1667,prsc:2,v1:0,v2:0,v3:0;n:type:ShaderForge.SFN_FragmentPosition,id:7098,x:33854,y:29741,varname:node_7098,prsc:2;n:type:ShaderForge.SFN_RemapRange,id:8383,x:34355,y:30178,varname:node_8383,prsc:2,frmn:0,frmx:10,tomn:0,tomx:1|IN-9615-G;n:type:ShaderForge.SFN_Vector4Property,id:1242,x:33885,y:30217,ptovrint:False,ptlb:Intensity Vector,ptin:_IntensityVector,varname:node_1242,prsc:2,glob:False,v1:0,v2:0,v3:0,v4:0;n:type:ShaderForge.SFN_Clamp01,id:3822,x:34528,y:30091,varname:node_3822,prsc:2|IN-4836-OUT;n:type:ShaderForge.SFN_RemapRangeAdvanced,id:4836,x:34338,y:30355,varname:node_4836,prsc:2|IN-9615-G,IMIN-505-OUT,IMAX-7363-OUT,OMIN-505-OUT,OMAX-2793-OUT;n:type:ShaderForge.SFN_ValueProperty,id:7363,x:34058,y:30462,ptovrint:False,ptlb:Grass Height,ptin:_GrassHeight,varname:node_7363,prsc:2,glob:False,v1:1;n:type:ShaderForge.SFN_Vector1,id:505,x:34131,y:30373,varname:node_505,prsc:2,v1:0;n:type:ShaderForge.SFN_Vector1,id:2793,x:34174,y:30510,varname:node_2793,prsc:2,v1:1;n:type:ShaderForge.SFN_Multiply,id:2207,x:34632,y:29846,varname:node_2207,prsc:2|A-5213-OUT,B-1450-OUT;n:type:ShaderForge.SFN_Vector1,id:1450,x:34445,y:29947,varname:node_1450,prsc:2,v1:2;n:type:ShaderForge.SFN_Power,id:5180,x:34246,y:30000,varname:node_5180,prsc:2|VAL-2944-OUT,EXP-9469-OUT;n:type:ShaderForge.SFN_ObjectPosition,id:9757,x:32826,y:29855,varname:node_9757,prsc:2;n:type:ShaderForge.SFN_Subtract,id:9025,x:33028,y:29855,varname:node_9025,prsc:2|A-3428-XYZ,B-9757-XYZ;n:type:ShaderForge.SFN_ComponentMask,id:9615,x:33217,y:29839,varname:node_9615,prsc:2,cc1:0,cc2:1,cc3:-1,cc4:-1|IN-9025-OUT;n:type:ShaderForge.SFN_Multiply,id:4711,x:33836,y:30078,varname:node_4711,prsc:2|A-7577-UVOUT,B-7359-OUT;n:type:ShaderForge.SFN_ValueProperty,id:7359,x:33503,y:30181,ptovrint:False,ptlb:Scroll speed,ptin:_Scrollspeed,varname:node_7359,prsc:2,glob:False,v1:1;n:type:ShaderForge.SFN_ValueProperty,id:9469,x:34000,y:30146,ptovrint:False,ptlb:Cloud Power,ptin:_CloudPower,varname:node_9469,prsc:2,glob:False,v1:1;n:type:ShaderForge.SFN_Add,id:2944,x:34131,y:29771,varname:node_2944,prsc:2|A-737-OUT,B-5269-G;n:type:ShaderForge.SFN_Vector1,id:737,x:33985,y:29779,varname:node_737,prsc:2,v1:0.5;n:type:ShaderForge.SFN_Subtract,id:4120,x:34285,y:29733,varname:node_4120,prsc:2|A-5180-OUT,B-737-OUT;n:type:ShaderForge.SFN_Clamp01,id:7493,x:34131,y:29611,varname:node_7493,prsc:2|IN-4120-OUT;proporder:82-83-3630-7181-4544-5426-7799-2431-5074-3878-5711-8359-427-5304-1939-9908-4589-5269-2477-1242-7363-7359-9469;pass:END;sub:END;*/

Shader "Shader Forge/Examples/Grass_Environment_Shader" {
    Properties {
        _Diffuse ("Diffuse", 2D) = "white" {}
        _Normals ("Normals", 2D) = "bump" {}
        _Reach ("Reach", Range(0, 1)) = 0.5
        _Smoothness ("Smoothness", Range(0, 0.5)) = 0.025
        _MinLight ("MinLight", Range(0, 1)) = 0
        _MaxLight ("MaxLight", Range(0, 1)) = 1
        _OutlineColor ("OutlineColor", Color) = (0,0,0,1)
        _Outline ("Outline", Range(0, 1)) = 0
        [MaterialToggle] _Autotiletoscale ("Autotile to scale", Float ) = 0
        _BaseScale ("Base Scale", Float ) = 1
        [MaterialToggle] _DistanceFade ("DistanceFade", Float ) = 0.2206423
        _DistanceColor ("DistanceColor", Color) = (1,0,0,1)
        _FadeDistance ("Fade Distance", Float ) = 10
        [MaterialToggle] _DistanceFade_copy ("DistanceFade_copy", Float ) = 0
        _LerpMask ("LerpMask", 2D) = "white" {}
        _LowColor ("Low Color", Color) = (0.1871436,0.2794118,0.09861592,1)
        _HighColor ("High Color", Color) = (0.2206423,0.5661765,0.3374091,1)
        _node_5269 ("node_5269", 2D) = "white" {}
        _PositionScale ("Position Scale", Float ) = 100
        _IntensityVector ("Intensity Vector", Vector) = (0,0,0,0)
        _GrassHeight ("Grass Height", Float ) = 1
        _Scrollspeed ("Scroll speed", Float ) = 1
        _CloudPower ("Cloud Power", Float ) = 1
        [HideInInspector]_Cutoff ("Alpha cutoff", Range(0,1)) = 0.5
    }
    SubShader {
        Tags {
            "Queue"="AlphaTest"
            "RenderType"="TransparentCutout"
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
            #pragma glsl
            uniform float4 _TimeEditor;
            uniform sampler2D _Diffuse; uniform float4 _Diffuse_ST;
            uniform float _Outline;
            uniform float4 _OutlineColor;
            uniform fixed _Autotiletoscale;
            uniform float _BaseScale;
            uniform sampler2D _node_5269; uniform float4 _node_5269_ST;
            uniform float _PositionScale;
            uniform float4 _IntensityVector;
            uniform float _GrassHeight;
            uniform float _Scrollspeed;
            uniform float _CloudPower;
            struct VertexInput {
                float4 vertex : POSITION;
                float3 normal : NORMAL;
                float2 texcoord0 : TEXCOORD0;
            };
            struct VertexOutput {
                float4 pos : SV_POSITION;
                float2 uv0 : TEXCOORD0;
                float4 posWorld : TEXCOORD1;
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o = (VertexOutput)0;
                o.uv0 = v.texcoord0;
                float4 objPos = mul ( _Object2World, float4(0,0,0,1) );
                float3 recipObjScale = float3( length(_World2Object[0].xyz), length(_World2Object[1].xyz), length(_World2Object[2].xyz) );
                float3 objScale = 1.0/recipObjScale;
                float node_737 = 0.5;
                float4 node_8391 = _Time + _TimeEditor;
                float2 node_4711 = (((o.uv0+(float2(mul(_Object2World, v.vertex).r,mul(_Object2World, v.vertex).g)/_PositionScale))+node_8391.g*float2(0.1,0.1))*_Scrollspeed);
                float4 _node_5269_var = tex2Dlod(_node_5269,float4(TRANSFORM_TEX(node_4711, _node_5269),0.0,0));
                float3 node_5213 = (_IntensityVector.rgb*saturate((pow((node_737+_node_5269_var.g),_CloudPower)-node_737)));
                float2 node_9615 = (mul(_Object2World, v.vertex).rgb-objPos.rgb).rg;
                float node_505 = 0.0;
                v.vertex.xyz += lerp(float3(0,0,0),node_5213,saturate((node_505 + ( (node_9615.g - node_505) * (1.0 - node_505) ) / (_GrassHeight - node_505))));
                o.posWorld = mul(_Object2World, v.vertex);
                o.pos = mul(UNITY_MATRIX_MVP, float4(v.vertex.xyz + v.normal*_Outline,1));
                return o;
            }
            float4 frag(VertexOutput i) : COLOR {
                float4 objPos = mul ( _Object2World, float4(0,0,0,1) );
                float3 recipObjScale = float3( length(_World2Object[0].xyz), length(_World2Object[1].xyz), length(_World2Object[2].xyz) );
                float3 objScale = 1.0/recipObjScale;
/////// Vectors:
                float2 node_7035 = (i.uv0/_BaseScale).rg;
                float2 _Autotiletoscale_var = lerp( i.uv0, float2((node_7035.r*objScale.r),(node_7035.g*objScale.b)), _Autotiletoscale );
                float4 _Diffuse_var = tex2D(_Diffuse,TRANSFORM_TEX(_Autotiletoscale_var, _Diffuse));
                clip(_Diffuse_var.a - 0.5);
                return fixed4(_OutlineColor.rgb,0);
            }
            ENDCG
        }
        Pass {
            Name "FORWARD"
            Tags {
                "LightMode"="ForwardBase"
            }
            Blend SrcAlpha OneMinusSrcAlpha
            Cull Off
            
            
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
            #pragma glsl
            uniform float4 _TimeEditor;
            uniform sampler2D _Diffuse; uniform float4 _Diffuse_ST;
            uniform sampler2D _Normals; uniform float4 _Normals_ST;
            uniform float _MinLight;
            uniform float _MaxLight;
            uniform float _Reach;
            uniform float _Smoothness;
            uniform fixed _Autotiletoscale;
            uniform float _BaseScale;
            uniform sampler2D _LerpMask; uniform float4 _LerpMask_ST;
            uniform float4 _LowColor;
            uniform float4 _HighColor;
            uniform sampler2D _node_5269; uniform float4 _node_5269_ST;
            uniform float _PositionScale;
            uniform float4 _IntensityVector;
            uniform float _GrassHeight;
            uniform float _Scrollspeed;
            uniform float _CloudPower;
            struct VertexInput {
                float4 vertex : POSITION;
                float3 normal : NORMAL;
                float4 tangent : TANGENT;
                float2 texcoord0 : TEXCOORD0;
            };
            struct VertexOutput {
                float4 pos : SV_POSITION;
                float2 uv0 : TEXCOORD0;
                float4 posWorld : TEXCOORD1;
                float3 normalDir : TEXCOORD2;
                float3 tangentDir : TEXCOORD3;
                float3 bitangentDir : TEXCOORD4;
                LIGHTING_COORDS(5,6)
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o = (VertexOutput)0;
                o.uv0 = v.texcoord0;
                o.normalDir = UnityObjectToWorldNormal(v.normal);
                o.tangentDir = normalize( mul( _Object2World, float4( v.tangent.xyz, 0.0 ) ).xyz );
                o.bitangentDir = normalize(cross(o.normalDir, o.tangentDir) * v.tangent.w);
                float4 objPos = mul ( _Object2World, float4(0,0,0,1) );
                float3 recipObjScale = float3( length(_World2Object[0].xyz), length(_World2Object[1].xyz), length(_World2Object[2].xyz) );
                float3 objScale = 1.0/recipObjScale;
                float node_737 = 0.5;
                float4 node_7103 = _Time + _TimeEditor;
                float2 node_4711 = (((o.uv0+(float2(mul(_Object2World, v.vertex).r,mul(_Object2World, v.vertex).g)/_PositionScale))+node_7103.g*float2(0.1,0.1))*_Scrollspeed);
                float4 _node_5269_var = tex2Dlod(_node_5269,float4(TRANSFORM_TEX(node_4711, _node_5269),0.0,0));
                float3 node_5213 = (_IntensityVector.rgb*saturate((pow((node_737+_node_5269_var.g),_CloudPower)-node_737)));
                float2 node_9615 = (mul(_Object2World, v.vertex).rgb-objPos.rgb).rg;
                float node_505 = 0.0;
                v.vertex.xyz += lerp(float3(0,0,0),node_5213,saturate((node_505 + ( (node_9615.g - node_505) * (1.0 - node_505) ) / (_GrassHeight - node_505))));
                o.posWorld = mul(_Object2World, v.vertex);
                float3 lightColor = _LightColor0.rgb;
                o.pos = mul(UNITY_MATRIX_MVP, v.vertex);
                TRANSFER_VERTEX_TO_FRAGMENT(o)
                return o;
            }
            float4 frag(VertexOutput i) : COLOR {
                float4 objPos = mul ( _Object2World, float4(0,0,0,1) );
                float3 recipObjScale = float3( length(_World2Object[0].xyz), length(_World2Object[1].xyz), length(_World2Object[2].xyz) );
                float3 objScale = 1.0/recipObjScale;
                i.normalDir = normalize(i.normalDir);
                float3x3 tangentTransform = float3x3( i.tangentDir, i.bitangentDir, i.normalDir);
/////// Vectors:
                float3 viewDirection = normalize(_WorldSpaceCameraPos.xyz - i.posWorld.xyz);
                float2 node_7035 = (i.uv0/_BaseScale).rg;
                float2 _Autotiletoscale_var = lerp( i.uv0, float2((node_7035.r*objScale.r),(node_7035.g*objScale.b)), _Autotiletoscale );
                float3 _Normals_var = UnpackNormal(tex2D(_Normals,TRANSFORM_TEX(_Autotiletoscale_var, _Normals)));
                float3 normalLocal = _Normals_var.rgb;
                float3 normalDirection = normalize(mul( normalLocal, tangentTransform )); // Perturbed normals
                
                float nSign = sign( dot( viewDirection, i.normalDir ) ); // Reverse normal if this is a backface
                i.normalDir *= nSign;
                normalDirection *= nSign;
                
                float4 _Diffuse_var = tex2D(_Diffuse,TRANSFORM_TEX(_Autotiletoscale_var, _Diffuse));
                clip(_Diffuse_var.a - 0.5);
                float3 lightDirection = normalize(_WorldSpaceLightPos0.xyz);
                float3 lightColor = _LightColor0.rgb;
////// Lighting:
                float attenuation = LIGHT_ATTENUATION(i);
////// Emissive:
                float4 _LerpMask_var = tex2D(_LerpMask,TRANSFORM_TEX(i.uv0, _LerpMask));
                float3 node_3954 = lerp(_Diffuse_var.rgb,lerp(_LowColor.rgb,_HighColor.rgb,_Diffuse_var.r),_LerpMask_var.r);
                float3 emissive = (node_3954*UNITY_LIGHTMODEL_AMBIENT.rgb);
                float node_2384 = (_Reach-_Smoothness);
                float node_5169 = 0.0;
                float node_2105 = (lerp(_MinLight,_MaxLight,saturate((node_5169 + ( (0.5*dot(lightDirection,normalDirection)+0.5 - node_2384) * (1.0 - node_5169) ) / ((_Reach+_Smoothness) - node_2384))))*attenuation);
                float3 finalColor = emissive + (_LightColor0.rgb*(node_3954*node_2105));
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
            Cull Off
            
            
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
            #pragma glsl
            uniform float4 _TimeEditor;
            uniform sampler2D _Diffuse; uniform float4 _Diffuse_ST;
            uniform sampler2D _Normals; uniform float4 _Normals_ST;
            uniform float _MinLight;
            uniform float _MaxLight;
            uniform float _Reach;
            uniform float _Smoothness;
            uniform fixed _Autotiletoscale;
            uniform float _BaseScale;
            uniform sampler2D _LerpMask; uniform float4 _LerpMask_ST;
            uniform float4 _LowColor;
            uniform float4 _HighColor;
            uniform sampler2D _node_5269; uniform float4 _node_5269_ST;
            uniform float _PositionScale;
            uniform float4 _IntensityVector;
            uniform float _GrassHeight;
            uniform float _Scrollspeed;
            uniform float _CloudPower;
            struct VertexInput {
                float4 vertex : POSITION;
                float3 normal : NORMAL;
                float4 tangent : TANGENT;
                float2 texcoord0 : TEXCOORD0;
            };
            struct VertexOutput {
                float4 pos : SV_POSITION;
                float2 uv0 : TEXCOORD0;
                float4 posWorld : TEXCOORD1;
                float3 normalDir : TEXCOORD2;
                float3 tangentDir : TEXCOORD3;
                float3 bitangentDir : TEXCOORD4;
                LIGHTING_COORDS(5,6)
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o = (VertexOutput)0;
                o.uv0 = v.texcoord0;
                o.normalDir = UnityObjectToWorldNormal(v.normal);
                o.tangentDir = normalize( mul( _Object2World, float4( v.tangent.xyz, 0.0 ) ).xyz );
                o.bitangentDir = normalize(cross(o.normalDir, o.tangentDir) * v.tangent.w);
                float4 objPos = mul ( _Object2World, float4(0,0,0,1) );
                float3 recipObjScale = float3( length(_World2Object[0].xyz), length(_World2Object[1].xyz), length(_World2Object[2].xyz) );
                float3 objScale = 1.0/recipObjScale;
                float node_737 = 0.5;
                float4 node_3015 = _Time + _TimeEditor;
                float2 node_4711 = (((o.uv0+(float2(mul(_Object2World, v.vertex).r,mul(_Object2World, v.vertex).g)/_PositionScale))+node_3015.g*float2(0.1,0.1))*_Scrollspeed);
                float4 _node_5269_var = tex2Dlod(_node_5269,float4(TRANSFORM_TEX(node_4711, _node_5269),0.0,0));
                float3 node_5213 = (_IntensityVector.rgb*saturate((pow((node_737+_node_5269_var.g),_CloudPower)-node_737)));
                float2 node_9615 = (mul(_Object2World, v.vertex).rgb-objPos.rgb).rg;
                float node_505 = 0.0;
                v.vertex.xyz += lerp(float3(0,0,0),node_5213,saturate((node_505 + ( (node_9615.g - node_505) * (1.0 - node_505) ) / (_GrassHeight - node_505))));
                o.posWorld = mul(_Object2World, v.vertex);
                float3 lightColor = _LightColor0.rgb;
                o.pos = mul(UNITY_MATRIX_MVP, v.vertex);
                TRANSFER_VERTEX_TO_FRAGMENT(o)
                return o;
            }
            float4 frag(VertexOutput i) : COLOR {
                float4 objPos = mul ( _Object2World, float4(0,0,0,1) );
                float3 recipObjScale = float3( length(_World2Object[0].xyz), length(_World2Object[1].xyz), length(_World2Object[2].xyz) );
                float3 objScale = 1.0/recipObjScale;
                i.normalDir = normalize(i.normalDir);
                float3x3 tangentTransform = float3x3( i.tangentDir, i.bitangentDir, i.normalDir);
/////// Vectors:
                float3 viewDirection = normalize(_WorldSpaceCameraPos.xyz - i.posWorld.xyz);
                float2 node_7035 = (i.uv0/_BaseScale).rg;
                float2 _Autotiletoscale_var = lerp( i.uv0, float2((node_7035.r*objScale.r),(node_7035.g*objScale.b)), _Autotiletoscale );
                float3 _Normals_var = UnpackNormal(tex2D(_Normals,TRANSFORM_TEX(_Autotiletoscale_var, _Normals)));
                float3 normalLocal = _Normals_var.rgb;
                float3 normalDirection = normalize(mul( normalLocal, tangentTransform )); // Perturbed normals
                
                float nSign = sign( dot( viewDirection, i.normalDir ) ); // Reverse normal if this is a backface
                i.normalDir *= nSign;
                normalDirection *= nSign;
                
                float4 _Diffuse_var = tex2D(_Diffuse,TRANSFORM_TEX(_Autotiletoscale_var, _Diffuse));
                clip(_Diffuse_var.a - 0.5);
                float3 lightDirection = normalize(lerp(_WorldSpaceLightPos0.xyz, _WorldSpaceLightPos0.xyz - i.posWorld.xyz,_WorldSpaceLightPos0.w));
                float3 lightColor = _LightColor0.rgb;
////// Lighting:
                float attenuation = LIGHT_ATTENUATION(i);
                float4 _LerpMask_var = tex2D(_LerpMask,TRANSFORM_TEX(i.uv0, _LerpMask));
                float3 node_3954 = lerp(_Diffuse_var.rgb,lerp(_LowColor.rgb,_HighColor.rgb,_Diffuse_var.r),_LerpMask_var.r);
                float node_2384 = (_Reach-_Smoothness);
                float node_5169 = 0.0;
                float node_2105 = (lerp(_MinLight,_MaxLight,saturate((node_5169 + ( (0.5*dot(lightDirection,normalDirection)+0.5 - node_2384) * (1.0 - node_5169) ) / ((_Reach+_Smoothness) - node_2384))))*attenuation);
                float3 finalColor = (_LightColor0.rgb*(node_3954*node_2105));
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
            #pragma glsl
            uniform float4 _TimeEditor;
            uniform sampler2D _Diffuse; uniform float4 _Diffuse_ST;
            uniform fixed _Autotiletoscale;
            uniform float _BaseScale;
            uniform sampler2D _node_5269; uniform float4 _node_5269_ST;
            uniform float _PositionScale;
            uniform float4 _IntensityVector;
            uniform float _GrassHeight;
            uniform float _Scrollspeed;
            uniform float _CloudPower;
            struct VertexInput {
                float4 vertex : POSITION;
                float2 texcoord0 : TEXCOORD0;
            };
            struct VertexOutput {
                V2F_SHADOW_CASTER;
                float2 uv0 : TEXCOORD1;
                float4 posWorld : TEXCOORD2;
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o = (VertexOutput)0;
                o.uv0 = v.texcoord0;
                float4 objPos = mul ( _Object2World, float4(0,0,0,1) );
                float3 recipObjScale = float3( length(_World2Object[0].xyz), length(_World2Object[1].xyz), length(_World2Object[2].xyz) );
                float3 objScale = 1.0/recipObjScale;
                float node_737 = 0.5;
                float4 node_71 = _Time + _TimeEditor;
                float2 node_4711 = (((o.uv0+(float2(mul(_Object2World, v.vertex).r,mul(_Object2World, v.vertex).g)/_PositionScale))+node_71.g*float2(0.1,0.1))*_Scrollspeed);
                float4 _node_5269_var = tex2Dlod(_node_5269,float4(TRANSFORM_TEX(node_4711, _node_5269),0.0,0));
                float3 node_5213 = (_IntensityVector.rgb*saturate((pow((node_737+_node_5269_var.g),_CloudPower)-node_737)));
                float2 node_9615 = (mul(_Object2World, v.vertex).rgb-objPos.rgb).rg;
                float node_505 = 0.0;
                v.vertex.xyz += lerp(float3(0,0,0),node_5213,saturate((node_505 + ( (node_9615.g - node_505) * (1.0 - node_505) ) / (_GrassHeight - node_505))));
                o.posWorld = mul(_Object2World, v.vertex);
                o.pos = mul(UNITY_MATRIX_MVP, v.vertex);
                TRANSFER_SHADOW_CASTER(o)
                return o;
            }
            float4 frag(VertexOutput i) : COLOR {
                float4 objPos = mul ( _Object2World, float4(0,0,0,1) );
                float3 recipObjScale = float3( length(_World2Object[0].xyz), length(_World2Object[1].xyz), length(_World2Object[2].xyz) );
                float3 objScale = 1.0/recipObjScale;
/////// Vectors:
                float2 node_7035 = (i.uv0/_BaseScale).rg;
                float2 _Autotiletoscale_var = lerp( i.uv0, float2((node_7035.r*objScale.r),(node_7035.g*objScale.b)), _Autotiletoscale );
                float4 _Diffuse_var = tex2D(_Diffuse,TRANSFORM_TEX(_Autotiletoscale_var, _Diffuse));
                clip(_Diffuse_var.a - 0.5);
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
            #pragma glsl
            uniform float4 _TimeEditor;
            uniform sampler2D _Diffuse; uniform float4 _Diffuse_ST;
            uniform fixed _Autotiletoscale;
            uniform float _BaseScale;
            uniform sampler2D _LerpMask; uniform float4 _LerpMask_ST;
            uniform float4 _LowColor;
            uniform float4 _HighColor;
            uniform sampler2D _node_5269; uniform float4 _node_5269_ST;
            uniform float _PositionScale;
            uniform float4 _IntensityVector;
            uniform float _GrassHeight;
            uniform float _Scrollspeed;
            uniform float _CloudPower;
            struct VertexInput {
                float4 vertex : POSITION;
                float2 texcoord0 : TEXCOORD0;
                float2 texcoord1 : TEXCOORD1;
                float2 texcoord2 : TEXCOORD2;
            };
            struct VertexOutput {
                float4 pos : SV_POSITION;
                float2 uv0 : TEXCOORD0;
                float4 posWorld : TEXCOORD1;
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o = (VertexOutput)0;
                o.uv0 = v.texcoord0;
                float4 objPos = mul ( _Object2World, float4(0,0,0,1) );
                float3 recipObjScale = float3( length(_World2Object[0].xyz), length(_World2Object[1].xyz), length(_World2Object[2].xyz) );
                float3 objScale = 1.0/recipObjScale;
                float node_737 = 0.5;
                float4 node_1626 = _Time + _TimeEditor;
                float2 node_4711 = (((o.uv0+(float2(mul(_Object2World, v.vertex).r,mul(_Object2World, v.vertex).g)/_PositionScale))+node_1626.g*float2(0.1,0.1))*_Scrollspeed);
                float4 _node_5269_var = tex2Dlod(_node_5269,float4(TRANSFORM_TEX(node_4711, _node_5269),0.0,0));
                float3 node_5213 = (_IntensityVector.rgb*saturate((pow((node_737+_node_5269_var.g),_CloudPower)-node_737)));
                float2 node_9615 = (mul(_Object2World, v.vertex).rgb-objPos.rgb).rg;
                float node_505 = 0.0;
                v.vertex.xyz += lerp(float3(0,0,0),node_5213,saturate((node_505 + ( (node_9615.g - node_505) * (1.0 - node_505) ) / (_GrassHeight - node_505))));
                o.posWorld = mul(_Object2World, v.vertex);
                o.pos = UnityMetaVertexPosition(v.vertex, v.texcoord1.xy, v.texcoord2.xy, unity_LightmapST, unity_DynamicLightmapST );
                return o;
            }
            float4 frag(VertexOutput i) : SV_Target {
                float4 objPos = mul ( _Object2World, float4(0,0,0,1) );
                float3 recipObjScale = float3( length(_World2Object[0].xyz), length(_World2Object[1].xyz), length(_World2Object[2].xyz) );
                float3 objScale = 1.0/recipObjScale;
/////// Vectors:
                UnityMetaInput o;
                UNITY_INITIALIZE_OUTPUT( UnityMetaInput, o );
                
                float2 node_7035 = (i.uv0/_BaseScale).rg;
                float2 _Autotiletoscale_var = lerp( i.uv0, float2((node_7035.r*objScale.r),(node_7035.g*objScale.b)), _Autotiletoscale );
                float4 _Diffuse_var = tex2D(_Diffuse,TRANSFORM_TEX(_Autotiletoscale_var, _Diffuse));
                float4 _LerpMask_var = tex2D(_LerpMask,TRANSFORM_TEX(i.uv0, _LerpMask));
                float3 node_3954 = lerp(_Diffuse_var.rgb,lerp(_LowColor.rgb,_HighColor.rgb,_Diffuse_var.r),_LerpMask_var.r);
                o.Emission = (node_3954*UNITY_LIGHTMODEL_AMBIENT.rgb);
                
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
