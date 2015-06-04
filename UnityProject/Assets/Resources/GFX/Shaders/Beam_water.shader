// Shader created with Shader Forge v1.13 
// Shader Forge (c) Neat Corporation / Joachim Holmer - http://www.acegikmo.com/shaderforge/
// Note: Manually altering this data may prevent you from opening it in Shader Forge
/*SF_DATA;ver:1.13;sub:START;pass:START;ps:flbk:,lico:1,lgpr:1,nrmq:1,nrsp:0,limd:0,spmd:1,trmd:0,grmd:0,uamb:True,mssp:True,bkdf:True,rprd:False,enco:False,rmgx:True,rpth:0,hqsc:True,hqlp:False,tesm:0,bsrc:0,bdst:1,culm:0,dpts:2,wrdp:True,dith:0,ufog:False,aust:True,igpj:False,qofs:0,qpre:1,rntp:1,fgom:False,fgoc:False,fgod:False,fgor:False,fgmd:0,fgcr:0.5,fgcg:0.5,fgcb:0.5,fgca:1,fgde:0.01,fgrn:0,fgrf:300,ofsf:0,ofsu:0,f2p0:False;n:type:ShaderForge.SFN_Final,id:0,x:34329,y:31962,varname:node_0,prsc:2|normal-83-RGB,emission-7918-OUT,custl-64-OUT,olwid-2431-OUT,olcol-7799-RGB;n:type:ShaderForge.SFN_LightAttenuation,id:37,x:32964,y:32209,varname:node_37,prsc:2;n:type:ShaderForge.SFN_Dot,id:40,x:31764,y:32587,varname:node_40,prsc:2,dt:4|A-42-OUT,B-41-OUT;n:type:ShaderForge.SFN_NormalVector,id:41,x:31554,y:32638,prsc:2,pt:True;n:type:ShaderForge.SFN_LightVector,id:42,x:31409,y:32543,varname:node_42,prsc:2;n:type:ShaderForge.SFN_Add,id:55,x:33872,y:32288,varname:node_55,prsc:2|A-37-OUT,B-187-RGB;n:type:ShaderForge.SFN_LightColor,id:63,x:33860,y:32155,varname:node_63,prsc:2;n:type:ShaderForge.SFN_Multiply,id:64,x:34056,y:32155,varname:node_64,prsc:2|A-63-RGB,B-84-OUT;n:type:ShaderForge.SFN_Tex2d,id:82,x:32127,y:31908,ptovrint:False,ptlb:Diffuse,ptin:_Diffuse,varname:_Diffuse,prsc:2,tex:d5739f2476f718646a87ff1354793dbf,ntxv:0,isnm:False|UVIN-272-UVOUT;n:type:ShaderForge.SFN_Tex2d,id:83,x:34056,y:31966,ptovrint:False,ptlb:Normals,ptin:_Normals,varname:_Normals,prsc:2,tex:03f4dea692d40f441a7efe84dc264df7,ntxv:3,isnm:True|UVIN-272-UVOUT;n:type:ShaderForge.SFN_Multiply,id:84,x:33712,y:32143,cmnt:Diffuse Light,varname:node_84,prsc:2|A-7231-OUT,B-2105-OUT;n:type:ShaderForge.SFN_AmbientLight,id:187,x:33323,y:32415,varname:node_187,prsc:2;n:type:ShaderForge.SFN_TexCoord,id:272,x:31861,y:31779,varname:node_272,prsc:2,uv:0;n:type:ShaderForge.SFN_RemapRangeAdvanced,id:1026,x:32197,y:32697,varname:node_1026,prsc:2|IN-40-OUT,IMIN-2384-OUT,IMAX-9128-OUT,OMIN-5169-OUT,OMAX-3044-OUT;n:type:ShaderForge.SFN_Slider,id:4544,x:32509,y:32314,ptovrint:False,ptlb:MinLight,ptin:_MinLight,varname:node_4544,prsc:2,min:0,cur:0,max:1;n:type:ShaderForge.SFN_Slider,id:5426,x:32521,y:32411,ptovrint:False,ptlb:MaxLight,ptin:_MaxLight,varname:_MinLight_copy,prsc:2,min:0,cur:1,max:1;n:type:ShaderForge.SFN_Slider,id:3630,x:31336,y:33021,ptovrint:False,ptlb:Reach,ptin:_Reach,varname:node_3630,prsc:2,min:0,cur:0.5,max:1;n:type:ShaderForge.SFN_Slider,id:7181,x:31336,y:33116,ptovrint:False,ptlb:Smoothness,ptin:_Smoothness,varname:_Value_copy,prsc:2,min:0,cur:0.025,max:0.5;n:type:ShaderForge.SFN_Add,id:9128,x:31776,y:33050,varname:node_9128,prsc:2|A-3630-OUT,B-7181-OUT;n:type:ShaderForge.SFN_Subtract,id:2384,x:31776,y:32906,varname:node_2384,prsc:2|A-3630-OUT,B-7181-OUT;n:type:ShaderForge.SFN_Clamp01,id:1648,x:32372,y:32697,varname:node_1648,prsc:2|IN-1026-OUT;n:type:ShaderForge.SFN_Vector1,id:5169,x:32170,y:32843,varname:node_5169,prsc:2,v1:0;n:type:ShaderForge.SFN_Vector1,id:3044,x:32168,y:32906,varname:node_3044,prsc:2,v1:1;n:type:ShaderForge.SFN_Lerp,id:6558,x:32995,y:32384,varname:node_6558,prsc:2|A-4544-OUT,B-5426-OUT,T-1648-OUT;n:type:ShaderForge.SFN_Slider,id:2431,x:33847,y:32462,ptovrint:False,ptlb:Outline,ptin:_Outline,varname:node_2431,prsc:2,min:0,cur:0,max:1;n:type:ShaderForge.SFN_Color,id:7799,x:34004,y:32554,ptovrint:False,ptlb:OutlineColor,ptin:_OutlineColor,varname:node_7799,prsc:2,glob:False,c1:0,c2:0,c3:0,c4:1;n:type:ShaderForge.SFN_Add,id:3442,x:33522,y:32170,varname:node_3442,prsc:2|A-2105-OUT,B-187-RGB;n:type:ShaderForge.SFN_Multiply,id:2105,x:33252,y:32160,varname:node_2105,prsc:2|A-6558-OUT,B-37-OUT;n:type:ShaderForge.SFN_Vector1,id:5483,x:33323,y:32547,varname:node_5483,prsc:2,v1:0;n:type:ShaderForge.SFN_Clamp,id:7728,x:33632,y:32374,varname:node_7728,prsc:2|IN-2105-OUT,MIN-187-RGB,MAX-36-OUT;n:type:ShaderForge.SFN_Vector1,id:36,x:33523,y:32507,varname:node_36,prsc:2,v1:1;n:type:ShaderForge.SFN_Lerp,id:3612,x:32164,y:33343,varname:node_3612,prsc:2|T-5294-OUT;n:type:ShaderForge.SFN_Power,id:5294,x:32145,y:33529,varname:node_5294,prsc:2|VAL-8545-OUT,EXP-7630-OUT;n:type:ShaderForge.SFN_DepthBlend,id:8545,x:31906,y:33473,varname:node_8545,prsc:2;n:type:ShaderForge.SFN_Vector1,id:7630,x:31906,y:33605,varname:node_7630,prsc:2,v1:0.3;n:type:ShaderForge.SFN_FragmentPosition,id:1767,x:32855,y:31508,varname:node_1767,prsc:2;n:type:ShaderForge.SFN_ValueProperty,id:1950,x:32855,y:31431,ptovrint:False,ptlb:Water Height,ptin:_WaterHeight,varname:node_1950,prsc:2,glob:False,v1:0;n:type:ShaderForge.SFN_Lerp,id:7231,x:34314,y:31459,varname:node_7231,prsc:2|A-3854-OUT,B-507-OUT,T-2253-OUT;n:type:ShaderForge.SFN_Multiply,id:3854,x:33982,y:31593,varname:node_3854,prsc:2|A-507-OUT,B-7153-RGB;n:type:ShaderForge.SFN_Color,id:7153,x:33759,y:31740,ptovrint:False,ptlb:Wet Color,ptin:_WetColor,varname:node_7153,prsc:2,glob:False,c1:0.1197976,c2:0.04995674,c3:0.9705882,c4:1;n:type:ShaderForge.SFN_Subtract,id:7026,x:33062,y:31417,varname:node_7026,prsc:2|A-1767-Y,B-1950-OUT;n:type:ShaderForge.SFN_Clamp01,id:535,x:33319,y:31434,varname:node_535,prsc:2|IN-7026-OUT;n:type:ShaderForge.SFN_Vector1,id:925,x:33423,y:31296,varname:node_925,prsc:2,v1:2;n:type:ShaderForge.SFN_Multiply,id:8377,x:33865,y:31216,varname:node_8377,prsc:2|A-535-OUT,B-819-OUT;n:type:ShaderForge.SFN_Clamp01,id:2253,x:34076,y:31342,varname:node_2253,prsc:2|IN-8377-OUT;n:type:ShaderForge.SFN_ValueProperty,id:819,x:33255,y:31331,ptovrint:False,ptlb:Wetline sharpness,ptin:_Wetlinesharpness,varname:node_819,prsc:2,glob:False,v1:1.3;n:type:ShaderForge.SFN_Multiply,id:5372,x:33712,y:31940,varname:node_5372,prsc:2|A-7231-OUT,B-7728-OUT;n:type:ShaderForge.SFN_Multiply,id:7918,x:33508,y:31995,varname:node_7918,prsc:2|A-7231-OUT,B-187-RGB;n:type:ShaderForge.SFN_Lerp,id:5122,x:32762,y:31959,varname:node_5122,prsc:2|A-82-RGB,B-2334-RGB,T-7257-OUT;n:type:ShaderForge.SFN_Color,id:2334,x:32127,y:31624,ptovrint:False,ptlb:Paint Color,ptin:_PaintColor,varname:node_2334,prsc:2,glob:False,c1:1,c2:0.3970588,c3:0.3970588,c4:1;n:type:ShaderForge.SFN_Slider,id:7257,x:32365,y:32145,ptovrint:False,ptlb:Paint Opacity,ptin:_PaintOpacity,varname:node_7257,prsc:2,min:0,cur:0.7444093,max:1;n:type:ShaderForge.SFN_Slider,id:2396,x:32618,y:31713,ptovrint:False,ptlb:Wear Threshold,ptin:_WearThreshold,varname:node_2396,prsc:2,min:0,cur:0.1903217,max:1;n:type:ShaderForge.SFN_If,id:507,x:33109,y:31803,varname:node_507,prsc:2|A-6174-OUT,B-2396-OUT,GT-5122-OUT,EQ-5122-OUT,LT-82-RGB;n:type:ShaderForge.SFN_Clamp01,id:6174,x:33065,y:32007,varname:node_6174,prsc:2|IN-3829-OUT;n:type:ShaderForge.SFN_Add,id:3829,x:33339,y:31872,varname:node_3829,prsc:2|A-83-R,B-5191-OUT;n:type:ShaderForge.SFN_Vector1,id:5191,x:33212,y:32017,varname:node_5191,prsc:2,v1:0.5;n:type:ShaderForge.SFN_Lerp,id:1722,x:32522,y:31873,varname:node_1722,prsc:2|A-7047-RGB,B-5113-RGB,T-1503-OUT;n:type:ShaderForge.SFN_Color,id:7047,x:32039,y:32120,ptovrint:False,ptlb:Wood Color 1,ptin:_WoodColor1,varname:node_7047,prsc:2,glob:False,c1:0.5,c2:0.5,c3:0.5,c4:1;n:type:ShaderForge.SFN_Color,id:5113,x:32082,y:32283,ptovrint:False,ptlb:Wood Color 2,ptin:_WoodColor2,varname:node_5113,prsc:2,glob:False,c1:0.5,c2:0.5,c3:0.5,c4:1;n:type:ShaderForge.SFN_Power,id:5381,x:32340,y:31951,varname:node_5381,prsc:2|VAL-82-R,EXP-5708-OUT;n:type:ShaderForge.SFN_ValueProperty,id:5708,x:32198,y:32132,ptovrint:False,ptlb:Color Exp,ptin:_ColorExp,varname:node_5708,prsc:2,glob:False,v1:2;n:type:ShaderForge.SFN_Add,id:1503,x:32301,y:31790,varname:node_1503,prsc:2|A-5381-OUT,B-7192-OUT;n:type:ShaderForge.SFN_ValueProperty,id:7192,x:32163,y:31835,ptovrint:False,ptlb:Color Shift,ptin:_ColorShift,varname:node_7192,prsc:2,glob:False,v1:0;proporder:82-83-3630-7181-4544-5426-7799-2431-7153-1950-819-2334-7257-2396-7047-5113-5708-7192;pass:END;sub:END;*/

