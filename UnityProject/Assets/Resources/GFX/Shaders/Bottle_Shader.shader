// Shader created with Shader Forge v1.13 
// Shader Forge (c) Neat Corporation / Joachim Holmer - http://www.acegikmo.com/shaderforge/
// Note: Manually altering this data may prevent you from opening it in Shader Forge
/*SF_DATA;ver:1.13;sub:START;pass:START;ps:flbk:,lico:1,lgpr:1,nrmq:1,nrsp:0,limd:0,spmd:1,trmd:0,grmd:0,uamb:True,mssp:True,bkdf:True,rprd:False,enco:False,rmgx:True,rpth:0,hqsc:True,hqlp:False,tesm:0,bsrc:0,bdst:1,culm:0,dpts:2,wrdp:True,dith:0,ufog:False,aust:True,igpj:False,qofs:0,qpre:1,rntp:1,fgom:False,fgoc:False,fgod:False,fgor:False,fgmd:0,fgcr:0.5,fgcg:0.5,fgcb:0.5,fgca:1,fgde:0.01,fgrn:0,fgrf:300,ofsf:0,ofsu:0,f2p0:False;n:type:ShaderForge.SFN_Final,id:0,x:34329,y:31962,varname:node_0,prsc:2|normal-83-RGB,emission-126-OUT,custl-64-OUT,olwid-2431-OUT,olcol-7799-RGB;n:type:ShaderForge.SFN_LightAttenuation,id:37,x:32964,y:32209,varname:node_37,prsc:2;n:type:ShaderForge.SFN_Dot,id:40,x:31764,y:32587,varname:node_40,prsc:2,dt:4|A-42-OUT,B-41-OUT;n:type:ShaderForge.SFN_NormalVector,id:41,x:31554,y:32638,prsc:2,pt:True;n:type:ShaderForge.SFN_LightVector,id:42,x:31409,y:32543,varname:node_42,prsc:2;n:type:ShaderForge.SFN_LightColor,id:63,x:33860,y:32155,varname:node_63,prsc:2;n:type:ShaderForge.SFN_Multiply,id:64,x:34056,y:32155,varname:node_64,prsc:2|A-63-RGB,B-84-OUT;n:type:ShaderForge.SFN_Tex2d,id:82,x:33110,y:31874,ptovrint:False,ptlb:Diffuse,ptin:_Diffuse,varname:_Diffuse,prsc:2,tex:2bfaf7651cbad1243961adc887f00000,ntxv:0,isnm:False;n:type:ShaderForge.SFN_Tex2d,id:83,x:34056,y:31974,ptovrint:False,ptlb:Normals,ptin:_Normals,varname:_Normals,prsc:2,tex:a4900d3a9fde56248bc38b4521bdb13a,ntxv:3,isnm:True;n:type:ShaderForge.SFN_Multiply,id:84,x:33712,y:32143,cmnt:Diffuse Light,varname:node_84,prsc:2|A-3675-OUT,B-2105-OUT;n:type:ShaderForge.SFN_AmbientLight,id:187,x:33323,y:32415,varname:node_187,prsc:2;n:type:ShaderForge.SFN_RemapRangeAdvanced,id:1026,x:32197,y:32697,varname:node_1026,prsc:2|IN-40-OUT,IMIN-2384-OUT,IMAX-9128-OUT,OMIN-5169-OUT,OMAX-3044-OUT;n:type:ShaderForge.SFN_Slider,id:4544,x:32509,y:32314,ptovrint:False,ptlb:MinLight,ptin:_MinLight,varname:node_4544,prsc:2,min:0,cur:0,max:1;n:type:ShaderForge.SFN_Slider,id:5426,x:32521,y:32411,ptovrint:False,ptlb:MaxLight,ptin:_MaxLight,varname:_MinLight_copy,prsc:2,min:0,cur:1,max:1;n:type:ShaderForge.SFN_Slider,id:3630,x:31336,y:33021,ptovrint:False,ptlb:Reach,ptin:_Reach,varname:node_3630,prsc:2,min:0,cur:0.879,max:1;n:type:ShaderForge.SFN_Slider,id:7181,x:31336,y:33116,ptovrint:False,ptlb:Smoothness,ptin:_Smoothness,varname:_Value_copy,prsc:2,min:0,cur:0.303,max:0.5;n:type:ShaderForge.SFN_Add,id:9128,x:31776,y:33050,varname:node_9128,prsc:2|A-3630-OUT,B-7181-OUT;n:type:ShaderForge.SFN_Subtract,id:2384,x:31776,y:32906,varname:node_2384,prsc:2|A-3630-OUT,B-7181-OUT;n:type:ShaderForge.SFN_Clamp01,id:1648,x:32372,y:32697,varname:node_1648,prsc:2|IN-1026-OUT;n:type:ShaderForge.SFN_Vector1,id:5169,x:32170,y:32843,varname:node_5169,prsc:2,v1:0;n:type:ShaderForge.SFN_Vector1,id:3044,x:32168,y:32906,varname:node_3044,prsc:2,v1:1;n:type:ShaderForge.SFN_Lerp,id:6558,x:32995,y:32384,varname:node_6558,prsc:2|A-4544-OUT,B-5426-OUT,T-1648-OUT;n:type:ShaderForge.SFN_Slider,id:2431,x:33802,y:32430,ptovrint:False,ptlb:Outline,ptin:_Outline,varname:node_2431,prsc:2,min:0,cur:0,max:1;n:type:ShaderForge.SFN_Color,id:7799,x:33866,y:32580,ptovrint:False,ptlb:OutlineColor,ptin:_OutlineColor,varname:node_7799,prsc:2,glob:False,c1:0,c2:0,c3:0,c4:1;n:type:ShaderForge.SFN_Multiply,id:2105,x:33252,y:32160,varname:node_2105,prsc:2|A-6558-OUT,B-37-OUT;n:type:ShaderForge.SFN_Vector1,id:5483,x:33323,y:32547,varname:node_5483,prsc:2,v1:0;n:type:ShaderForge.SFN_Clamp,id:7728,x:33640,y:32350,varname:node_7728,prsc:2|IN-2105-OUT,MIN-187-RGB,MAX-36-OUT;n:type:ShaderForge.SFN_Vector1,id:36,x:33523,y:32507,varname:node_36,prsc:2,v1:1;n:type:ShaderForge.SFN_Multiply,id:5545,x:33728,y:31875,varname:node_5545,prsc:2|A-3675-OUT,B-187-RGB;n:type:ShaderForge.SFN_Add,id:126,x:33920,y:31875,varname:node_126,prsc:2|A-5545-OUT,B-3995-OUT;n:type:ShaderForge.SFN_Color,id:2454,x:33286,y:31953,ptovrint:False,ptlb:Highlight,ptin:_Highlight,varname:node_2454,prsc:2,glob:False,c1:0,c2:0,c3:0,c4:1;n:type:ShaderForge.SFN_Fresnel,id:17,x:33142,y:32048,varname:node_17,prsc:2;n:type:ShaderForge.SFN_Multiply,id:3995,x:33593,y:32019,varname:node_3995,prsc:2|A-2454-RGB,B-17-OUT;n:type:ShaderForge.SFN_Color,id:6056,x:33542,y:32209,ptovrint:False,ptlb:Highlight_copy,ptin:_Highlight_copy,varname:_Highlight_copy,prsc:2,glob:False,c1:0,c2:0,c3:0,c4:1;n:type:ShaderForge.SFN_Fresnel,id:2030,x:33657,y:32330,varname:node_2030,prsc:2;n:type:ShaderForge.SFN_Multiply,id:4969,x:33849,y:32275,varname:node_4969,prsc:2|A-6056-RGB,B-2030-OUT;n:type:ShaderForge.SFN_Add,id:6413,x:34176,y:32131,varname:node_6413,prsc:2|B-4969-OUT;n:type:ShaderForge.SFN_Posterize,id:5509,x:32313,y:33010,varname:node_5509,prsc:2|IN-1026-OUT,STPS-7582-OUT;n:type:ShaderForge.SFN_Vector1,id:7582,x:31983,y:33163,varname:node_7582,prsc:2,v1:3;n:type:ShaderForge.SFN_RemapRange,id:4032,x:32757,y:32886,varname:node_4032,prsc:2,frmn:0.5,frmx:1,tomn:0,tomx:1|IN-5509-OUT;n:type:ShaderForge.SFN_Lerp,id:4676,x:33110,y:31732,varname:node_4676,prsc:2|A-3179-RGB,B-7740-RGB,T-2461-OUT;n:type:ShaderForge.SFN_Color,id:3179,x:32741,y:31598,ptovrint:False,ptlb:Color 1,ptin:_Color1,varname:node_3179,prsc:2,glob:False,c1:0.06590614,c2:0.1887267,c3:0.3897059,c4:1;n:type:ShaderForge.SFN_Color,id:7740,x:32741,y:31794,ptovrint:False,ptlb:Color 2,ptin:_Color2,varname:_Color2,prsc:2,glob:False,c1:0.375865,c2:0.5460626,c3:0.6470588,c4:1;n:type:ShaderForge.SFN_Clamp01,id:2461,x:32923,y:32788,varname:node_2461,prsc:2|IN-4032-OUT;n:type:ShaderForge.SFN_Fresnel,id:8489,x:33240,y:31461,varname:node_8489,prsc:2|EXP-5195-OUT;n:type:ShaderForge.SFN_Multiply,id:938,x:33515,y:31594,varname:node_938,prsc:2|A-459-OUT,B-7740-RGB;n:type:ShaderForge.SFN_Lerp,id:3675,x:33713,y:31605,varname:node_3675,prsc:2|A-4676-OUT,B-938-OUT,T-459-OUT;n:type:ShaderForge.SFN_Vector1,id:5195,x:33065,y:31589,varname:node_5195,prsc:2,v1:3;n:type:ShaderForge.SFN_Multiply,id:1693,x:33403,y:31438,varname:node_1693,prsc:2|A-1453-OUT,B-8489-OUT;n:type:ShaderForge.SFN_Vector1,id:1453,x:33239,y:31392,varname:node_1453,prsc:2,v1:1.5;n:type:ShaderForge.SFN_Clamp01,id:459,x:33561,y:31429,varname:node_459,prsc:2|IN-1693-OUT;n:type:ShaderForge.SFN_Color,id:7742,x:33009,y:32848,ptovrint:False,ptlb:Color 3,ptin:_Color3,varname:_Color3,prsc:2,glob:False,c1:0.5,c2:0.5,c3:0.5,c4:1;n:type:ShaderForge.SFN_Color,id:3652,x:33073,y:32912,ptovrint:False,ptlb:Color 4,ptin:_Color4,varname:_Color4,prsc:2,glob:False,c1:0.5,c2:0.5,c3:0.5,c4:1;proporder:82-83-3630-7181-4544-5426-7799-2431-2454-3179-7740;pass:END;sub:END;*/

