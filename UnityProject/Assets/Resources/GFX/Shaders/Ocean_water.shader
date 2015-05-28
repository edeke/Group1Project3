// Shader created with Shader Forge v1.13 
// Shader Forge (c) Neat Corporation / Joachim Holmer - http://www.acegikmo.com/shaderforge/
// Note: Manually altering this data may prevent you from opening it in Shader Forge
/*SF_DATA;ver:1.13;sub:START;pass:START;ps:flbk:,lico:1,lgpr:1,nrmq:1,nrsp:0,limd:1,spmd:0,trmd:0,grmd:1,uamb:True,mssp:True,bkdf:False,rprd:False,enco:False,rmgx:True,rpth:0,hqsc:True,hqlp:False,tesm:0,bsrc:3,bdst:7,culm:0,dpts:2,wrdp:False,dith:0,ufog:True,aust:True,igpj:True,qofs:0,qpre:3,rntp:2,fgom:False,fgoc:False,fgod:False,fgor:False,fgmd:0,fgcr:0.5,fgcg:0.5,fgcb:0.5,fgca:1,fgde:0.01,fgrn:0,fgrf:300,ofsf:0,ofsu:0,f2p0:False;n:type:ShaderForge.SFN_Final,id:3975,x:32719,y:32712,varname:node_3975,prsc:2|diff-7573-OUT,normal-5757-OUT,alpha-6445-OUT,voffset-6131-OUT;n:type:ShaderForge.SFN_Tex2d,id:6370,x:31436,y:32655,ptovrint:False,ptlb:Ocean Texture,ptin:_OceanTexture,varname:node_6370,prsc:2,ntxv:2,isnm:False|UVIN-4995-UVOUT;n:type:ShaderForge.SFN_Tex2d,id:4255,x:31436,y:32454,ptovrint:False,ptlb:Normal Map,ptin:_NormalMap,varname:node_4255,prsc:2,ntxv:3,isnm:True|UVIN-4995-UVOUT;n:type:ShaderForge.SFN_DepthBlend,id:9914,x:31811,y:32809,varname:node_9914,prsc:2|DIST-5124-OUT;n:type:ShaderForge.SFN_Lerp,id:1733,x:32405,y:32758,varname:node_1733,prsc:2|A-2364-OUT,B-4826-OUT,T-529-OUT;n:type:ShaderForge.SFN_Multiply,id:2364,x:32282,y:32404,varname:node_2364,prsc:2|A-2778-RGB,B-4826-OUT;n:type:ShaderForge.SFN_Color,id:2778,x:32047,y:32280,ptovrint:False,ptlb:Fade Color,ptin:_FadeColor,varname:node_2778,prsc:2,glob:False,c1:0.2564338,c2:0.4892876,c3:0.6838235,c4:1;n:type:ShaderForge.SFN_Vector1,id:4489,x:31811,y:32941,varname:node_4489,prsc:2,v1:0.2;n:type:ShaderForge.SFN_Power,id:529,x:32050,y:32865,varname:node_529,prsc:2|VAL-9914-OUT,EXP-4489-OUT;n:type:ShaderForge.SFN_TexCoord,id:4981,x:30779,y:32051,varname:node_4981,prsc:2,uv:0;n:type:ShaderForge.SFN_Multiply,id:5627,x:30964,y:32049,varname:node_5627,prsc:2|A-4981-UVOUT,B-8015-OUT;n:type:ShaderForge.SFN_Tex2d,id:1859,x:31434,y:32068,ptovrint:False,ptlb:Normal Map_copy,ptin:_NormalMap_copy,varname:_NormalMap_copy,prsc:2,ntxv:3,isnm:True|UVIN-3317-UVOUT;n:type:ShaderForge.SFN_Tex2d,id:9871,x:31434,y:32269,ptovrint:False,ptlb:Ocean Texture_copy,ptin:_OceanTexture_copy,varname:_OceanTexture_copy,prsc:2,ntxv:2,isnm:False|UVIN-8160-UVOUT;n:type:ShaderForge.SFN_ValueProperty,id:8015,x:30738,y:32285,ptovrint:False,ptlb:Tiling 2,ptin:_Tiling2,varname:node_8015,prsc:2,glob:False,v1:2;n:type:ShaderForge.SFN_Add,id:5757,x:31662,y:32118,varname:node_5757,prsc:2|A-1859-RGB,B-4255-RGB;n:type:ShaderForge.SFN_Lerp,id:3786,x:31815,y:32264,varname:node_3786,prsc:2|A-9871-RGB,B-6370-RGB,T-8184-OUT;n:type:ShaderForge.SFN_Vector1,id:8184,x:31678,y:32454,varname:node_8184,prsc:2,v1:0.5;n:type:ShaderForge.SFN_Blend,id:530,x:31745,y:32609,varname:node_530,prsc:2,blmd:5,clmp:True|SRC-9871-RGB,DST-6370-RGB;n:type:ShaderForge.SFN_Relay,id:4826,x:31988,y:32549,varname:node_4826,prsc:2|IN-530-OUT;n:type:ShaderForge.SFN_Panner,id:3317,x:31182,y:32097,varname:node_3317,prsc:2,spu:0.02,spv:0.03|UVIN-5627-OUT;n:type:ShaderForge.SFN_Panner,id:8641,x:30952,y:32772,varname:node_8641,prsc:2,spu:0.1,spv:0.1;n:type:ShaderForge.SFN_Panner,id:8160,x:31182,y:32251,varname:node_8160,prsc:2,spu:0.005,spv:0.002|UVIN-5627-OUT;n:type:ShaderForge.SFN_Tex2d,id:8107,x:31414,y:31720,ptovrint:False,ptlb:height,ptin:_height,varname:node_8107,prsc:2,ntxv:0,isnm:False|UVIN-5692-UVOUT;n:type:ShaderForge.SFN_Vector3,id:8031,x:31662,y:31907,varname:node_8031,prsc:2,v1:0,v2:1,v3:0;n:type:ShaderForge.SFN_Multiply,id:5994,x:31862,y:31862,varname:node_5994,prsc:2|A-8031-OUT,B-5982-OUT;n:type:ShaderForge.SFN_Multiply,id:6131,x:32107,y:31781,varname:node_6131,prsc:2|A-5994-OUT,B-4840-OUT;n:type:ShaderForge.SFN_Tex2d,id:5944,x:31414,y:31907,ptovrint:False,ptlb:height_copy,ptin:_height_copy,varname:_height_copy,prsc:2,ntxv:0,isnm:False|UVIN-1560-UVOUT;n:type:ShaderForge.SFN_Multiply,id:5982,x:31627,y:31701,varname:node_5982,prsc:2|A-8107-R,B-5944-R;n:type:ShaderForge.SFN_Panner,id:5692,x:31184,y:31752,varname:node_5692,prsc:2,spu:0.02,spv:0.03|UVIN-4925-UVOUT;n:type:ShaderForge.SFN_TexCoord,id:4925,x:30811,y:31720,varname:node_4925,prsc:2,uv:0;n:type:ShaderForge.SFN_Panner,id:1560,x:31171,y:31907,varname:node_1560,prsc:2,spu:0.03,spv:0.04|UVIN-483-OUT;n:type:ShaderForge.SFN_Vector3,id:9355,x:32555,y:32567,varname:node_9355,prsc:2,v1:0.04357698,v2:0.4558824,v3:0.06348141;n:type:ShaderForge.SFN_Multiply,id:483,x:30994,y:31834,varname:node_483,prsc:2|A-4925-UVOUT,B-2906-OUT;n:type:ShaderForge.SFN_Vector1,id:2906,x:30788,y:31944,varname:node_2906,prsc:2,v1:1.3;n:type:ShaderForge.SFN_Multiply,id:8970,x:31031,y:32442,varname:node_8970,prsc:2|A-5627-OUT,B-2989-OUT;n:type:ShaderForge.SFN_Tex2d,id:1256,x:31429,y:32949,ptovrint:False,ptlb:Foam Texture,ptin:_FoamTexture,varname:node_1256,prsc:2,ntxv:0,isnm:False|UVIN-4995-UVOUT;n:type:ShaderForge.SFN_Tex2d,id:4001,x:31426,y:33128,ptovrint:False,ptlb:Beach Texture,ptin:_BeachTexture,varname:node_4001,prsc:2,ntxv:0,isnm:False|UVIN-4995-UVOUT;n:type:ShaderForge.SFN_ValueProperty,id:2989,x:30748,y:32465,ptovrint:False,ptlb:Tiling 3,ptin:_Tiling3,varname:_Tiling3,prsc:2,glob:False,v1:1.2;n:type:ShaderForge.SFN_Vector1,id:8490,x:31170,y:32923,varname:node_8490,prsc:2,v1:0;n:type:ShaderForge.SFN_Panner,id:4995,x:31233,y:32598,varname:node_4995,prsc:2,spu:0.002,spv:0.012|UVIN-8970-OUT;n:type:ShaderForge.SFN_Vector1,id:8777,x:31602,y:32837,varname:node_8777,prsc:2,v1:0.3;n:type:ShaderForge.SFN_ValueProperty,id:5124,x:31602,y:32949,ptovrint:False,ptlb:Fade depth,ptin:_Fadedepth,varname:node_5124,prsc:2,glob:False,v1:0;n:type:ShaderForge.SFN_DepthBlend,id:1541,x:32245,y:33346,varname:node_1541,prsc:2|DIST-2451-OUT;n:type:ShaderForge.SFN_Vector1,id:1320,x:32245,y:33478,varname:node_1320,prsc:2,v1:0.5;n:type:ShaderForge.SFN_Power,id:6445,x:32470,y:33346,varname:node_6445,prsc:2|VAL-1541-OUT,EXP-1320-OUT;n:type:ShaderForge.SFN_Vector1,id:2451,x:31989,y:33380,varname:node_2451,prsc:2,v1:1;n:type:ShaderForge.SFN_Lerp,id:7573,x:32440,y:32905,varname:node_7573,prsc:2|A-4001-RGB,B-1733-OUT,T-4759-OUT;n:type:ShaderForge.SFN_DepthBlend,id:4759,x:32264,y:32992,varname:node_4759,prsc:2|DIST-7460-OUT;n:type:ShaderForge.SFN_Vector1,id:7460,x:32029,y:33071,varname:node_7460,prsc:2,v1:2;n:type:ShaderForge.SFN_Lerp,id:4180,x:32440,y:33038,varname:node_4180,prsc:2|A-1256-RGB,B-7573-OUT,T-8116-OUT;n:type:ShaderForge.SFN_DepthBlend,id:8116,x:32115,y:33245,varname:node_8116,prsc:2|DIST-3509-OUT;n:type:ShaderForge.SFN_Vector1,id:3509,x:31862,y:33288,varname:node_3509,prsc:2,v1:0.1;n:type:ShaderForge.SFN_ValueProperty,id:3894,x:31846,y:32027,ptovrint:False,ptlb:Vertex Offset,ptin:_VertexOffset,varname:node_3894,prsc:2,glob:False,v1:0.5;n:type:ShaderForge.SFN_Divide,id:4840,x:32014,y:31981,varname:node_4840,prsc:2|A-3894-OUT,B-4603-OUT;n:type:ShaderForge.SFN_Vector1,id:4603,x:31887,y:32111,varname:node_4603,prsc:2,v1:100;proporder:6370-4255-2778-9871-8015-1859-8107-5944-4001-1256-2989-5124-3894;pass:END;sub:END;*/

