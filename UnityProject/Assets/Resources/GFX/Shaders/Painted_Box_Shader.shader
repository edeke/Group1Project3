// Shader created with Shader Forge v1.13 
// Shader Forge (c) Neat Corporation / Joachim Holmer - http://www.acegikmo.com/shaderforge/
// Note: Manually altering this data may prevent you from opening it in Shader Forge
/*SF_DATA;ver:1.13;sub:START;pass:START;ps:flbk:,lico:1,lgpr:1,nrmq:1,nrsp:0,limd:0,spmd:1,trmd:0,grmd:0,uamb:True,mssp:True,bkdf:True,rprd:False,enco:False,rmgx:True,rpth:0,hqsc:True,hqlp:False,tesm:0,bsrc:0,bdst:1,culm:0,dpts:2,wrdp:True,dith:0,ufog:False,aust:True,igpj:False,qofs:0,qpre:1,rntp:1,fgom:False,fgoc:False,fgod:False,fgor:False,fgmd:0,fgcr:0.5,fgcg:0.5,fgcb:0.5,fgca:1,fgde:0.01,fgrn:0,fgrf:300,ofsf:0,ofsu:0,f2p0:False;n:type:ShaderForge.SFN_Final,id:0,x:35724,y:31717,varname:node_0,prsc:2|normal-1478-OUT,custl-64-OUT,olwid-2431-OUT,olcol-7799-RGB;n:type:ShaderForge.SFN_LightAttenuation,id:37,x:32964,y:32209,varname:node_37,prsc:2;n:type:ShaderForge.SFN_Dot,id:40,x:31764,y:32587,varname:node_40,prsc:2,dt:4|A-42-OUT,B-41-OUT;n:type:ShaderForge.SFN_NormalVector,id:41,x:31554,y:32638,prsc:2,pt:True;n:type:ShaderForge.SFN_LightVector,id:42,x:31409,y:32543,varname:node_42,prsc:2;n:type:ShaderForge.SFN_Add,id:55,x:33872,y:32288,varname:node_55,prsc:2|A-37-OUT,B-187-RGB;n:type:ShaderForge.SFN_LightColor,id:63,x:33860,y:32155,varname:node_63,prsc:2;n:type:ShaderForge.SFN_Multiply,id:64,x:34056,y:32155,varname:node_64,prsc:2|A-63-RGB,B-84-OUT;n:type:ShaderForge.SFN_Tex2d,id:82,x:33373,y:31893,varname:_Diffuse,prsc:2,tex:38e7dc430bf1ebb42818ebc6fdffebfc,ntxv:0,isnm:False|UVIN-1132-OUT,TEX-1905-TEX;n:type:ShaderForge.SFN_Tex2d,id:83,x:33388,y:31636,varname:_Normals,prsc:2,tex:5381acadfe3f0a34a9b357162965ce71,ntxv:3,isnm:True|UVIN-1132-OUT,TEX-9024-TEX;n:type:ShaderForge.SFN_Multiply,id:84,x:33712,y:32143,cmnt:Diffuse Light,varname:node_84,prsc:2|A-1180-OUT,B-7728-OUT;n:type:ShaderForge.SFN_AmbientLight,id:187,x:33323,y:32415,varname:node_187,prsc:2;n:type:ShaderForge.SFN_TexCoord,id:272,x:31373,y:31849,varname:node_272,prsc:2,uv:0;n:type:ShaderForge.SFN_RemapRangeAdvanced,id:1026,x:32197,y:32697,varname:node_1026,prsc:2|IN-40-OUT,IMIN-2384-OUT,IMAX-9128-OUT,OMIN-5169-OUT,OMAX-3044-OUT;n:type:ShaderForge.SFN_Slider,id:4544,x:32509,y:32314,ptovrint:False,ptlb:MinLight,ptin:_MinLight,varname:node_4544,prsc:2,min:0,cur:0,max:1;n:type:ShaderForge.SFN_Slider,id:5426,x:32521,y:32411,ptovrint:False,ptlb:MaxLight,ptin:_MaxLight,varname:_MinLight_copy,prsc:2,min:0,cur:1,max:1;n:type:ShaderForge.SFN_Slider,id:3630,x:31336,y:33021,ptovrint:False,ptlb:Reach,ptin:_Reach,varname:node_3630,prsc:2,min:0,cur:0.5,max:1;n:type:ShaderForge.SFN_Slider,id:7181,x:31336,y:33116,ptovrint:False,ptlb:Smoothness,ptin:_Smoothness,varname:_Value_copy,prsc:2,min:0,cur:0.025,max:0.5;n:type:ShaderForge.SFN_Add,id:9128,x:31776,y:33050,varname:node_9128,prsc:2|A-3630-OUT,B-7181-OUT;n:type:ShaderForge.SFN_Subtract,id:2384,x:31776,y:32906,varname:node_2384,prsc:2|A-3630-OUT,B-7181-OUT;n:type:ShaderForge.SFN_Clamp01,id:1648,x:32372,y:32697,varname:node_1648,prsc:2|IN-1026-OUT;n:type:ShaderForge.SFN_Vector1,id:5169,x:32170,y:32843,varname:node_5169,prsc:2,v1:0;n:type:ShaderForge.SFN_Vector1,id:3044,x:32168,y:32906,varname:node_3044,prsc:2,v1:1;n:type:ShaderForge.SFN_Lerp,id:6558,x:32995,y:32384,varname:node_6558,prsc:2|A-4544-OUT,B-5426-OUT,T-1648-OUT;n:type:ShaderForge.SFN_Slider,id:2431,x:33847,y:32462,ptovrint:False,ptlb:Outline,ptin:_Outline,varname:node_2431,prsc:2,min:0,cur:0,max:1;n:type:ShaderForge.SFN_Color,id:7799,x:34004,y:32554,ptovrint:False,ptlb:OutlineColor,ptin:_OutlineColor,varname:node_7799,prsc:2,glob:False,c1:0,c2:0,c3:0,c4:1;n:type:ShaderForge.SFN_Add,id:3442,x:33522,y:32170,varname:node_3442,prsc:2|A-2105-OUT,B-187-RGB;n:type:ShaderForge.SFN_Multiply,id:2105,x:33252,y:32160,varname:node_2105,prsc:2|A-6558-OUT,B-37-OUT;n:type:ShaderForge.SFN_Vector1,id:5483,x:33323,y:32547,varname:node_5483,prsc:2,v1:0;n:type:ShaderForge.SFN_Clamp,id:7728,x:33640,y:32350,varname:node_7728,prsc:2|IN-2105-OUT,MIN-187-RGB,MAX-36-OUT;n:type:ShaderForge.SFN_Vector1,id:36,x:33523,y:32507,varname:node_36,prsc:2,v1:1;n:type:ShaderForge.SFN_ObjectScale,id:3319,x:32342,y:31898,varname:node_3319,prsc:2,rcp:False;n:type:ShaderForge.SFN_Multiply,id:324,x:32696,y:31673,varname:node_324,prsc:2|A-3742-R,B-3319-X;n:type:ShaderForge.SFN_Append,id:1132,x:32880,y:31809,varname:node_1132,prsc:2|A-324-OUT,B-2373-OUT;n:type:ShaderForge.SFN_ValueProperty,id:3878,x:31387,y:31744,ptovrint:False,ptlb:Base Scale,ptin:_BaseScale,varname:node_3878,prsc:2,glob:False,v1:1;n:type:ShaderForge.SFN_Divide,id:3093,x:31759,y:31712,varname:node_3093,prsc:2|A-272-UVOUT,B-3878-OUT;n:type:ShaderForge.SFN_Tex2d,id:5887,x:33679,y:31471,ptovrint:False,ptlb:Mask,ptin:_Mask,varname:node_5887,prsc:2,tex:5f35c53802c6051489400c74fd077f13,ntxv:0,isnm:False;n:type:ShaderForge.SFN_Multiply,id:8465,x:33669,y:31869,varname:node_8465,prsc:2|A-82-RGB,B-5887-B;n:type:ShaderForge.SFN_Multiply,id:3403,x:33966,y:31607,varname:node_3403,prsc:2|A-83-RGB,B-5887-B;n:type:ShaderForge.SFN_ComponentMask,id:3742,x:32301,y:31644,varname:node_3742,prsc:2,cc1:0,cc2:1,cc3:-1,cc4:-1|IN-3093-OUT;n:type:ShaderForge.SFN_ObjectScale,id:9788,x:32287,y:31332,varname:node_9788,prsc:2,rcp:False;n:type:ShaderForge.SFN_Multiply,id:753,x:32629,y:31328,varname:node_753,prsc:2|A-6938-G,B-9788-Y;n:type:ShaderForge.SFN_Append,id:2194,x:32859,y:31303,varname:node_2194,prsc:2|A-3038-OUT,B-753-OUT;n:type:ShaderForge.SFN_ComponentMask,id:6938,x:32287,y:31163,varname:node_6938,prsc:2,cc1:0,cc2:1,cc3:-1,cc4:-1|IN-3093-OUT;n:type:ShaderForge.SFN_Tex2d,id:7401,x:33169,y:31149,varname:_Normals_copy,prsc:2,tex:5381acadfe3f0a34a9b357162965ce71,ntxv:3,isnm:True|UVIN-2194-OUT,TEX-9024-TEX;n:type:ShaderForge.SFN_Tex2d,id:2242,x:33169,y:31347,varname:_Diffuse_copy,prsc:2,tex:38e7dc430bf1ebb42818ebc6fdffebfc,ntxv:0,isnm:False|UVIN-2194-OUT,TEX-1905-TEX;n:type:ShaderForge.SFN_Multiply,id:3962,x:33438,y:31141,varname:node_3962,prsc:2|A-7401-RGB,B-5887-G;n:type:ShaderForge.SFN_Multiply,id:2393,x:33436,y:31271,varname:node_2393,prsc:2|A-2242-RGB,B-5887-G;n:type:ShaderForge.SFN_Add,id:3309,x:34173,y:31553,varname:node_3309,prsc:2|A-3962-OUT,B-3403-OUT;n:type:ShaderForge.SFN_Add,id:1348,x:33897,y:31796,varname:node_1348,prsc:2|A-2393-OUT,B-8465-OUT;n:type:ShaderForge.SFN_Multiply,id:2373,x:32663,y:31868,varname:node_2373,prsc:2|A-3742-G,B-3319-Z;n:type:ShaderForge.SFN_Multiply,id:3038,x:32532,y:31101,varname:node_3038,prsc:2|A-6938-R,B-9788-X;n:type:ShaderForge.SFN_Append,id:2057,x:32857,y:30841,varname:node_2057,prsc:2|A-6543-OUT,B-8945-OUT;n:type:ShaderForge.SFN_Multiply,id:8945,x:32620,y:30841,varname:node_8945,prsc:2|A-2423-G,B-7653-Y;n:type:ShaderForge.SFN_ObjectScale,id:7653,x:32278,y:30845,varname:node_7653,prsc:2,rcp:False;n:type:ShaderForge.SFN_ComponentMask,id:2423,x:32278,y:30676,varname:node_2423,prsc:2,cc1:0,cc2:1,cc3:-1,cc4:-1|IN-3093-OUT;n:type:ShaderForge.SFN_Multiply,id:6543,x:32523,y:30614,varname:node_6543,prsc:2|A-2423-R,B-7653-Z;n:type:ShaderForge.SFN_Tex2d,id:4269,x:33095,y:30684,varname:_Normals_copy_copy,prsc:2,tex:5381acadfe3f0a34a9b357162965ce71,ntxv:3,isnm:True|UVIN-2057-OUT,TEX-9024-TEX;n:type:ShaderForge.SFN_Tex2d,id:8003,x:33095,y:30882,varname:_Diffuse_copy_copy,prsc:2,tex:38e7dc430bf1ebb42818ebc6fdffebfc,ntxv:0,isnm:False|UVIN-2057-OUT,TEX-1905-TEX;n:type:ShaderForge.SFN_Multiply,id:681,x:33351,y:30695,varname:node_681,prsc:2|A-4269-RGB,B-5887-R;n:type:ShaderForge.SFN_Multiply,id:2749,x:33344,y:30888,varname:node_2749,prsc:2|A-8003-RGB,B-5887-R;n:type:ShaderForge.SFN_Add,id:1478,x:34360,y:31480,varname:node_1478,prsc:2|A-681-OUT,B-3309-OUT;n:type:ShaderForge.SFN_Add,id:8353,x:34115,y:31765,varname:node_8353,prsc:2|A-2749-OUT,B-1348-OUT;n:type:ShaderForge.SFN_ValueProperty,id:3281,x:33111,y:31687,ptovrint:False,ptlb:Water Height_copy,ptin:_WaterHeight_copy,varname:_WaterHeight_copy,prsc:2,glob:False,v1:0;n:type:ShaderForge.SFN_Subtract,id:5524,x:33373,y:31767,varname:node_5524,prsc:2|A-5072-Y,B-3281-OUT;n:type:ShaderForge.SFN_Clamp01,id:7984,x:33658,y:31745,varname:node_7984,prsc:2|IN-5524-OUT;n:type:ShaderForge.SFN_FragmentPosition,id:5072,x:33111,y:31764,varname:node_5072,prsc:2;n:type:ShaderForge.SFN_ValueProperty,id:6744,x:33511,y:31587,ptovrint:False,ptlb:Wetline sharpness_copy,ptin:_Wetlinesharpness_copy,varname:_Wetlinesharpness_copy,prsc:2,glob:False,v1:1.3;n:type:ShaderForge.SFN_Vector1,id:3673,x:33679,y:31552,varname:node_3673,prsc:2,v1:2;n:type:ShaderForge.SFN_Multiply,id:5801,x:34148,y:31431,varname:node_5801,prsc:2|A-7984-OUT,B-6744-OUT;n:type:ShaderForge.SFN_Clamp01,id:8859,x:34332,y:31598,varname:node_8859,prsc:2|IN-5801-OUT;n:type:ShaderForge.SFN_Lerp,id:2828,x:34570,y:31715,varname:node_2828,prsc:2|T-8859-OUT;n:type:ShaderForge.SFN_Tex2dAsset,id:1905,x:33095,y:31950,ptovrint:False,ptlb:Diffuse Texture,ptin:_DiffuseTexture,varname:node_1905,glob:False,tex:38e7dc430bf1ebb42818ebc6fdffebfc,ntxv:0,isnm:False;n:type:ShaderForge.SFN_Tex2dAsset,id:9024,x:32780,y:31481,ptovrint:False,ptlb:Normal Texture,ptin:_NormalTexture,varname:_DiffuseTexture_copy,glob:False,tex:5381acadfe3f0a34a9b357162965ce71,ntxv:3,isnm:True;n:type:ShaderForge.SFN_Tex2d,id:1195,x:35012,y:31868,ptovrint:False,ptlb:Wear Mask,ptin:_WearMask,varname:node_1195,prsc:2,tex:1807567cbf002c1449d55994cb039671,ntxv:0,isnm:False;n:type:ShaderForge.SFN_Color,id:880,x:34883,y:31566,ptovrint:False,ptlb:Wall Color,ptin:_WallColor,varname:node_880,prsc:2,glob:False,c1:0.875,c2:0.6305147,c3:0.6659229,c4:1;n:type:ShaderForge.SFN_If,id:1180,x:35294,y:31589,varname:node_1180,prsc:2|A-7926-OUT,B-8623-OUT,GT-701-OUT,EQ-701-OUT,LT-8353-OUT;n:type:ShaderForge.SFN_Slider,id:8623,x:34945,y:31763,ptovrint:False,ptlb:Paint Wear Factor,ptin:_PaintWearFactor,varname:node_8623,prsc:2,min:0,cur:0.6239316,max:1;n:type:ShaderForge.SFN_Multiply,id:701,x:35078,y:31470,varname:node_701,prsc:2|A-2857-OUT,B-880-RGB;n:type:ShaderForge.SFN_Tex2dAsset,id:3342,x:32787,y:31101,ptovrint:False,ptlb:Paint Mask,ptin:_PaintMask,varname:node_3342,glob:False,tex:86660450529013d4d8fe835585c8399d,ntxv:0,isnm:False;n:type:ShaderForge.SFN_Tex2d,id:8661,x:33169,y:31014,varname:node_8661,prsc:2,tex:86660450529013d4d8fe835585c8399d,ntxv:0,isnm:False|UVIN-2194-OUT,TEX-3342-TEX;n:type:ShaderForge.SFN_Multiply,id:1971,x:33439,y:31022,varname:node_1971,prsc:2|A-8661-RGB,B-5887-G;n:type:ShaderForge.SFN_Multiply,id:1963,x:33351,y:30527,varname:node_1963,prsc:2|A-5701-RGB,B-5887-R;n:type:ShaderForge.SFN_Tex2d,id:4742,x:33369,y:31506,varname:node_4742,prsc:2,tex:86660450529013d4d8fe835585c8399d,ntxv:0,isnm:False|UVIN-1132-OUT,TEX-3342-TEX;n:type:ShaderForge.SFN_Multiply,id:4073,x:33527,y:31436,varname:node_4073,prsc:2|A-4742-RGB,B-5887-B;n:type:ShaderForge.SFN_Add,id:1138,x:33756,y:31279,varname:node_1138,prsc:2|A-1971-OUT,B-4073-OUT;n:type:ShaderForge.SFN_Add,id:1789,x:33888,y:31071,varname:node_1789,prsc:2|A-1963-OUT,B-1138-OUT;n:type:ShaderForge.SFN_Tex2d,id:5701,x:33017,y:30516,varname:node_5701,prsc:2,tex:86660450529013d4d8fe835585c8399d,ntxv:0,isnm:False|UVIN-2057-OUT,TEX-3342-TEX;n:type:ShaderForge.SFN_ComponentMask,id:5331,x:34069,y:31170,varname:node_5331,prsc:2,cc1:0,cc2:-1,cc3:-1,cc4:-1|IN-1789-OUT;n:type:ShaderForge.SFN_OneMinus,id:7926,x:34259,y:31169,varname:node_7926,prsc:2|IN-5331-OUT;n:type:ShaderForge.SFN_Add,id:5555,x:34570,y:31480,varname:node_5555,prsc:2|A-8353-OUT,B-7992-OUT;n:type:ShaderForge.SFN_ValueProperty,id:7992,x:34463,y:31381,ptovrint:False,ptlb:Color Blend shift,ptin:_ColorBlendshift,varname:node_7992,prsc:2,glob:False,v1:0.4;n:type:ShaderForge.SFN_Clamp01,id:2857,x:34745,y:31350,varname:node_2857,prsc:2|IN-5555-OUT;proporder:3630-7181-4544-5426-7799-2431-3878-5887-1905-9024-1195-880-8623-3342-7992;pass:END;sub:END;*/

