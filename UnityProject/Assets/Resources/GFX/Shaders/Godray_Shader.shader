// Shader created with Shader Forge v1.13 
// Shader Forge (c) Neat Corporation / Joachim Holmer - http://www.acegikmo.com/shaderforge/
// Note: Manually altering this data may prevent you from opening it in Shader Forge
/*SF_DATA;ver:1.13;sub:START;pass:START;ps:flbk:,lico:1,lgpr:1,nrmq:1,nrsp:0,limd:1,spmd:1,trmd:0,grmd:0,uamb:True,mssp:True,bkdf:False,rprd:False,enco:False,rmgx:True,rpth:0,hqsc:True,hqlp:False,tesm:0,bsrc:3,bdst:7,culm:2,dpts:2,wrdp:False,dith:0,ufog:True,aust:True,igpj:True,qofs:0,qpre:3,rntp:2,fgom:False,fgoc:False,fgod:False,fgor:False,fgmd:0,fgcr:0.5,fgcg:0.5,fgcb:0.5,fgca:1,fgde:0.01,fgrn:0,fgrf:300,ofsf:0,ofsu:0,f2p0:False;n:type:ShaderForge.SFN_Final,id:6616,x:33572,y:32422,varname:node_6616,prsc:2|emission-2312-OUT,alpha-274-OUT;n:type:ShaderForge.SFN_Tex2d,id:8028,x:32139,y:32320,varname:node_8028,prsc:2,tex:82f172704702b02449e3c61b1481faf8,ntxv:0,isnm:False|UVIN-2979-UVOUT,TEX-1651-TEX;n:type:ShaderForge.SFN_Multiply,id:990,x:32443,y:32872,varname:node_990,prsc:2|A-3132-OUT,B-6745-OUT;n:type:ShaderForge.SFN_Fresnel,id:394,x:31857,y:32994,varname:node_394,prsc:2|EXP-4362-OUT;n:type:ShaderForge.SFN_OneMinus,id:5679,x:32014,y:32850,varname:node_5679,prsc:2|IN-394-OUT;n:type:ShaderForge.SFN_Power,id:4495,x:32213,y:32863,varname:node_4495,prsc:2|VAL-5679-OUT,EXP-5843-OUT;n:type:ShaderForge.SFN_Color,id:1476,x:32408,y:32683,ptovrint:False,ptlb:Color 2,ptin:_Color2,varname:node_1476,prsc:2,glob:False,c1:0.8612233,c2:0.8676471,c3:0.4019248,c4:1;n:type:ShaderForge.SFN_ValueProperty,id:5843,x:32085,y:33214,ptovrint:False,ptlb:Fresnel Post Mult,ptin:_FresnelPostMult,varname:node_5843,prsc:2,glob:False,v1:2;n:type:ShaderForge.SFN_ValueProperty,id:4362,x:31643,y:33147,ptovrint:False,ptlb:Fresnel Exp,ptin:_FresnelExp,varname:node_4362,prsc:2,glob:False,v1:1;n:type:ShaderForge.SFN_Multiply,id:3132,x:32190,y:33030,varname:node_3132,prsc:2|A-5679-OUT,B-5843-OUT;n:type:ShaderForge.SFN_TexCoord,id:8499,x:31361,y:32682,varname:node_8499,prsc:2,uv:0;n:type:ShaderForge.SFN_Tex2dAsset,id:1651,x:31385,y:32402,ptovrint:False,ptlb:Texture,ptin:_Texture,varname:node_1651,glob:False,tex:82f172704702b02449e3c61b1481faf8,ntxv:0,isnm:False;n:type:ShaderForge.SFN_Tex2d,id:563,x:32108,y:32511,varname:node_563,prsc:2,tex:82f172704702b02449e3c61b1481faf8,ntxv:0,isnm:False|UVIN-1618-UVOUT,TEX-1651-TEX;n:type:ShaderForge.SFN_Multiply,id:311,x:31544,y:32773,varname:node_311,prsc:2|A-8499-UVOUT,B-7327-OUT;n:type:ShaderForge.SFN_ValueProperty,id:9740,x:30912,y:32117,ptovrint:False,ptlb:Tiling 1,ptin:_Tiling1,varname:node_9740,prsc:2,glob:False,v1:1;n:type:ShaderForge.SFN_Multiply,id:7604,x:31687,y:32165,varname:node_7604,prsc:2|A-8499-UVOUT,B-4213-OUT;n:type:ShaderForge.SFN_ValueProperty,id:4034,x:31344,y:32894,ptovrint:False,ptlb:Tiling 2,ptin:_Tiling2,varname:node_4034,prsc:2,glob:False,v1:1.5;n:type:ShaderForge.SFN_Panner,id:1618,x:31698,y:32773,varname:node_1618,prsc:2,spu:-0.0034,spv:0|UVIN-311-OUT,DIST-1278-OUT;n:type:ShaderForge.SFN_Panner,id:2979,x:31959,y:32139,varname:node_2979,prsc:2,spu:-0.006,spv:0|UVIN-7604-OUT,DIST-1278-OUT;n:type:ShaderForge.SFN_Multiply,id:2162,x:32366,y:32429,varname:node_2162,prsc:2|A-8028-R,B-563-R;n:type:ShaderForge.SFN_ValueProperty,id:3604,x:33195,y:32544,ptovrint:False,ptlb:Emission Mult,ptin:_EmissionMult,varname:node_3604,prsc:2,glob:False,v1:2;n:type:ShaderForge.SFN_Multiply,id:3900,x:33072,y:32353,varname:node_3900,prsc:2|A-8028-R,B-5951-OUT;n:type:ShaderForge.SFN_Lerp,id:5951,x:32721,y:32332,varname:node_5951,prsc:2|A-8850-RGB,B-1476-RGB,T-2162-OUT;n:type:ShaderForge.SFN_Color,id:8850,x:32366,y:32206,ptovrint:False,ptlb:Color 1,ptin:_Color1,varname:node_8850,prsc:2,glob:False,c1:0.5,c2:0.5,c3:0.5,c4:1;n:type:ShaderForge.SFN_Vector2,id:8340,x:31344,y:32987,varname:node_8340,prsc:2,v1:1,v2:0;n:type:ShaderForge.SFN_Multiply,id:7504,x:31530,y:32952,varname:node_7504,prsc:2|A-8340-OUT,B-4034-OUT;n:type:ShaderForge.SFN_Add,id:7327,x:31683,y:32952,varname:node_7327,prsc:2|A-9952-OUT,B-7504-OUT;n:type:ShaderForge.SFN_Vector2,id:9952,x:31207,y:32944,varname:node_9952,prsc:2,v1:0,v2:1;n:type:ShaderForge.SFN_Vector2,id:6772,x:30764,y:32165,varname:node_6772,prsc:2,v1:0,v2:1;n:type:ShaderForge.SFN_Vector2,id:8487,x:30926,y:32204,varname:node_8487,prsc:2,v1:1,v2:0;n:type:ShaderForge.SFN_Multiply,id:8779,x:31120,y:32117,varname:node_8779,prsc:2|A-8487-OUT,B-9740-OUT;n:type:ShaderForge.SFN_Add,id:4213,x:31426,y:32136,varname:node_4213,prsc:2|A-6772-OUT,B-8779-OUT;n:type:ShaderForge.SFN_Depth,id:2244,x:31796,y:32568,varname:node_2244,prsc:2;n:type:ShaderForge.SFN_DepthBlend,id:1703,x:32026,y:32662,varname:node_1703,prsc:2|DIST-5129-OUT;n:type:ShaderForge.SFN_Multiply,id:8794,x:32648,y:32872,varname:node_8794,prsc:2|A-990-OUT,B-1703-OUT;n:type:ShaderForge.SFN_ValueProperty,id:5129,x:31863,y:32737,ptovrint:False,ptlb:Depth Fade,ptin:_DepthFade,varname:node_5129,prsc:2,glob:False,v1:0;n:type:ShaderForge.SFN_Tex2d,id:7511,x:31780,y:32374,varname:node_7511,prsc:2,tex:82f172704702b02449e3c61b1481faf8,ntxv:0,isnm:False|TEX-1651-TEX;n:type:ShaderForge.SFN_Multiply,id:6745,x:32912,y:32566,varname:node_6745,prsc:2|A-7282-OUT,B-7511-G;n:type:ShaderForge.SFN_Add,id:9213,x:32589,y:32454,varname:node_9213,prsc:2|A-2162-OUT,B-6532-OUT;n:type:ShaderForge.SFN_Tex2d,id:7046,x:31735,y:31743,varname:node_7046,prsc:2,tex:82f172704702b02449e3c61b1481faf8,ntxv:0,isnm:False|UVIN-2509-UVOUT,TEX-1651-TEX;n:type:ShaderForge.SFN_ValueProperty,id:7708,x:31831,y:31956,ptovrint:False,ptlb:Dust Shift,ptin:_DustShift,varname:node_7708,prsc:2,glob:False,v1:-0.4;n:type:ShaderForge.SFN_Add,id:3201,x:32021,y:31788,varname:node_3201,prsc:2|A-7046-B,B-7708-OUT;n:type:ShaderForge.SFN_Clamp01,id:1036,x:32237,y:31788,varname:node_1036,prsc:2|IN-8504-OUT;n:type:ShaderForge.SFN_Multiply,id:6532,x:32424,y:31788,varname:node_6532,prsc:2|A-1036-OUT,B-3198-OUT;n:type:ShaderForge.SFN_ValueProperty,id:3198,x:32174,y:32021,ptovrint:False,ptlb:Dust intensity,ptin:_Dustintensity,varname:node_3198,prsc:2,glob:False,v1:1;n:type:ShaderForge.SFN_ScreenPos,id:954,x:31099,y:31388,varname:node_954,prsc:2,sctp:0;n:type:ShaderForge.SFN_Panner,id:618,x:31499,y:31388,varname:node_618,prsc:2,spu:0.01,spv:0.02|UVIN-1972-OUT,DIST-5470-OUT;n:type:ShaderForge.SFN_Panner,id:2509,x:31513,y:31552,varname:node_2509,prsc:2,spu:-0.02,spv:-0.032|UVIN-1972-OUT,DIST-5470-OUT;n:type:ShaderForge.SFN_Tex2d,id:6706,x:31762,y:31490,varname:node_6706,prsc:2,tex:82f172704702b02449e3c61b1481faf8,ntxv:0,isnm:False|UVIN-618-UVOUT,TEX-1651-TEX;n:type:ShaderForge.SFN_Add,id:9220,x:31962,y:31490,varname:node_9220,prsc:2|A-6706-B,B-7708-OUT;n:type:ShaderForge.SFN_Multiply,id:8504,x:32122,y:31535,varname:node_8504,prsc:2|A-9220-OUT,B-5980-OUT;n:type:ShaderForge.SFN_Multiply,id:1972,x:31266,y:31374,varname:node_1972,prsc:2|A-1791-UVOUT,B-2175-OUT;n:type:ShaderForge.SFN_ValueProperty,id:3324,x:30738,y:31529,ptovrint:False,ptlb:Dust tiling X,ptin:_DusttilingX,varname:node_3324,prsc:2,glob:False,v1:3;n:type:ShaderForge.SFN_Multiply,id:2312,x:33321,y:32353,varname:node_2312,prsc:2|A-3604-OUT,B-3900-OUT;n:type:ShaderForge.SFN_Clamp01,id:7282,x:32769,y:32465,varname:node_7282,prsc:2|IN-9213-OUT;n:type:ShaderForge.SFN_TexCoord,id:1791,x:31294,y:31552,varname:node_1791,prsc:2,uv:1;n:type:ShaderForge.SFN_Multiply,id:274,x:32919,y:32835,varname:node_274,prsc:2|A-8794-OUT,B-933-OUT;n:type:ShaderForge.SFN_ValueProperty,id:933,x:32789,y:33078,ptovrint:False,ptlb:Master Opacity,ptin:_MasterOpacity,varname:node_933,prsc:2,glob:False,v1:1;n:type:ShaderForge.SFN_Add,id:7856,x:32316,y:32545,varname:node_7856,prsc:2|A-8028-R,B-563-R;n:type:ShaderForge.SFN_Clamp01,id:7066,x:32463,y:32548,varname:node_7066,prsc:2|IN-7856-OUT;n:type:ShaderForge.SFN_Time,id:4476,x:31006,y:31652,varname:node_4476,prsc:2;n:type:ShaderForge.SFN_Multiply,id:5470,x:31235,y:31689,varname:node_5470,prsc:2|A-4476-T,B-2186-OUT;n:type:ShaderForge.SFN_ValueProperty,id:2186,x:30989,y:31799,ptovrint:False,ptlb:Dust Speed,ptin:_DustSpeed,varname:node_2186,prsc:2,glob:False,v1:1;n:type:ShaderForge.SFN_Append,id:2175,x:30907,y:31480,varname:node_2175,prsc:2|A-3324-OUT,B-965-OUT;n:type:ShaderForge.SFN_ValueProperty,id:965,x:30717,y:31623,ptovrint:False,ptlb:Dust tiling Y,ptin:_DusttilingY,varname:node_965,prsc:2,glob:False,v1:3;n:type:ShaderForge.SFN_Multiply,id:1278,x:31625,y:32327,varname:node_1278,prsc:2|A-4476-T,B-3565-OUT;n:type:ShaderForge.SFN_ValueProperty,id:3565,x:31342,y:32338,ptovrint:False,ptlb:Ray Speed,ptin:_RaySpeed,varname:node_3565,prsc:2,glob:False,v1:1;n:type:ShaderForge.SFN_Clamp01,id:5980,x:31950,y:31670,varname:node_5980,prsc:2|IN-3201-OUT;proporder:1476-5843-4362-1651-9740-4034-3604-8850-5129-7708-3198-3324-933-2186-965-3565;pass:END;sub:END;*/