Shader "Shader Forge/Examples/Beam_water" {
    Properties {
        _Diffuse ("Diffuse", 2D) = "white" {}
        _Normals ("Normals", 2D) = "bump" {}
        _Reach ("Reach", Range(0, 1)) = 0.5
        _Smoothness ("Smoothness", Range(0, 0.5)) = 0.025
        _MinLight ("MinLight", Range(0, 1)) = 0
        _MaxLight ("MaxLight", Range(0, 1)) = 1
        _OutlineColor ("OutlineColor", Color) = (0,0,0,1)
        _Outline ("Outline", Range(0, 1)) = 0
        _WetColor ("Wet Color", Color) = (0.1197976,0.04995674,0.9705882,1)
        _WaterHeight ("Water Height", Float ) = 0
        _Wetlinesharpness ("Wetline sharpness", Float ) = 1.3
        _PaintColor ("Paint Color", Color) = (1,0.3970588,0.3970588,1)
        _PaintOpacity ("Paint Opacity", Range(0, 1)) = 0.7444093
        _WearThreshold ("Wear Threshold", Range(0, 1)) = 0.1903217
        _WoodColor1 ("Wood Color 1", Color) = (0.5,0.5,0.5,1)
        _WoodColor2 ("Wood Color 2", Color) = (0.5,0.5,0.5,1)
        _ColorExp ("Color Exp", Float ) = 2
        _ColorShift ("Color Shift", Float ) = 0
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
            uniform sampler2D _Diffuse; uniform float4 _Diffuse_ST;
            uniform sampler2D _Normals; uniform float4 _Normals_ST;
            uniform float _MinLight;
            uniform float _MaxLight;
            uniform float _Reach;
            uniform float _Smoothness;
            uniform float _WaterHeight;
            uniform float4 _WetColor;
            uniform float _Wetlinesharpness;
            uniform float4 _PaintColor;
            uniform float _PaintOpacity;
            uniform float _WearThreshold;
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
                i.normalDir = normalize(i.normalDir);
                float3x3 tangentTransform = float3x3( i.tangentDir, i.bitangentDir, i.normalDir);
/////// Vectors:
                float3 _Normals_var = UnpackNormal(tex2D(_Normals,TRANSFORM_TEX(i.uv0, _Normals)));
                float3 normalLocal = _Normals_var.rgb;
                float3 normalDirection = normalize(mul( normalLocal, tangentTransform )); // Perturbed normals
                float3 lightDirection = normalize(_WorldSpaceLightPos0.xyz);
                float3 lightColor = _LightColor0.rgb;
////// Lighting:
                float attenuation = LIGHT_ATTENUATION(i);
////// Emissive:
                float node_507_if_leA = step(saturate((_Normals_var.r+0.5)),_WearThreshold);
                float node_507_if_leB = step(_WearThreshold,saturate((_Normals_var.r+0.5)));
                float4 _Diffuse_var = tex2D(_Diffuse,TRANSFORM_TEX(i.uv0, _Diffuse));
                float3 node_5122 = lerp(_Diffuse_var.rgb,_PaintColor.rgb,_PaintOpacity);
                float3 node_507 = lerp((node_507_if_leA*_Diffuse_var.rgb)+(node_507_if_leB*node_5122),node_5122,node_507_if_leA*node_507_if_leB);
                float3 node_7231 = lerp((node_507*_WetColor.rgb),node_507,saturate((saturate((i.posWorld.g-_WaterHeight))*_Wetlinesharpness)));
                float3 emissive = (node_7231*UNITY_LIGHTMODEL_AMBIENT.rgb);
                float node_2384 = (_Reach-_Smoothness);
                float node_5169 = 0.0;
                float node_2105 = (lerp(_MinLight,_MaxLight,saturate((node_5169 + ( (0.5*dot(lightDirection,normalDirection)+0.5 - node_2384) * (1.0 - node_5169) ) / ((_Reach+_Smoothness) - node_2384))))*attenuation);
                float3 finalColor = emissive + (_LightColor0.rgb*(node_7231*node_2105));
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
            uniform sampler2D _Diffuse; uniform float4 _Diffuse_ST;
            uniform sampler2D _Normals; uniform float4 _Normals_ST;
            uniform float _MinLight;
            uniform float _MaxLight;
            uniform float _Reach;
            uniform float _Smoothness;
            uniform float _WaterHeight;
            uniform float4 _WetColor;
            uniform float _Wetlinesharpness;
            uniform float4 _PaintColor;
            uniform float _PaintOpacity;
            uniform float _WearThreshold;
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
                i.normalDir = normalize(i.normalDir);
                float3x3 tangentTransform = float3x3( i.tangentDir, i.bitangentDir, i.normalDir);
/////// Vectors:
                float3 _Normals_var = UnpackNormal(tex2D(_Normals,TRANSFORM_TEX(i.uv0, _Normals)));
                float3 normalLocal = _Normals_var.rgb;
                float3 normalDirection = normalize(mul( normalLocal, tangentTransform )); // Perturbed normals
                float3 lightDirection = normalize(lerp(_WorldSpaceLightPos0.xyz, _WorldSpaceLightPos0.xyz - i.posWorld.xyz,_WorldSpaceLightPos0.w));
                float3 lightColor = _LightColor0.rgb;
////// Lighting:
                float attenuation = LIGHT_ATTENUATION(i);
                float node_507_if_leA = step(saturate((_Normals_var.r+0.5)),_WearThreshold);
                float node_507_if_leB = step(_WearThreshold,saturate((_Normals_var.r+0.5)));
                float4 _Diffuse_var = tex2D(_Diffuse,TRANSFORM_TEX(i.uv0, _Diffuse));
                float3 node_5122 = lerp(_Diffuse_var.rgb,_PaintColor.rgb,_PaintOpacity);
                float3 node_507 = lerp((node_507_if_leA*_Diffuse_var.rgb)+(node_507_if_leB*node_5122),node_5122,node_507_if_leA*node_507_if_leB);
                float3 node_7231 = lerp((node_507*_WetColor.rgb),node_507,saturate((saturate((i.posWorld.g-_WaterHeight))*_Wetlinesharpness)));
                float node_2384 = (_Reach-_Smoothness);
                float node_5169 = 0.0;
                float node_2105 = (lerp(_MinLight,_MaxLight,saturate((node_5169 + ( (0.5*dot(lightDirection,normalDirection)+0.5 - node_2384) * (1.0 - node_5169) ) / ((_Reach+_Smoothness) - node_2384))))*attenuation);
                float3 finalColor = (_LightColor0.rgb*(node_7231*node_2105));
                return fixed4(finalColor * 1,0);
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
            uniform sampler2D _Diffuse; uniform float4 _Diffuse_ST;
            uniform sampler2D _Normals; uniform float4 _Normals_ST;
            uniform float _WaterHeight;
            uniform float4 _WetColor;
            uniform float _Wetlinesharpness;
            uniform float4 _PaintColor;
            uniform float _PaintOpacity;
            uniform float _WearThreshold;
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
                o.posWorld = mul(_Object2World, v.vertex);
                o.pos = UnityMetaVertexPosition(v.vertex, v.texcoord1.xy, v.texcoord2.xy, unity_LightmapST, unity_DynamicLightmapST );
                return o;
            }
            float4 frag(VertexOutput i) : SV_Target {
/////// Vectors:
                UnityMetaInput o;
                UNITY_INITIALIZE_OUTPUT( UnityMetaInput, o );
                
                float3 _Normals_var = UnpackNormal(tex2D(_Normals,TRANSFORM_TEX(i.uv0, _Normals)));
                float node_507_if_leA = step(saturate((_Normals_var.r+0.5)),_WearThreshold);
                float node_507_if_leB = step(_WearThreshold,saturate((_Normals_var.r+0.5)));
                float4 _Diffuse_var = tex2D(_Diffuse,TRANSFORM_TEX(i.uv0, _Diffuse));
                float3 node_5122 = lerp(_Diffuse_var.rgb,_PaintColor.rgb,_PaintOpacity);
                float3 node_507 = lerp((node_507_if_leA*_Diffuse_var.rgb)+(node_507_if_leB*node_5122),node_5122,node_507_if_leA*node_507_if_leB);
                float3 node_7231 = lerp((node_507*_WetColor.rgb),node_507,saturate((saturate((i.posWorld.g-_WaterHeight))*_Wetlinesharpness)));
                o.Emission = (node_7231*UNITY_LIGHTMODEL_AMBIENT.rgb);
                
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
