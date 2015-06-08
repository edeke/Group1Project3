// Shader created with Shader Forge v1.13 
// Shader Forge (c) Neat Corporation / Joachim Holmer - http://www.acegikmo.com/shaderforge/
// Note: Manually altering this data may prevent you from opening it in Shader Forge
/*SF_DATA;ver:1.13;sub:START;pass:START;ps:flbk:,lico:1,lgpr:1,nrmq:1,nrsp:0,limd:0,spmd:1,trmd:0,grmd:0,uamb:True,mssp:True,bkdf:True,rprd:False,enco:False,rmgx:True,rpth:0,hqsc:True,hqlp:False,tesm:0,bsrc:0,bdst:1,culm:0,dpts:2,wrdp:True,dith:0,ufog:False,aust:True,igpj:False,qofs:0,qpre:2,rntp:3,fgom:False,fgoc:False,fgod:False,fgor:False,fgmd:0,fgcr:0.5,fgcg:0.5,fgcb:0.5,fgca:1,fgde:0.01,fgrn:0,fgrf:300,ofsf:0,ofsu:0,f2p0:False;n:type:ShaderForge.SFN_Final,id:0,x:34329,y:31962,varname:node_0,prsc:2|emission-5545-OUT,custl-64-OUT,clip-9991-OUT,olwid-2431-OUT,olcol-7799-RGB;n:type:ShaderForge.SFN_LightAttenuation,id:37,x:32964,y:32209,varname:node_37,prsc:2;n:type:ShaderForge.SFN_Dot,id:40,x:31764,y:32587,varname:node_40,prsc:2,dt:4|A-42-OUT,B-41-OUT;n:type:ShaderForge.SFN_NormalVector,id:41,x:31554,y:32638,prsc:2,pt:True;n:type:ShaderForge.SFN_LightVector,id:42,x:31409,y:32543,varname:node_42,prsc:2;n:type:ShaderForge.SFN_LightColor,id:63,x:33860,y:32155,varname:node_63,prsc:2;n:type:ShaderForge.SFN_Multiply,id:64,x:34056,y:32155,varname:node_64,prsc:2|A-63-RGB,B-84-OUT;n:type:ShaderForge.SFN_Tex2d,id:82,x:32093,y:31832,ptovrint:False,ptlb:Diffuse,ptin:_Diffuse,varname:_Diffuse,prsc:2,tex:d933c3ec400dc574da6d7fa096f6a8ec,ntxv:0,isnm:False;n:type:ShaderForge.SFN_Multiply,id:84,x:33712,y:32143,cmnt:Diffuse Light,varname:node_84,prsc:2|A-5103-OUT,B-2105-OUT;n:type:ShaderForge.SFN_AmbientLight,id:187,x:33323,y:32415,varname:node_187,prsc:2;n:type:ShaderForge.SFN_RemapRangeAdvanced,id:1026,x:32197,y:32697,varname:node_1026,prsc:2|IN-40-OUT,IMIN-2384-OUT,IMAX-9128-OUT,OMIN-5169-OUT,OMAX-3044-OUT;n:type:ShaderForge.SFN_Slider,id:4544,x:32509,y:32314,ptovrint:False,ptlb:MinLight,ptin:_MinLight,varname:node_4544,prsc:2,min:0,cur:0,max:1;n:type:ShaderForge.SFN_Slider,id:5426,x:32521,y:32411,ptovrint:False,ptlb:MaxLight,ptin:_MaxLight,varname:_MinLight_copy,prsc:2,min:0,cur:1,max:1;n:type:ShaderForge.SFN_Slider,id:3630,x:31336,y:33021,ptovrint:False,ptlb:Reach,ptin:_Reach,varname:node_3630,prsc:2,min:0,cur:0.5,max:1;n:type:ShaderForge.SFN_Slider,id:7181,x:31336,y:33116,ptovrint:False,ptlb:Smoothness,ptin:_Smoothness,varname:_Value_copy,prsc:2,min:0,cur:0.025,max:0.5;n:type:ShaderForge.SFN_Add,id:9128,x:31776,y:33050,varname:node_9128,prsc:2|A-3630-OUT,B-7181-OUT;n:type:ShaderForge.SFN_Subtract,id:2384,x:31776,y:32906,varname:node_2384,prsc:2|A-3630-OUT,B-7181-OUT;n:type:ShaderForge.SFN_Clamp01,id:1648,x:32372,y:32697,varname:node_1648,prsc:2|IN-1026-OUT;n:type:ShaderForge.SFN_Vector1,id:5169,x:32170,y:32843,varname:node_5169,prsc:2,v1:0;n:type:ShaderForge.SFN_Vector1,id:3044,x:32168,y:32906,varname:node_3044,prsc:2,v1:1;n:type:ShaderForge.SFN_Lerp,id:6558,x:32995,y:32384,varname:node_6558,prsc:2|A-4544-OUT,B-5426-OUT,T-1648-OUT;n:type:ShaderForge.SFN_Slider,id:2431,x:33847,y:32462,ptovrint:False,ptlb:Outline,ptin:_Outline,varname:node_2431,prsc:2,min:0,cur:0,max:1;n:type:ShaderForge.SFN_Color,id:7799,x:34004,y:32554,ptovrint:False,ptlb:OutlineColor,ptin:_OutlineColor,varname:node_7799,prsc:2,glob:False,c1:0,c2:0,c3:0,c4:1;n:type:ShaderForge.SFN_Multiply,id:2105,x:33252,y:32160,varname:node_2105,prsc:2|A-6558-OUT,B-37-OUT;n:type:ShaderForge.SFN_Vector1,id:5483,x:33323,y:32547,varname:node_5483,prsc:2,v1:0;n:type:ShaderForge.SFN_Clamp,id:7728,x:33640,y:32350,varname:node_7728,prsc:2|IN-2105-OUT,MIN-187-RGB,MAX-36-OUT;n:type:ShaderForge.SFN_Vector1,id:36,x:33523,y:32507,varname:node_36,prsc:2,v1:1;n:type:ShaderForge.SFN_Multiply,id:5545,x:33815,y:31878,varname:node_5545,prsc:2|A-5103-OUT,B-187-RGB;n:type:ShaderForge.SFN_SwitchProperty,id:1971,x:32024,y:32322,ptovrint:False,ptlb:Invert Wear,ptin:_InvertWear,varname:node_9575,prsc:2,on:False|B-1525-OUT;n:type:ShaderForge.SFN_OneMinus,id:1525,x:31814,y:32359,varname:node_1525,prsc:2;n:type:ShaderForge.SFN_Color,id:2754,x:32209,y:31214,ptovrint:False,ptlb:Berry Color 1,ptin:_BerryColor1,varname:node_2754,prsc:2,glob:False,c1:0.399654,c2:0.5031381,c3:0.7058823,c4:1;n:type:ShaderForge.SFN_Color,id:5452,x:32209,y:31426,ptovrint:False,ptlb:Berry Color 2,ptin:_BerryColor2,varname:node_5452,prsc:2,glob:False,c1:0.2468101,c2:0.249317,c3:0.6102941,c4:1;n:type:ShaderForge.SFN_Color,id:4744,x:33168,y:31354,ptovrint:False,ptlb:Foliage Color 1,ptin:_FoliageColor1,varname:node_4744,prsc:2,glob:False,c1:0.2692474,c2:0.4411765,c3:0.2704331,c4:1;n:type:ShaderForge.SFN_Color,id:7597,x:33168,y:31553,ptovrint:False,ptlb:Foliage Color 2,ptin:_FoliageColor2,varname:node_7597,prsc:2,glob:False,c1:0.7361293,c2:0.8823529,c3:0.3243945,c4:1;n:type:ShaderForge.SFN_Color,id:6379,x:33432,y:31161,ptovrint:False,ptlb:Knopp Color,ptin:_KnoppColor,varname:node_6379,prsc:2,glob:False,c1:0.1764706,c2:0.08107623,c3:0.007785464,c4:1;n:type:ShaderForge.SFN_Lerp,id:8081,x:33376,y:31434,varname:node_8081,prsc:2|A-4744-RGB,B-7597-RGB,T-82-G;n:type:ShaderForge.SFN_Multiply,id:5866,x:33550,y:31468,varname:node_5866,prsc:2|A-8081-OUT,B-8062-OUT;n:type:ShaderForge.SFN_Lerp,id:927,x:32466,y:31344,varname:node_927,prsc:2|A-2754-RGB,B-5452-RGB,T-8349-OUT;n:type:ShaderForge.SFN_Multiply,id:945,x:32992,y:31430,varname:node_945,prsc:2|A-927-OUT,B-871-OUT;n:type:ShaderForge.SFN_Add,id:9544,x:33762,y:31483,varname:node_9544,prsc:2|A-5866-OUT,B-945-OUT;n:type:ShaderForge.SFN_Multiply,id:3297,x:33633,y:31171,varname:node_3297,prsc:2|A-6379-RGB,B-9166-OUT;n:type:ShaderForge.SFN_Add,id:5103,x:33952,y:31483,varname:node_5103,prsc:2|A-3297-OUT,B-9544-OUT;n:type:ShaderForge.SFN_Power,id:8349,x:32469,y:31610,varname:node_8349,prsc:2|VAL-82-G,EXP-8279-OUT;n:type:ShaderForge.SFN_ValueProperty,id:8279,x:32093,y:31687,ptovrint:False,ptlb:Berry Color Power,ptin:_BerryColorPower,varname:node_8279,prsc:2,glob:False,v1:2;n:type:ShaderForge.SFN_Multiply,id:9166,x:32670,y:31864,varname:node_9166,prsc:2|A-82-R,B-82-B;n:type:ShaderForge.SFN_Subtract,id:871,x:32826,y:31486,varname:node_871,prsc:2|A-82-R,B-9166-OUT;n:type:ShaderForge.SFN_Subtract,id:8062,x:33041,y:31859,varname:node_8062,prsc:2|A-82-B,B-9166-OUT;n:type:ShaderForge.SFN_Add,id:9704,x:33278,y:31808,varname:node_9704,prsc:2|A-82-R,B-82-B;n:type:ShaderForge.SFN_Clamp01,id:9991,x:33441,y:31808,varname:node_9991,prsc:2|IN-9704-OUT;proporder:82-3630-7181-4544-5426-7799-2431-2754-5452-4744-7597-6379-8279;pass:END;sub:END;*/