Shader "Shader Forge/Examples/Painted_Box_Shader" {
    Properties {
        _Reach ("Reach", Range(0, 1)) = 0.5
        _Smoothness ("Smoothness", Range(0, 0.5)) = 0.025
        _MinLight ("MinLight", Range(0, 1)) = 0
        _MaxLight ("MaxLight", Range(0, 1)) = 1
        _OutlineColor ("OutlineColor", Color) = (0,0,0,1)
        _Outline ("Outline", Range(0, 1)) = 0
        _BaseScale ("Base Scale", Float ) = 1
        _Mask ("Mask", 2D) = "white" {}
        _DiffuseTexture ("Diffuse Texture", 2D) = "white" {}
        _NormalTexture ("Normal Texture", 2D) = "bump" {}
        _WearMask ("Wear Mask", 2D) = "white" {}
        _WallColor ("Wall Color", Color) = (0.875,0.6305147,0.6659229,1)
        _PaintWearFactor ("Paint Wear Factor", Range(0, 1)) = 0.6239316
        _PaintMask ("Paint Mask", 2D) = "white" {}
        _ColorBlendshift ("Color Blend shift", Float ) = 0.4
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
            struct VertexInput {
                float4 vertex : POSITION;
                float3 normal : NORMAL;
            };
            struct VertexOutput {
                float4 pos : SV_POSITION;
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o = (VertexOutput)0;
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
            uniform float _BaseScale;
            uniform sampler2D _Mask; uniform float4 _Mask_ST;
            uniform sampler2D _DiffuseTexture; uniform float4 _DiffuseTexture_ST;
            uniform sampler2D _NormalTexture; uniform float4 _NormalTexture_ST;
            uniform float4 _WallColor;
            uniform float _PaintWearFactor;
            uniform sampler2D _PaintMask; uniform float4 _PaintMask_ST;
            uniform float _ColorBlendshift;
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
                float2 node_3093 = (i.uv0/_BaseScale);
                float2 node_2423 = node_3093.rg;
                float2 node_2057 = float2((node_2423.r*objScale.b),(node_2423.g*objScale.g));
                float3 _Normals_copy_copy = UnpackNormal(tex2D(_NormalTexture,TRANSFORM_TEX(node_2057, _NormalTexture)));
                float4 _Mask_var = tex2D(_Mask,TRANSFORM_TEX(i.uv0, _Mask));
                float2 node_6938 = node_3093.rg;
                float2 node_2194 = float2((node_6938.r*objScale.r),(node_6938.g*objScale.g));
                float3 _Normals_copy = UnpackNormal(tex2D(_NormalTexture,TRANSFORM_TEX(node_2194, _NormalTexture)));
                float2 node_3742 = node_3093.rg;
                float2 node_1132 = float2((node_3742.r*objScale.r),(node_3742.g*objScale.b));
                float3 _Normals = UnpackNormal(tex2D(_NormalTexture,TRANSFORM_TEX(node_1132, _NormalTexture)));
                float3 normalLocal = ((_Normals_copy_copy.rgb*_Mask_var.r)+((_Normals_copy.rgb*_Mask_var.g)+(_Normals.rgb*_Mask_var.b)));
                float3 normalDirection = normalize(mul( normalLocal, tangentTransform )); // Perturbed normals
                float3 lightDirection = normalize(_WorldSpaceLightPos0.xyz);
                float3 lightColor = _LightColor0.rgb;
////// Lighting:
                float attenuation = LIGHT_ATTENUATION(i);
                float4 node_5701 = tex2D(_PaintMask,TRANSFORM_TEX(node_2057, _PaintMask));
                float4 node_8661 = tex2D(_PaintMask,TRANSFORM_TEX(node_2194, _PaintMask));
                float4 node_4742 = tex2D(_PaintMask,TRANSFORM_TEX(node_1132, _PaintMask));
                float node_1180_if_leA = step((1.0 - ((node_5701.rgb*_Mask_var.r)+((node_8661.rgb*_Mask_var.g)+(node_4742.rgb*_Mask_var.b))).r),_PaintWearFactor);
                float node_1180_if_leB = step(_PaintWearFactor,(1.0 - ((node_5701.rgb*_Mask_var.r)+((node_8661.rgb*_Mask_var.g)+(node_4742.rgb*_Mask_var.b))).r));
                float4 _Diffuse_copy_copy = tex2D(_DiffuseTexture,TRANSFORM_TEX(node_2057, _DiffuseTexture));
                float4 _Diffuse_copy = tex2D(_DiffuseTexture,TRANSFORM_TEX(node_2194, _DiffuseTexture));
                float4 _Diffuse = tex2D(_DiffuseTexture,TRANSFORM_TEX(node_1132, _DiffuseTexture));
                float3 node_8353 = ((_Diffuse_copy_copy.rgb*_Mask_var.r)+((_Diffuse_copy.rgb*_Mask_var.g)+(_Diffuse.rgb*_Mask_var.b)));
                float3 node_701 = (saturate((node_8353+_ColorBlendshift))*_WallColor.rgb);
                float node_2384 = (_Reach-_Smoothness);
                float node_5169 = 0.0;
                float node_2105 = (lerp(_MinLight,_MaxLight,saturate((node_5169 + ( (0.5*dot(lightDirection,normalDirection)+0.5 - node_2384) * (1.0 - node_5169) ) / ((_Reach+_Smoothness) - node_2384))))*attenuation);
                float3 finalColor = (_LightColor0.rgb*(lerp((node_1180_if_leA*node_8353)+(node_1180_if_leB*node_701),node_701,node_1180_if_leA*node_1180_if_leB)*clamp(node_2105,UNITY_LIGHTMODEL_AMBIENT.rgb,1.0)));
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
            uniform float _BaseScale;
            uniform sampler2D _Mask; uniform float4 _Mask_ST;
            uniform sampler2D _DiffuseTexture; uniform float4 _DiffuseTexture_ST;
            uniform sampler2D _NormalTexture; uniform float4 _NormalTexture_ST;
            uniform float4 _WallColor;
            uniform float _PaintWearFactor;
            uniform sampler2D _PaintMask; uniform float4 _PaintMask_ST;
            uniform float _ColorBlendshift;
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
                float2 node_3093 = (i.uv0/_BaseScale);
                float2 node_2423 = node_3093.rg;
                float2 node_2057 = float2((node_2423.r*objScale.b),(node_2423.g*objScale.g));
                float3 _Normals_copy_copy = UnpackNormal(tex2D(_NormalTexture,TRANSFORM_TEX(node_2057, _NormalTexture)));
                float4 _Mask_var = tex2D(_Mask,TRANSFORM_TEX(i.uv0, _Mask));
                float2 node_6938 = node_3093.rg;
                float2 node_2194 = float2((node_6938.r*objScale.r),(node_6938.g*objScale.g));
                float3 _Normals_copy = UnpackNormal(tex2D(_NormalTexture,TRANSFORM_TEX(node_2194, _NormalTexture)));
                float2 node_3742 = node_3093.rg;
                float2 node_1132 = float2((node_3742.r*objScale.r),(node_3742.g*objScale.b));
                float3 _Normals = UnpackNormal(tex2D(_NormalTexture,TRANSFORM_TEX(node_1132, _NormalTexture)));
                float3 normalLocal = ((_Normals_copy_copy.rgb*_Mask_var.r)+((_Normals_copy.rgb*_Mask_var.g)+(_Normals.rgb*_Mask_var.b)));
                float3 normalDirection = normalize(mul( normalLocal, tangentTransform )); // Perturbed normals
                float3 lightDirection = normalize(lerp(_WorldSpaceLightPos0.xyz, _WorldSpaceLightPos0.xyz - i.posWorld.xyz,_WorldSpaceLightPos0.w));
                float3 lightColor = _LightColor0.rgb;
////// Lighting:
                float attenuation = LIGHT_ATTENUATION(i);
                float4 node_5701 = tex2D(_PaintMask,TRANSFORM_TEX(node_2057, _PaintMask));
                float4 node_8661 = tex2D(_PaintMask,TRANSFORM_TEX(node_2194, _PaintMask));
                float4 node_4742 = tex2D(_PaintMask,TRANSFORM_TEX(node_1132, _PaintMask));
                float node_1180_if_leA = step((1.0 - ((node_5701.rgb*_Mask_var.r)+((node_8661.rgb*_Mask_var.g)+(node_4742.rgb*_Mask_var.b))).r),_PaintWearFactor);
                float node_1180_if_leB = step(_PaintWearFactor,(1.0 - ((node_5701.rgb*_Mask_var.r)+((node_8661.rgb*_Mask_var.g)+(node_4742.rgb*_Mask_var.b))).r));
                float4 _Diffuse_copy_copy = tex2D(_DiffuseTexture,TRANSFORM_TEX(node_2057, _DiffuseTexture));
                float4 _Diffuse_copy = tex2D(_DiffuseTexture,TRANSFORM_TEX(node_2194, _DiffuseTexture));
                float4 _Diffuse = tex2D(_DiffuseTexture,TRANSFORM_TEX(node_1132, _DiffuseTexture));
                float3 node_8353 = ((_Diffuse_copy_copy.rgb*_Mask_var.r)+((_Diffuse_copy.rgb*_Mask_var.g)+(_Diffuse.rgb*_Mask_var.b)));
                float3 node_701 = (saturate((node_8353+_ColorBlendshift))*_WallColor.rgb);
                float node_2384 = (_Reach-_Smoothness);
                float node_5169 = 0.0;
                float node_2105 = (lerp(_MinLight,_MaxLight,saturate((node_5169 + ( (0.5*dot(lightDirection,normalDirection)+0.5 - node_2384) * (1.0 - node_5169) ) / ((_Reach+_Smoothness) - node_2384))))*attenuation);
                float3 finalColor = (_LightColor0.rgb*(lerp((node_1180_if_leA*node_8353)+(node_1180_if_leB*node_701),node_701,node_1180_if_leA*node_1180_if_leB)*clamp(node_2105,UNITY_LIGHTMODEL_AMBIENT.rgb,1.0)));
                return fixed4(finalColor * 1,0);
            }
            ENDCG
        }
    }
    FallBack "Diffuse"
    CustomEditor "ShaderForgeMaterialInspector"
}