Shader "Shader Forge/Godray_Shader" {
    Properties {
        _Color2 ("Color 2", Color) = (0.8612233,0.8676471,0.4019248,1)
        _FresnelPostMult ("Fresnel Post Mult", Float ) = 2
        _FresnelExp ("Fresnel Exp", Float ) = 1
        _Texture ("Texture", 2D) = "white" {}
        _Tiling1 ("Tiling 1", Float ) = 1
        _Tiling2 ("Tiling 2", Float ) = 1.5
        _EmissionMult ("Emission Mult", Float ) = 2
        _Color1 ("Color 1", Color) = (0.5,0.5,0.5,1)
        _DepthFade ("Depth Fade", Float ) = 0
        _DustShift ("Dust Shift", Float ) = -0.4
        _Dustintensity ("Dust intensity", Float ) = 1
        _DusttilingX ("Dust tiling X", Float ) = 3
        _MasterOpacity ("Master Opacity", Float ) = 1
        _DustSpeed ("Dust Speed", Float ) = 1
        _DusttilingY ("Dust tiling Y", Float ) = 3
        _RaySpeed ("Ray Speed", Float ) = 1
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
            Cull Off
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
            uniform sampler2D _CameraDepthTexture;
            uniform float4 _TimeEditor;
            uniform float4 _Color2;
            uniform float _FresnelPostMult;
            uniform float _FresnelExp;
            uniform sampler2D _Texture; uniform float4 _Texture_ST;
            uniform float _Tiling1;
            uniform float _Tiling2;
            uniform float _EmissionMult;
            uniform float4 _Color1;
            uniform float _DepthFade;
            uniform float _DustShift;
            uniform float _Dustintensity;
            uniform float _DusttilingX;
            uniform float _MasterOpacity;
            uniform float _DustSpeed;
            uniform float _DusttilingY;
            uniform float _RaySpeed;
            struct VertexInput {
                float4 vertex : POSITION;
                float3 normal : NORMAL;
                float2 texcoord0 : TEXCOORD0;
                float2 texcoord1 : TEXCOORD1;
            };
            struct VertexOutput {
                float4 pos : SV_POSITION;
                float2 uv0 : TEXCOORD0;
                float2 uv1 : TEXCOORD1;
                float4 posWorld : TEXCOORD2;
                float3 normalDir : TEXCOORD3;
                float4 projPos : TEXCOORD4;
                UNITY_FOG_COORDS(5)
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o = (VertexOutput)0;
                o.uv0 = v.texcoord0;
                o.uv1 = v.texcoord1;
                o.normalDir = UnityObjectToWorldNormal(v.normal);
                o.posWorld = mul(_Object2World, v.vertex);
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
/////// Vectors:
                float3 viewDirection = normalize(_WorldSpaceCameraPos.xyz - i.posWorld.xyz);
                float3 normalDirection = i.normalDir;
                
                float nSign = sign( dot( viewDirection, i.normalDir ) ); // Reverse normal if this is a backface
                i.normalDir *= nSign;
                normalDirection *= nSign;
                
////// Lighting:
////// Emissive:
                float4 node_4476 = _Time + _TimeEditor;
                float node_1278 = (node_4476.g*_RaySpeed);
                float2 node_2979 = ((i.uv0*(float2(0,1)+(float2(1,0)*_Tiling1)))+node_1278*float2(-0.006,0));
                float4 node_8028 = tex2D(_Texture,TRANSFORM_TEX(node_2979, _Texture));
                float2 node_1618 = ((i.uv0*(float2(0,1)+(float2(1,0)*_Tiling2)))+node_1278*float2(-0.0034,0));
                float4 node_563 = tex2D(_Texture,TRANSFORM_TEX(node_1618, _Texture));
                float node_2162 = (node_8028.r*node_563.r);
                float3 emissive = (_EmissionMult*(node_8028.r*lerp(_Color1.rgb,_Color2.rgb,node_2162)));
                float3 finalColor = emissive;
                float node_5679 = (1.0 - pow(1.0-max(0,dot(normalDirection, viewDirection)),_FresnelExp));
                float node_5470 = (node_4476.g*_DustSpeed);
                float2 node_1972 = (i.uv1*float2(_DusttilingX,_DusttilingY));
                float2 node_618 = (node_1972+node_5470*float2(0.01,0.02));
                float4 node_6706 = tex2D(_Texture,TRANSFORM_TEX(node_618, _Texture));
                float2 node_2509 = (node_1972+node_5470*float2(-0.02,-0.032));
                float4 node_7046 = tex2D(_Texture,TRANSFORM_TEX(node_2509, _Texture));
                float4 node_7511 = tex2D(_Texture,TRANSFORM_TEX(i.uv0, _Texture));
                fixed4 finalRGBA = fixed4(finalColor,((((node_5679*_FresnelPostMult)*(saturate((node_2162+(saturate(((node_6706.b+_DustShift)*saturate((node_7046.b+_DustShift))))*_Dustintensity)))*node_7511.g))*saturate((sceneZ-partZ)/_DepthFade))*_MasterOpacity));
                UNITY_APPLY_FOG(i.fogCoord, finalRGBA);
                return finalRGBA;
            }
            ENDCG
        }
    }
    FallBack "Diffuse"
    CustomEditor "ShaderForgeMaterialInspector"
}
