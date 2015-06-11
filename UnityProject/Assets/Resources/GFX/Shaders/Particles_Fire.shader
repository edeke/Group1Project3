// Shader created with Shader Forge v1.13 
// Shader Forge (c) Neat Corporation / Joachim Holmer - http://www.acegikmo.com/shaderforge/
// Note: Manually altering this data may prevent you from opening it in Shader Forge
/*SF_DATA;ver:1.13;sub:START;pass:START;ps:flbk:,lico:1,lgpr:1,nrmq:1,nrsp:0,limd:0,spmd:1,trmd:0,grmd:0,uamb:True,mssp:True,bkdf:False,rprd:False,enco:False,rmgx:True,rpth:0,hqsc:True,hqlp:False,tesm:0,bsrc:3,bdst:7,culm:0,dpts:2,wrdp:True,dith:0,ufog:False,aust:False,igpj:True,qofs:0,qpre:3,rntp:10,fgom:False,fgoc:False,fgod:False,fgor:False,fgmd:0,fgcr:0.5,fgcg:0.5,fgcb:0.5,fgca:1,fgde:0.01,fgrn:0,fgrf:300,ofsf:0,ofsu:0,f2p0:False;n:type:ShaderForge.SFN_Final,id:9383,x:32719,y:32712,varname:node_9383,prsc:2|emission-9714-OUT,clip-8088-OUT;n:type:ShaderForge.SFN_Tex2d,id:313,x:32083,y:32607,ptovrint:False,ptlb:FireSprite,ptin:_FireSprite,varname:node_313,prsc:2,tex:1bc745911218aae44b351d85ffa08d86,ntxv:0,isnm:False;n:type:ShaderForge.SFN_Multiply,id:9714,x:32355,y:32756,varname:node_9714,prsc:2|A-313-R,B-2792-RGB,C-4607-RGB,D-9130-OUT;n:type:ShaderForge.SFN_Multiply,id:8088,x:32355,y:32925,varname:node_8088,prsc:2|A-313-R,B-2792-A;n:type:ShaderForge.SFN_ValueProperty,id:9130,x:32083,y:33165,ptovrint:False,ptlb:Emissive,ptin:_Emissive,varname:node_9130,prsc:2,glob:False,v1:5;n:type:ShaderForge.SFN_Color,id:4607,x:32083,y:32972,ptovrint:False,ptlb:Color,ptin:_Color,varname:node_4607,prsc:2,glob:False,c1:0.5,c2:0.5,c3:0.5,c4:1;n:type:ShaderForge.SFN_VertexColor,id:2792,x:32083,y:32793,varname:node_2792,prsc:2;proporder:313-9130-4607;pass:END;sub:END;*/

Shader "Shader Forge/Particles_Fire" {
    Properties {
        _FireSprite ("FireSprite", 2D) = "white" {}
        _Emissive ("Emissive", Float ) = 5
        _Color ("Color", Color) = (0.5,0.5,0.5,1)
        [HideInInspector]_Cutoff ("Alpha cutoff", Range(0,1)) = 0.5
    }
    SubShader {
        Tags {
            "IgnoreProjector"="True"
            "Queue"="Transparent"
            "RenderType"="GrassBillboard"
        }
        Pass {
            Name "FORWARD"
            Tags {
                "LightMode"="ForwardBase"
            }
            Blend SrcAlpha OneMinusSrcAlpha
            
            
            CGPROGRAM
            #pragma vertex vert
            #pragma fragment frag
            #define UNITY_PASS_FORWARDBASE
            #include "UnityCG.cginc"
            #pragma multi_compile_fwdbase
            #pragma exclude_renderers gles3 metal d3d11_9x xbox360 xboxone ps3 ps4 psp2 
            #pragma target 3.0
            uniform sampler2D _FireSprite; uniform float4 _FireSprite_ST;
            uniform float _Emissive;
            uniform float4 _Color;
            struct VertexInput {
                float4 vertex : POSITION;
                float2 texcoord0 : TEXCOORD0;
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
                o.pos = mul(UNITY_MATRIX_MVP, v.vertex);
                return o;
            }
            float4 frag(VertexOutput i) : COLOR {
/////// Vectors:
                float4 _FireSprite_var = tex2D(_FireSprite,TRANSFORM_TEX(i.uv0, _FireSprite));
                clip((_FireSprite_var.r*i.vertexColor.a) - 0.5);
////// Lighting:
////// Emissive:
                float3 emissive = (_FireSprite_var.r*i.vertexColor.rgb*_Color.rgb*_Emissive);
                float3 finalColor = emissive;
                return fixed4(finalColor,1);
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
            #pragma exclude_renderers gles3 metal d3d11_9x xbox360 xboxone ps3 ps4 psp2 
            #pragma target 3.0
            uniform sampler2D _FireSprite; uniform float4 _FireSprite_ST;
            struct VertexInput {
                float4 vertex : POSITION;
                float2 texcoord0 : TEXCOORD0;
                float4 vertexColor : COLOR;
            };
            struct VertexOutput {
                V2F_SHADOW_CASTER;
                float2 uv0 : TEXCOORD1;
                float4 vertexColor : COLOR;
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o = (VertexOutput)0;
                o.uv0 = v.texcoord0;
                o.vertexColor = v.vertexColor;
                o.pos = mul(UNITY_MATRIX_MVP, v.vertex);
                TRANSFER_SHADOW_CASTER(o)
                return o;
            }
            float4 frag(VertexOutput i) : COLOR {
/////// Vectors:
                float4 _FireSprite_var = tex2D(_FireSprite,TRANSFORM_TEX(i.uv0, _FireSprite));
                clip((_FireSprite_var.r*i.vertexColor.a) - 0.5);
                SHADOW_CASTER_FRAGMENT(i)
            }
            ENDCG
        }
    }
    FallBack "Diffuse"
    CustomEditor "ShaderForgeMaterialInspector"
}
