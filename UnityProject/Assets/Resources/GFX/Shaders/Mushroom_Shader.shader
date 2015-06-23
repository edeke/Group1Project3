// Shader created with Shader Forge v1.13 
// Shader Forge (c) Neat Corporation / Joachim Holmer - http://www.acegikmo.com/shaderforge/
// Note: Manually altering this data may prevent you from opening it in Shader Forge
/*SF_DATA;ver:1.13;sub:START;pass:START;ps:flbk:,lico:1,lgpr:1,nrmq:1,nrsp:0,limd:0,spmd:1,trmd:0,grmd:0,uamb:True,mssp:True,bkdf:True,rprd:False,enco:False,rmgx:True,rpth:0,hqsc:True,hqlp:False,tesm:0,bsrc:0,bdst:1,culm:0,dpts:2,wrdp:True,dith:0,ufog:False,aust:True,igpj:False,qofs:0,qpre:1,rntp:1,fgom:False,fgoc:False,fgod:False,fgor:False,fgmd:0,fgcr:0.5,fgcg:0.5,fgcb:0.5,fgca:1,fgde:0.01,fgrn:0,fgrf:300,ofsf:0,ofsu:0,f2p0:False;n:type:ShaderForge.SFN_Final,id:0,x:35976,y:31650,varname:node_0,prsc:2|normal-83-RGB,emission-2015-OUT,olwid-2431-OUT,olcol-7799-RGB;n:type:ShaderForge.SFN_LightAttenuation,id:37,x:32964,y:32209,varname:node_37,prsc:2;n:type:ShaderForge.SFN_Dot,id:40,x:31764,y:32587,varname:node_40,prsc:2,dt:4|A-42-OUT,B-41-OUT;n:type:ShaderForge.SFN_NormalVector,id:41,x:31554,y:32638,prsc:2,pt:True;n:type:ShaderForge.SFN_LightVector,id:42,x:31409,y:32543,varname:node_42,prsc:2;n:type:ShaderForge.SFN_LightColor,id:63,x:33860,y:32155,varname:node_63,prsc:2;n:type:ShaderForge.SFN_Multiply,id:64,x:34056,y:32155,varname:node_64,prsc:2|A-63-RGB,B-84-OUT;n:type:ShaderForge.SFN_Tex2d,id:83,x:34056,y:31966,ptovrint:False,ptlb:Normals,ptin:_Normals,varname:_Normals,prsc:2,tex:a4900d3a9fde56248bc38b4521bdb13a,ntxv:3,isnm:True;n:type:ShaderForge.SFN_Multiply,id:84,x:33712,y:32143,cmnt:Diffuse Light,varname:node_84,prsc:2|A-3109-OUT,B-2105-OUT;n:type:ShaderForge.SFN_AmbientLight,id:187,x:33323,y:32415,varname:node_187,prsc:2;n:type:ShaderForge.SFN_RemapRangeAdvanced,id:1026,x:32197,y:32697,varname:node_1026,prsc:2|IN-40-OUT,IMIN-2384-OUT,IMAX-9128-OUT,OMIN-5169-OUT,OMAX-3044-OUT;n:type:ShaderForge.SFN_Slider,id:4544,x:32509,y:32314,ptovrint:False,ptlb:MinLight,ptin:_MinLight,varname:node_4544,prsc:2,min:0,cur:0,max:1;n:type:ShaderForge.SFN_Slider,id:5426,x:32521,y:32411,ptovrint:False,ptlb:MaxLight,ptin:_MaxLight,varname:_MinLight_copy,prsc:2,min:0,cur:1,max:1;n:type:ShaderForge.SFN_Slider,id:3630,x:31336,y:33021,ptovrint:False,ptlb:Reach,ptin:_Reach,varname:node_3630,prsc:2,min:0,cur:0.5,max:1;n:type:ShaderForge.SFN_Slider,id:7181,x:31336,y:33116,ptovrint:False,ptlb:Smoothness,ptin:_Smoothness,varname:_Value_copy,prsc:2,min:0,cur:0.025,max:0.5;n:type:ShaderForge.SFN_Add,id:9128,x:31776,y:33050,varname:node_9128,prsc:2|A-3630-OUT,B-7181-OUT;n:type:ShaderForge.SFN_Subtract,id:2384,x:31776,y:32906,varname:node_2384,prsc:2|A-3630-OUT,B-7181-OUT;n:type:ShaderForge.SFN_Clamp01,id:1648,x:32372,y:32697,varname:node_1648,prsc:2|IN-1026-OUT;n:type:ShaderForge.SFN_Vector1,id:5169,x:32170,y:32843,varname:node_5169,prsc:2,v1:0;n:type:ShaderForge.SFN_Vector1,id:3044,x:32168,y:32906,varname:node_3044,prsc:2,v1:1;n:type:ShaderForge.SFN_Lerp,id:6558,x:32995,y:32384,varname:node_6558,prsc:2|A-4544-OUT,B-5426-OUT,T-1648-OUT;n:type:ShaderForge.SFN_Slider,id:2431,x:33847,y:32462,ptovrint:False,ptlb:Outline,ptin:_Outline,varname:node_2431,prsc:2,min:0,cur:0,max:1;n:type:ShaderForge.SFN_Color,id:7799,x:34004,y:32554,ptovrint:False,ptlb:OutlineColor,ptin:_OutlineColor,varname:node_7799,prsc:2,glob:False,c1:0,c2:0,c3:0,c4:1;n:type:ShaderForge.SFN_Multiply,id:2105,x:33252,y:32160,varname:node_2105,prsc:2|A-6558-OUT,B-37-OUT;n:type:ShaderForge.SFN_Vector1,id:5483,x:33323,y:32547,varname:node_5483,prsc:2,v1:0;n:type:ShaderForge.SFN_Clamp,id:7728,x:33640,y:32350,varname:node_7728,prsc:2|IN-2105-OUT,MIN-187-RGB,MAX-36-OUT;n:type:ShaderForge.SFN_Vector1,id:36,x:33523,y:32507,varname:node_36,prsc:2,v1:1;n:type:ShaderForge.SFN_Multiply,id:5545,x:33815,y:31878,varname:node_5545,prsc:2|A-3109-OUT,B-187-RGB;n:type:ShaderForge.SFN_Color,id:2027,x:34331,y:31637,ptovrint:False,ptlb:Emissive Color 2,ptin:_EmissiveColor2,varname:node_2027,prsc:2,glob:False,c1:0.986714,c2:0.5073529,c3:1,c4:1;n:type:ShaderForge.SFN_ValueProperty,id:3096,x:34540,y:31807,ptovrint:False,ptlb:Emissive Intensity,ptin:_EmissiveIntensity,varname:node_3096,prsc:2,glob:False,v1:1;n:type:ShaderForge.SFN_Add,id:3939,x:34900,y:31775,varname:node_3939,prsc:2|A-5545-OUT,B-8250-OUT;n:type:ShaderForge.SFN_Multiply,id:5830,x:35347,y:31637,varname:node_5830,prsc:2|A-6481-RGB,B-8693-OUT;n:type:ShaderForge.SFN_Fresnel,id:8693,x:35155,y:31692,varname:node_8693,prsc:2;n:type:ShaderForge.SFN_Color,id:6481,x:35040,y:31571,ptovrint:False,ptlb:Highlight,ptin:_Highlight,varname:node_2454,prsc:2,glob:False,c1:0,c2:0,c3:0,c4:1;n:type:ShaderForge.SFN_Add,id:2015,x:35674,y:31493,varname:node_2015,prsc:2|A-3939-OUT,B-5830-OUT;n:type:ShaderForge.SFN_ValueProperty,id:4778,x:30802,y:31593,ptovrint:False,ptlb:Dust tiling X,ptin:_DusttilingX,varname:node_3324,prsc:2,glob:False,v1:3;n:type:ShaderForge.SFN_Color,id:190,x:34331,y:31450,ptovrint:False,ptlb:Emissive Color 1,ptin:_EmissiveColor1,varname:node_190,prsc:2,glob:False,c1:0.5,c2:1,c3:0.7724137,c4:1;n:type:ShaderForge.SFN_Lerp,id:8945,x:34540,y:31529,varname:node_8945,prsc:2|A-190-RGB,B-2027-RGB,T-8124-G;n:type:ShaderForge.SFN_Tex2d,id:8124,x:34094,y:31594,ptovrint:False,ptlb:Mergemap,ptin:_Mergemap,varname:node_8124,prsc:2,tex:34c258ce313628748b81196a7864d3fd,ntxv:0,isnm:False;n:type:ShaderForge.SFN_Multiply,id:8250,x:34728,y:31650,varname:node_8250,prsc:2|A-8945-OUT,B-3096-OUT;n:type:ShaderForge.SFN_Color,id:5668,x:33915,y:31246,ptovrint:False,ptlb:Diffuse Color 1,ptin:_DiffuseColor1,varname:node_5668,prsc:2,glob:False,c1:0.7461072,c2:0.8455882,c3:0.8250059,c4:1;n:type:ShaderForge.SFN_Color,id:2617,x:33915,y:31416,ptovrint:False,ptlb:Diffuse Color 2,ptin:_DiffuseColor2,varname:node_2617,prsc:2,glob:False,c1:0.7573529,c2:0.3062825,c3:0.6142546,c4:1;n:type:ShaderForge.SFN_Lerp,id:3109,x:34129,y:31248,varname:node_3109,prsc:2|A-5668-RGB,B-2617-RGB,T-8124-R;proporder:83-3630-7181-4544-5426-7799-2431-2027-3096-6481-190-8124-5668-2617;pass:END;sub:END;*/