Shader "Shader Forge/Examples/Bottle_Shader" {
    Properties {
        _Diffuse ("Diffuse", 2D) = "white" {}
        _Normals ("Normals", 2D) = "bump" {}
        _Reach ("Reach", Range(0, 1)) = 0.879
        _Smoothness ("Smoothness", Range(0, 0.5)) = 0.303
        _MinLight ("MinLight", Range(0, 1)) = 0
        _MaxLight ("MaxLight", Range(0, 1)) = 1
        _OutlineColor ("OutlineColor", Color) = (0,0,0,1)
        _Outline ("Outline", Range(0, 1)) = 0
        _Highlight ("Highlight", Color) = (0,0,0,1)
        _Color1 ("Color 1", Color) = (0.06590614,0.1887267,0.3897059,1)
        _Color2 ("Color 2", Color) = (0.375865,0.5460626,0.6470588,1)
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
            uniform sampler2D _Normals; uniform float4 _Normals_ST;
            uniform float _MinLight;
            uniform float _MaxLight;
            uniform float _Reach;
            uniform float _Smoothness;
            uniform float4 _Highlight;
            uniform float4 _Color1;
            uniform float4 _Color2;
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
                float3 viewDirection = normalize(_WorldSpaceCameraPos.xyz - i.posWorld.xyz);
                float3 _Normals_var = UnpackNormal(tex2D(_Normals,TRANSFORM_TEX(i.uv0, _Normals)));
                float3 normalLocal = _Normals_var.rgb;
                float3 normalDirection = normalize(mul( normalLocal, tangentTransform )); // Perturbed normals
                float3 lightDirection = normalize(_WorldSpaceLightPos0.xyz);
                float3 lightColor = _LightColor0.rgb;
////// Lighting:
                float attenuation = LIGHT_ATTENUATION(i);
////// Emissive:
                float node_2384 = (_Reach-_Smoothness);
                float node_5169 = 0.0;
                float node_1026 = (node_5169 + ( (0.5*dot(lightDirection,normalDirection)+0.5 - node_2384) * (1.0 - node_5169) ) / ((_Reach+_Smoothness) - node_2384));
                float node_7582 = 3.0;
                float node_459 = saturate((1.5*pow(1.0-max(0,dot(normalDirection, viewDirection)),3.0)));
                float3 node_3675 = lerp(lerp(_Color1.rgb,_Color2.rgb,saturate((floor(node_1026 * node_7582) / (node_7582 - 1)*2.0+-1.0))),(node_459*_Color2.rgb),node_459);
                float3 emissive = ((node_3675*UNITY_LIGHTMODEL_AMBIENT.rgb)+(_Highlight.rgb*(1.0-max(0,dot(normalDirection, viewDirection)))));
                float node_2105 = (lerp(_MinLight,_MaxLight,saturate(node_1026))*attenuation);
                float3 finalColor = emissive + (_LightColor0.rgb*(node_3675*node_2105));
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
            uniform sampler2D _Normals; uniform float4 _Normals_ST;
            uniform float _MinLight;
            uniform float _MaxLight;
            uniform float _Reach;
            uniform float _Smoothness;
            uniform float4 _Highlight;
            uniform float4 _Color1;
            uniform float4 _Color2;
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
                float3 viewDirection = normalize(_WorldSpaceCameraPos.xyz - i.posWorld.xyz);
                float3 _Normals_var = UnpackNormal(tex2D(_Normals,TRANSFORM_TEX(i.uv0, _Normals)));
                float3 normalLocal = _Normals_var.rgb;
                float3 normalDirection = normalize(mul( normalLocal, tangentTransform )); // Perturbed normals
                float3 lightDirection = normalize(lerp(_WorldSpaceLightPos0.xyz, _WorldSpaceLightPos0.xyz - i.posWorld.xyz,_WorldSpaceLightPos0.w));
                float3 lightColor = _LightColor0.rgb;
////// Lighting:
                float attenuation = LIGHT_ATTENUATION(i);
                float node_2384 = (_Reach-_Smoothness);
                float node_5169 = 0.0;
                float node_1026 = (node_5169 + ( (0.5*dot(lightDirection,normalDirection)+0.5 - node_2384) * (1.0 - node_5169) ) / ((_Reach+_Smoothness) - node_2384));
                float node_7582 = 3.0;
                float node_459 = saturate((1.5*pow(1.0-max(0,dot(normalDirection, viewDirection)),3.0)));
                float3 node_3675 = lerp(lerp(_Color1.rgb,_Color2.rgb,saturate((floor(node_1026 * node_7582) / (node_7582 - 1)*2.0+-1.0))),(node_459*_Color2.rgb),node_459);
                float node_2105 = (lerp(_MinLight,_MaxLight,saturate(node_1026))*attenuation);
                float3 finalColor = (_LightColor0.rgb*(node_3675*node_2105));
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
            uniform float _Reach;
            uniform float _Smoothness;
            uniform float4 _Highlight;
            uniform float4 _Color1;
            uniform float4 _Color2;
            struct VertexInput {
                float4 vertex : POSITION;
                float3 normal : NORMAL;
                float2 texcoord1 : TEXCOORD1;
                float2 texcoord2 : TEXCOORD2;
            };
            struct VertexOutput {
                float4 pos : SV_POSITION;
                float4 posWorld : TEXCOORD0;
                float3 normalDir : TEXCOORD1;
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o = (VertexOutput)0;
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
                float3 lightDirection = normalize(lerp(_WorldSpaceLightPos0.xyz, _WorldSpaceLightPos0.xyz - i.posWorld.xyz,_WorldSpaceLightPos0.w));
                UnityMetaInput o;
                UNITY_INITIALIZE_OUTPUT( UnityMetaInput, o );
                
                float node_2384 = (_Reach-_Smoothness);
                float node_5169 = 0.0;
                float node_1026 = (node_5169 + ( (0.5*dot(lightDirection,normalDirection)+0.5 - node_2384) * (1.0 - node_5169) ) / ((_Reach+_Smoothness) - node_2384));
                float node_7582 = 3.0;
                float node_459 = saturate((1.5*pow(1.0-max(0,dot(normalDirection, viewDirection)),3.0)));
                float3 node_3675 = lerp(lerp(_Color1.rgb,_Color2.rgb,saturate((floor(node_1026 * node_7582) / (node_7582 - 1)*2.0+-1.0))),(node_459*_Color2.rgb),node_459);
                o.Emission = ((node_3675*UNITY_LIGHTMODEL_AMBIENT.rgb)+(_Highlight.rgb*(1.0-max(0,dot(normalDirection, viewDirection)))));
                
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