Shader "Shader Forge/Examples/RoundBerry01" {
    Properties {
        _Diffuse ("Diffuse", 2D) = "white" {}
        _Reach ("Reach", Range(0, 1)) = 0.5
        _Smoothness ("Smoothness", Range(0, 0.5)) = 0.025
        _MinLight ("MinLight", Range(0, 1)) = 0
        _MaxLight ("MaxLight", Range(0, 1)) = 1
        _OutlineColor ("OutlineColor", Color) = (0,0,0,1)
        _Outline ("Outline", Range(0, 1)) = 0
        _BerryColor1 ("Berry Color 1", Color) = (0.399654,0.5031381,0.7058823,1)
        _BerryColor2 ("Berry Color 2", Color) = (0.2468101,0.249317,0.6102941,1)
        _FoliageColor1 ("Foliage Color 1", Color) = (0.2692474,0.4411765,0.2704331,1)
        _FoliageColor2 ("Foliage Color 2", Color) = (0.7361293,0.8823529,0.3243945,1)
        _KnoppColor ("Knopp Color", Color) = (0.1764706,0.08107623,0.007785464,1)
        _BerryColorPower ("Berry Color Power", Float ) = 2
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
            uniform sampler2D _Diffuse; uniform float4 _Diffuse_ST;
            uniform float _Outline;
            uniform float4 _OutlineColor;
            struct VertexInput {
                float4 vertex : POSITION;
                float3 normal : NORMAL;
                float2 texcoord0 : TEXCOORD0;
            };
            struct VertexOutput {
                float4 pos : SV_POSITION;
                float2 uv0 : TEXCOORD0;
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o = (VertexOutput)0;
                o.uv0 = v.texcoord0;
                o.pos = mul(UNITY_MATRIX_MVP, float4(v.vertex.xyz + v.normal*_Outline,1));
                return o;
            }
            float4 frag(VertexOutput i) : COLOR {
/////// Vectors:
                float4 _Diffuse_var = tex2D(_Diffuse,TRANSFORM_TEX(i.uv0, _Diffuse));
                clip(saturate((_Diffuse_var.r+_Diffuse_var.b)) - 0.5);
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
            uniform float _MinLight;
            uniform float _MaxLight;
            uniform float _Reach;
            uniform float _Smoothness;
            uniform float4 _BerryColor1;
            uniform float4 _BerryColor2;
            uniform float4 _FoliageColor1;
            uniform float4 _FoliageColor2;
            uniform float4 _KnoppColor;
            uniform float _BerryColorPower;
            struct VertexInput {
                float4 vertex : POSITION;
                float3 normal : NORMAL;
                float2 texcoord0 : TEXCOORD0;
            };
            struct VertexOutput {
                float4 pos : SV_POSITION;
                float2 uv0 : TEXCOORD0;
                float4 posWorld : TEXCOORD1;
                float3 normalDir : TEXCOORD2;
                LIGHTING_COORDS(3,4)
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o = (VertexOutput)0;
                o.uv0 = v.texcoord0;
                o.normalDir = UnityObjectToWorldNormal(v.normal);
                o.posWorld = mul(_Object2World, v.vertex);
                float3 lightColor = _LightColor0.rgb;
                o.pos = mul(UNITY_MATRIX_MVP, v.vertex);
                TRANSFER_VERTEX_TO_FRAGMENT(o)
                return o;
            }
            float4 frag(VertexOutput i) : COLOR {
                i.normalDir = normalize(i.normalDir);
/////// Vectors:
                float3 normalDirection = i.normalDir;
                float4 _Diffuse_var = tex2D(_Diffuse,TRANSFORM_TEX(i.uv0, _Diffuse));
                clip(saturate((_Diffuse_var.r+_Diffuse_var.b)) - 0.5);
                float3 lightDirection = normalize(_WorldSpaceLightPos0.xyz);
                float3 lightColor = _LightColor0.rgb;
////// Lighting:
                float attenuation = LIGHT_ATTENUATION(i);
////// Emissive:
                float node_9166 = (_Diffuse_var.r*_Diffuse_var.b);
                float3 node_5103 = ((_KnoppColor.rgb*node_9166)+((lerp(_FoliageColor1.rgb,_FoliageColor2.rgb,_Diffuse_var.g)*(_Diffuse_var.b-node_9166))+(lerp(_BerryColor1.rgb,_BerryColor2.rgb,pow(_Diffuse_var.g,_BerryColorPower))*(_Diffuse_var.r-node_9166))));
                float3 emissive = (node_5103*UNITY_LIGHTMODEL_AMBIENT.rgb);
                float node_2384 = (_Reach-_Smoothness);
                float node_5169 = 0.0;
                float node_2105 = (lerp(_MinLight,_MaxLight,saturate((node_5169 + ( (0.5*dot(lightDirection,normalDirection)+0.5 - node_2384) * (1.0 - node_5169) ) / ((_Reach+_Smoothness) - node_2384))))*attenuation);
                float3 finalColor = emissive + (_LightColor0.rgb*(node_5103*node_2105));
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
            uniform float _MinLight;
            uniform float _MaxLight;
            uniform float _Reach;
            uniform float _Smoothness;
            uniform float4 _BerryColor1;
            uniform float4 _BerryColor2;
            uniform float4 _FoliageColor1;
            uniform float4 _FoliageColor2;
            uniform float4 _KnoppColor;
            uniform float _BerryColorPower;
            struct VertexInput {
                float4 vertex : POSITION;
                float3 normal : NORMAL;
                float2 texcoord0 : TEXCOORD0;
            };
            struct VertexOutput {
                float4 pos : SV_POSITION;
                float2 uv0 : TEXCOORD0;
                float4 posWorld : TEXCOORD1;
                float3 normalDir : TEXCOORD2;
                LIGHTING_COORDS(3,4)
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o = (VertexOutput)0;
                o.uv0 = v.texcoord0;
                o.normalDir = UnityObjectToWorldNormal(v.normal);
                o.posWorld = mul(_Object2World, v.vertex);
                float3 lightColor = _LightColor0.rgb;
                o.pos = mul(UNITY_MATRIX_MVP, v.vertex);
                TRANSFER_VERTEX_TO_FRAGMENT(o)
                return o;
            }
            float4 frag(VertexOutput i) : COLOR {
                i.normalDir = normalize(i.normalDir);
/////// Vectors:
                float3 normalDirection = i.normalDir;
                float4 _Diffuse_var = tex2D(_Diffuse,TRANSFORM_TEX(i.uv0, _Diffuse));
                clip(saturate((_Diffuse_var.r+_Diffuse_var.b)) - 0.5);
                float3 lightDirection = normalize(lerp(_WorldSpaceLightPos0.xyz, _WorldSpaceLightPos0.xyz - i.posWorld.xyz,_WorldSpaceLightPos0.w));
                float3 lightColor = _LightColor0.rgb;
////// Lighting:
                float attenuation = LIGHT_ATTENUATION(i);
                float node_9166 = (_Diffuse_var.r*_Diffuse_var.b);
                float3 node_5103 = ((_KnoppColor.rgb*node_9166)+((lerp(_FoliageColor1.rgb,_FoliageColor2.rgb,_Diffuse_var.g)*(_Diffuse_var.b-node_9166))+(lerp(_BerryColor1.rgb,_BerryColor2.rgb,pow(_Diffuse_var.g,_BerryColorPower))*(_Diffuse_var.r-node_9166))));
                float node_2384 = (_Reach-_Smoothness);
                float node_5169 = 0.0;
                float node_2105 = (lerp(_MinLight,_MaxLight,saturate((node_5169 + ( (0.5*dot(lightDirection,normalDirection)+0.5 - node_2384) * (1.0 - node_5169) ) / ((_Reach+_Smoothness) - node_2384))))*attenuation);
                float3 finalColor = (_LightColor0.rgb*(node_5103*node_2105));
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
            uniform sampler2D _Diffuse; uniform float4 _Diffuse_ST;
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
                o.pos = mul(UNITY_MATRIX_MVP, v.vertex);
                TRANSFER_SHADOW_CASTER(o)
                return o;
            }
            float4 frag(VertexOutput i) : COLOR {
/////// Vectors:
                float4 _Diffuse_var = tex2D(_Diffuse,TRANSFORM_TEX(i.uv0, _Diffuse));
                clip(saturate((_Diffuse_var.r+_Diffuse_var.b)) - 0.5);
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
            uniform sampler2D _Diffuse; uniform float4 _Diffuse_ST;
            uniform float4 _BerryColor1;
            uniform float4 _BerryColor2;
            uniform float4 _FoliageColor1;
            uniform float4 _FoliageColor2;
            uniform float4 _KnoppColor;
            uniform float _BerryColorPower;
            struct VertexInput {
                float4 vertex : POSITION;
                float2 texcoord0 : TEXCOORD0;
                float2 texcoord1 : TEXCOORD1;
                float2 texcoord2 : TEXCOORD2;
            };
            struct VertexOutput {
                float4 pos : SV_POSITION;
                float2 uv0 : TEXCOORD0;
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o = (VertexOutput)0;
                o.uv0 = v.texcoord0;
                o.pos = UnityMetaVertexPosition(v.vertex, v.texcoord1.xy, v.texcoord2.xy, unity_LightmapST, unity_DynamicLightmapST );
                return o;
            }
            float4 frag(VertexOutput i) : SV_Target {
/////// Vectors:
                UnityMetaInput o;
                UNITY_INITIALIZE_OUTPUT( UnityMetaInput, o );
                
                float4 _Diffuse_var = tex2D(_Diffuse,TRANSFORM_TEX(i.uv0, _Diffuse));
                float node_9166 = (_Diffuse_var.r*_Diffuse_var.b);
                float3 node_5103 = ((_KnoppColor.rgb*node_9166)+((lerp(_FoliageColor1.rgb,_FoliageColor2.rgb,_Diffuse_var.g)*(_Diffuse_var.b-node_9166))+(lerp(_BerryColor1.rgb,_BerryColor2.rgb,pow(_Diffuse_var.g,_BerryColorPower))*(_Diffuse_var.r-node_9166))));
                o.Emission = (node_5103*UNITY_LIGHTMODEL_AMBIENT.rgb);
                
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