Shader "Shader Forge/Ocean_water" {
    Properties {
        _OceanTexture ("Ocean Texture", 2D) = "black" {}
        _NormalMap ("Normal Map", 2D) = "bump" {}
        _FadeColor ("Fade Color", Color) = (0.2564338,0.4892876,0.6838235,1)
        _OceanTexture_copy ("Ocean Texture_copy", 2D) = "black" {}
        _Tiling2 ("Tiling 2", Float ) = 2
        _NormalMap_copy ("Normal Map_copy", 2D) = "bump" {}
        _height ("height", 2D) = "white" {}
        _height_copy ("height_copy", 2D) = "white" {}
        _BeachTexture ("Beach Texture", 2D) = "white" {}
        _FoamTexture ("Foam Texture", 2D) = "white" {}
        _Tiling3 ("Tiling 3", Float ) = 1.2
        _Fadedepth ("Fade depth", Float ) = 0
        _VertexOffset ("Vertex Offset", Float ) = 0.5
        [HideInInspector]_Cutoff ("Alpha cutoff", Range(0,1)) = 0.5
    }
    SubShader {
        Tags {
            "IgnoreProjector"="True"
            "Queue"="Transparent"
            "RenderType"="Transparent"
        }
        Pass {
            Name "FORWARD"
            Tags {
                "LightMode"="ForwardBase"
            }
            Blend SrcAlpha OneMinusSrcAlpha
            ZWrite Off
            
            CGPROGRAM
            #pragma vertex vert
            #pragma fragment frag
            #define UNITY_PASS_FORWARDBASE
            #include "UnityCG.cginc"
            #pragma multi_compile_fwdbase
            #pragma multi_compile_fog
            #pragma exclude_renderers gles3 metal d3d11_9x xbox360 xboxone ps3 ps4 psp2 
            #pragma target 3.0
            #pragma glsl
            uniform float4 _LightColor0;
            uniform sampler2D _CameraDepthTexture;
            uniform float4 _TimeEditor;
            uniform sampler2D _OceanTexture; uniform float4 _OceanTexture_ST;
            uniform sampler2D _NormalMap; uniform float4 _NormalMap_ST;
            uniform float4 _FadeColor;
            uniform sampler2D _NormalMap_copy; uniform float4 _NormalMap_copy_ST;
            uniform sampler2D _OceanTexture_copy; uniform float4 _OceanTexture_copy_ST;
            uniform float _Tiling2;
            uniform sampler2D _height; uniform float4 _height_ST;
            uniform sampler2D _height_copy; uniform float4 _height_copy_ST;
            uniform sampler2D _BeachTexture; uniform float4 _BeachTexture_ST;
            uniform float _Tiling3;
            uniform float _Fadedepth;
            uniform float _VertexOffset;
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
                float4 projPos : TEXCOORD5;
                UNITY_FOG_COORDS(6)
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o = (VertexOutput)0;
                o.uv0 = v.texcoord0;
                o.normalDir = UnityObjectToWorldNormal(v.normal);
                o.tangentDir = normalize( mul( _Object2World, float4( v.tangent.xyz, 0.0 ) ).xyz );
                o.bitangentDir = normalize(cross(o.normalDir, o.tangentDir) * v.tangent.w);
                float4 node_6109 = _Time + _TimeEditor;
                float2 node_5692 = (o.uv0+node_6109.g*float2(0.02,0.03));
                float4 _height_var = tex2Dlod(_height,float4(TRANSFORM_TEX(node_5692, _height),0.0,0));
                float2 node_1560 = ((o.uv0*1.3)+node_6109.g*float2(0.03,0.04));
                float4 _height_copy_var = tex2Dlod(_height_copy,float4(TRANSFORM_TEX(node_1560, _height_copy),0.0,0));
                v.vertex.xyz += ((float3(0,1,0)*(_height_var.r*_height_copy_var.r))*(_VertexOffset/100.0));
                o.posWorld = mul(_Object2World, v.vertex);
                float3 lightColor = _LightColor0.rgb;
                o.pos = mul(UNITY_MATRIX_MVP, v.vertex);
                UNITY_TRANSFER_FOG(o,o.pos);
                o.projPos = ComputeScreenPos (o.pos);
                COMPUTE_EYEDEPTH(o.projPos.z);
                return o;
            }
            float4 frag(VertexOutput i) : COLOR {
                i.normalDir = normalize(i.normalDir);
                float sceneZ = max(0,LinearEyeDepth (UNITY_SAMPLE_DEPTH(tex2Dproj(_CameraDepthTexture, UNITY_PROJ_COORD(i.projPos)))) - _ProjectionParams.g);
                float partZ = max(0,i.projPos.z - _ProjectionParams.g);
                float3x3 tangentTransform = float3x3( i.tangentDir, i.bitangentDir, i.normalDir);
/////// Vectors:
                float3 viewDirection = normalize(_WorldSpaceCameraPos.xyz - i.posWorld.xyz);
                float4 node_6109 = _Time + _TimeEditor;
                float2 node_5627 = (i.uv0*_Tiling2);
                float2 node_3317 = (node_5627+node_6109.g*float2(0.02,0.03));
                float3 _NormalMap_copy_var = UnpackNormal(tex2D(_NormalMap_copy,TRANSFORM_TEX(node_3317, _NormalMap_copy)));
                float2 node_4995 = ((node_5627*_Tiling3)+node_6109.g*float2(0.002,0.012));
                float3 _NormalMap_var = UnpackNormal(tex2D(_NormalMap,TRANSFORM_TEX(node_4995, _NormalMap)));
                float3 normalLocal = (_NormalMap_copy_var.rgb+_NormalMap_var.rgb);
                float3 normalDirection = normalize(mul( normalLocal, tangentTransform )); // Perturbed normals
                float3 lightDirection = normalize(_WorldSpaceLightPos0.xyz);
                float3 lightColor = _LightColor0.rgb;
////// Lighting:
                float attenuation = 1;
                float3 attenColor = attenuation * _LightColor0.xyz;
/////// Diffuse:
                float NdotL = max(0.0,dot( normalDirection, lightDirection ));
                float3 directDiffuse = max( 0.0, NdotL) * attenColor;
                float3 indirectDiffuse = float3(0,0,0);
                indirectDiffuse += UNITY_LIGHTMODEL_AMBIENT.rgb; // Ambient Light
                float4 _BeachTexture_var = tex2D(_BeachTexture,TRANSFORM_TEX(node_4995, _BeachTexture));
                float2 node_8160 = (node_5627+node_6109.g*float2(0.005,0.002));
                float4 _OceanTexture_copy_var = tex2D(_OceanTexture_copy,TRANSFORM_TEX(node_8160, _OceanTexture_copy));
                float4 _OceanTexture_var = tex2D(_OceanTexture,TRANSFORM_TEX(node_4995, _OceanTexture));
                float3 node_4826 = saturate(max(_OceanTexture_copy_var.rgb,_OceanTexture_var.rgb));
                float3 node_7573 = lerp(_BeachTexture_var.rgb,lerp((_FadeColor.rgb*node_4826),node_4826,pow(saturate((sceneZ-partZ)/_Fadedepth),0.2)),saturate((sceneZ-partZ)/2.0));
                float3 diffuseColor = node_7573;
                float3 diffuse = (directDiffuse + indirectDiffuse) * diffuseColor;
/// Final Color:
                float3 finalColor = diffuse;
                fixed4 finalRGBA = fixed4(finalColor,pow(saturate((sceneZ-partZ)/1.0),0.5));
                UNITY_APPLY_FOG(i.fogCoord, finalRGBA);
                return finalRGBA;
            }
            ENDCG
        }
        Pass {
            Name "FORWARD_DELTA"
            Tags {
                "LightMode"="ForwardAdd"
            }
            Blend One One
            ZWrite Off
            
            CGPROGRAM
            #pragma vertex vert
            #pragma fragment frag
            #define UNITY_PASS_FORWARDADD
            #include "UnityCG.cginc"
            #include "AutoLight.cginc"
            #pragma multi_compile_fwdadd
            #pragma multi_compile_fog
            #pragma exclude_renderers gles3 metal d3d11_9x xbox360 xboxone ps3 ps4 psp2 
            #pragma target 3.0
            #pragma glsl
            uniform float4 _LightColor0;
            uniform sampler2D _CameraDepthTexture;
            uniform float4 _TimeEditor;
            uniform sampler2D _OceanTexture; uniform float4 _OceanTexture_ST;
            uniform sampler2D _NormalMap; uniform float4 _NormalMap_ST;
            uniform float4 _FadeColor;
            uniform sampler2D _NormalMap_copy; uniform float4 _NormalMap_copy_ST;
            uniform sampler2D _OceanTexture_copy; uniform float4 _OceanTexture_copy_ST;
            uniform float _Tiling2;
            uniform sampler2D _height; uniform float4 _height_ST;
            uniform sampler2D _height_copy; uniform float4 _height_copy_ST;
            uniform sampler2D _BeachTexture; uniform float4 _BeachTexture_ST;
            uniform float _Tiling3;
            uniform float _Fadedepth;
            uniform float _VertexOffset;
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
                float4 projPos : TEXCOORD5;
                LIGHTING_COORDS(6,7)
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o = (VertexOutput)0;
                o.uv0 = v.texcoord0;
                o.normalDir = UnityObjectToWorldNormal(v.normal);
                o.tangentDir = normalize( mul( _Object2World, float4( v.tangent.xyz, 0.0 ) ).xyz );
                o.bitangentDir = normalize(cross(o.normalDir, o.tangentDir) * v.tangent.w);
                float4 node_2173 = _Time + _TimeEditor;
                float2 node_5692 = (o.uv0+node_2173.g*float2(0.02,0.03));
                float4 _height_var = tex2Dlod(_height,float4(TRANSFORM_TEX(node_5692, _height),0.0,0));
                float2 node_1560 = ((o.uv0*1.3)+node_2173.g*float2(0.03,0.04));
                float4 _height_copy_var = tex2Dlod(_height_copy,float4(TRANSFORM_TEX(node_1560, _height_copy),0.0,0));
                v.vertex.xyz += ((float3(0,1,0)*(_height_var.r*_height_copy_var.r))*(_VertexOffset/100.0));
                o.posWorld = mul(_Object2World, v.vertex);
                float3 lightColor = _LightColor0.rgb;
                o.pos = mul(UNITY_MATRIX_MVP, v.vertex);
                o.projPos = ComputeScreenPos (o.pos);
                COMPUTE_EYEDEPTH(o.projPos.z);
                TRANSFER_VERTEX_TO_FRAGMENT(o)
                return o;
            }
            float4 frag(VertexOutput i) : COLOR {
                i.normalDir = normalize(i.normalDir);
                float sceneZ = max(0,LinearEyeDepth (UNITY_SAMPLE_DEPTH(tex2Dproj(_CameraDepthTexture, UNITY_PROJ_COORD(i.projPos)))) - _ProjectionParams.g);
                float partZ = max(0,i.projPos.z - _ProjectionParams.g);
                float3x3 tangentTransform = float3x3( i.tangentDir, i.bitangentDir, i.normalDir);
/////// Vectors:
                float3 viewDirection = normalize(_WorldSpaceCameraPos.xyz - i.posWorld.xyz);
                float4 node_2173 = _Time + _TimeEditor;
                float2 node_5627 = (i.uv0*_Tiling2);
                float2 node_3317 = (node_5627+node_2173.g*float2(0.02,0.03));
                float3 _NormalMap_copy_var = UnpackNormal(tex2D(_NormalMap_copy,TRANSFORM_TEX(node_3317, _NormalMap_copy)));
                float2 node_4995 = ((node_5627*_Tiling3)+node_2173.g*float2(0.002,0.012));
                float3 _NormalMap_var = UnpackNormal(tex2D(_NormalMap,TRANSFORM_TEX(node_4995, _NormalMap)));
                float3 normalLocal = (_NormalMap_copy_var.rgb+_NormalMap_var.rgb);
                float3 normalDirection = normalize(mul( normalLocal, tangentTransform )); // Perturbed normals
                float3 lightDirection = normalize(lerp(_WorldSpaceLightPos0.xyz, _WorldSpaceLightPos0.xyz - i.posWorld.xyz,_WorldSpaceLightPos0.w));
                float3 lightColor = _LightColor0.rgb;
////// Lighting:
                float attenuation = LIGHT_ATTENUATION(i);
                float3 attenColor = attenuation * _LightColor0.xyz;
/////// Diffuse:
                float NdotL = max(0.0,dot( normalDirection, lightDirection ));
                float3 directDiffuse = max( 0.0, NdotL) * attenColor;
                float4 _BeachTexture_var = tex2D(_BeachTexture,TRANSFORM_TEX(node_4995, _BeachTexture));
                float2 node_8160 = (node_5627+node_2173.g*float2(0.005,0.002));
                float4 _OceanTexture_copy_var = tex2D(_OceanTexture_copy,TRANSFORM_TEX(node_8160, _OceanTexture_copy));
                float4 _OceanTexture_var = tex2D(_OceanTexture,TRANSFORM_TEX(node_4995, _OceanTexture));
                float3 node_4826 = saturate(max(_OceanTexture_copy_var.rgb,_OceanTexture_var.rgb));
                float3 node_7573 = lerp(_BeachTexture_var.rgb,lerp((_FadeColor.rgb*node_4826),node_4826,pow(saturate((sceneZ-partZ)/_Fadedepth),0.2)),saturate((sceneZ-partZ)/2.0));
                float3 diffuseColor = node_7573;
                float3 diffuse = directDiffuse * diffuseColor;
/// Final Color:
                float3 finalColor = diffuse;
                return fixed4(finalColor * pow(saturate((sceneZ-partZ)/1.0),0.5),0);
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
            #pragma multi_compile_fog
            #pragma exclude_renderers gles3 metal d3d11_9x xbox360 xboxone ps3 ps4 psp2 
            #pragma target 3.0
            #pragma glsl
            uniform float4 _TimeEditor;
            uniform sampler2D _height; uniform float4 _height_ST;
            uniform sampler2D _height_copy; uniform float4 _height_copy_ST;
            uniform float _VertexOffset;
            struct VertexInput {
                float4 vertex : POSITION;
                float2 texcoord0 : TEXCOORD0;
            };
            struct VertexOutput {
                V2F_SHADOW_CASTER;
                float2 uv0 : TEXCOORD1;
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o = (VertexOutput)0;
                o.uv0 = v.texcoord0;
                float4 node_7894 = _Time + _TimeEditor;
                float2 node_5692 = (o.uv0+node_7894.g*float2(0.02,0.03));
                float4 _height_var = tex2Dlod(_height,float4(TRANSFORM_TEX(node_5692, _height),0.0,0));
                float2 node_1560 = ((o.uv0*1.3)+node_7894.g*float2(0.03,0.04));
                float4 _height_copy_var = tex2Dlod(_height_copy,float4(TRANSFORM_TEX(node_1560, _height_copy),0.0,0));
                v.vertex.xyz += ((float3(0,1,0)*(_height_var.r*_height_copy_var.r))*(_VertexOffset/100.0));
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
    }
    FallBack "Diffuse"
    CustomEditor "ShaderForgeMaterialInspector"
}