Shader "Shader Forge/Examples/Mushroom_Shader" {
    Properties {
        _Normals ("Normals", 2D) = "bump" {}
        _Reach ("Reach", Range(0, 1)) = 0.5
        _Smoothness ("Smoothness", Range(0, 0.5)) = 0.025
        _MinLight ("MinLight", Range(0, 1)) = 0
        _MaxLight ("MaxLight", Range(0, 1)) = 1
        _OutlineColor ("OutlineColor", Color) = (0,0,0,1)
        _Outline ("Outline", Range(0, 1)) = 0
        _EmissiveColor2 ("Emissive Color 2", Color) = (0.986714,0.5073529,1,1)
        _EmissiveIntensity ("Emissive Intensity", Float ) = 1
        _Highlight ("Highlight", Color) = (0,0,0,1)
        _EmissiveColor1 ("Emissive Color 1", Color) = (0.5,1,0.7724137,1)
        _Mergemap ("Mergemap", 2D) = "white" {}
        _DiffuseColor1 ("Diffuse Color 1", Color) = (0.7461072,0.8455882,0.8250059,1)
        _DiffuseColor2 ("Diffuse Color 2", Color) = (0.7573529,0.3062825,0.6142546,1)
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
            #pragma multi_compile_fwdbase_fullshadows
            #pragma exclude_renderers xbox360 ps3 
            #pragma target 3.0
            uniform sampler2D _Normals; uniform float4 _Normals_ST;
            uniform float4 _EmissiveColor2;
            uniform float _EmissiveIntensity;
            uniform float4 _Highlight;
            uniform float4 _EmissiveColor1;
            uniform sampler2D _Mergemap; uniform float4 _Mergemap_ST;
            uniform float4 _DiffuseColor1;
            uniform float4 _DiffuseColor2;
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
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o = (VertexOutput)0;
                o.uv0 = v.texcoord0;
                o.normalDir = UnityObjectToWorldNormal(v.normal);
                o.tangentDir = normalize( mul( _Object2World, float4( v.tangent.xyz, 0.0 ) ).xyz );
                o.bitangentDir = normalize(cross(o.normalDir, o.tangentDir) * v.tangent.w);
                o.posWorld = mul(_Object2World, v.vertex);
                o.pos = mul(UNITY_MATRIX_MVP, v.vertex);
                return o;
            }
            float4 frag(VertexOutput i) : COLOR {
                i.normalDir = normalize(i.normalDir);
                float3x3 tangentTransform = float3x3( i.tangentDir, i.bitangentDir, i.normalDir);
/////// Vectors:
                float3 viewDirection = normalize(_WorldSpaceCameraPos.xyz - i.posWorld.xyz);
                float3 _Normals_var = UnpackNormal(tex2D(_Normals,TRANSFORM_TEX(i.uv0, _Normals)));
                float3 normalLocal = _Normals_var.rgb;
                float3 normalDirection = normalize(mul( normalLocal, tangentTransform )); // Perturbed normals
////// Lighting:
////// Emissive:
                float4 _Mergemap_var = tex2D(_Mergemap,TRANSFORM_TEX(i.uv0, _Mergemap));
                float3 node_3109 = lerp(_DiffuseColor1.rgb,_DiffuseColor2.rgb,_Mergemap_var.r);
                float3 emissive = (((node_3109*UNITY_LIGHTMODEL_AMBIENT.rgb)+(lerp(_EmissiveColor1.rgb,_EmissiveColor2.rgb,_Mergemap_var.g)*_EmissiveIntensity))+(_Highlight.rgb*(1.0-max(0,dot(normalDirection, viewDirection)))));
                float3 finalColor = emissive;
                return fixed4(finalColor,1);
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
            uniform float4 _EmissiveColor2;
            uniform float _EmissiveIntensity;
            uniform float4 _Highlight;
            uniform float4 _EmissiveColor1;
            uniform sampler2D _Mergemap; uniform float4 _Mergemap_ST;
            uniform float4 _DiffuseColor1;
            uniform float4 _DiffuseColor2;
            struct VertexInput {
                float4 vertex : POSITION;
                float3 normal : NORMAL;
                float2 texcoord0 : TEXCOORD0;
                float2 texcoord1 : TEXCOORD1;
                float2 texcoord2 : TEXCOORD2;
            };
            struct VertexOutput {
                float4 pos : SV_POSITION;
                float2 uv0 : TEXCOORD0;
                float4 posWorld : TEXCOORD1;
                float3 normalDir : TEXCOORD2;
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o = (VertexOutput)0;
                o.uv0 = v.texcoord0;
                o.normalDir = UnityObjectToWorldNormal(v.normal);
                o.posWorld = mul(_Object2World, v.vertex);
                o.pos = UnityMetaVertexPosition(v.vertex, v.texcoord1.xy, v.texcoord2.xy, unity_LightmapST, unity_DynamicLightmapST );
                return o;
            }
            float4 frag(VertexOutput i) : SV_Target {
                i.normalDir = normalize(i.normalDir);
/////// Vectors:
                float3 viewDirection = normalize(_WorldSpaceCameraPos.xyz - i.posWorld.xyz);
                float3 normalDirection = i.normalDir;
                UnityMetaInput o;
                UNITY_INITIALIZE_OUTPUT( UnityMetaInput, o );
                
                float4 _Mergemap_var = tex2D(_Mergemap,TRANSFORM_TEX(i.uv0, _Mergemap));
                float3 node_3109 = lerp(_DiffuseColor1.rgb,_DiffuseColor2.rgb,_Mergemap_var.r);
                o.Emission = (((node_3109*UNITY_LIGHTMODEL_AMBIENT.rgb)+(lerp(_EmissiveColor1.rgb,_EmissiveColor2.rgb,_Mergemap_var.g)*_EmissiveIntensity))+(_Highlight.rgb*(1.0-max(0,dot(normalDirection, viewDirection)))));
                
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
