// Shader created with Shader Forge v1.13 
// Shader Forge (c) Neat Corporation / Joachim Holmer - http://www.acegikmo.com/shaderforge/
// Note: Manually altering this data may prevent you from opening it in Shader Forge
/*SF_DATA;ver:1.13;sub:START;pass:START;ps:flbk:,lico:1,lgpr:1,nrmq:1,nrsp:0,limd:0,spmd:1,trmd:0,grmd:0,uamb:True,mssp:True,bkdf:True,rprd:False,enco:False,rmgx:True,rpth:0,hqsc:True,hqlp:False,tesm:0,bsrc:0,bdst:1,culm:0,dpts:2,wrdp:True,dith:0,ufog:False,aust:True,igpj:False,qofs:0,qpre:1,rntp:1,fgom:False,fgoc:False,fgod:False,fgor:False,fgmd:0,fgcr:0.5,fgcg:0.5,fgcb:0.5,fgca:1,fgde:0.01,fgrn:0,fgrf:300,ofsf:0,ofsu:0,f2p0:False;n:type:ShaderForge.SFN_Final,id:0,x:35383,y:31690,varname:node_0,prsc:2|normal-1478-OUT,emission-84-OUT,custl-64-OUT,olwid-2431-OUT,olcol-7799-RGB;n:type:ShaderForge.SFN_LightAttenuation,id:37,x:32964,y:32209,varname:node_37,prsc:2;n:type:ShaderForge.SFN_Dot,id:40,x:31764,y:32587,varname:node_40,prsc:2,dt:4|A-42-OUT,B-41-OUT;n:type:ShaderForge.SFN_NormalVector,id:41,x:31554,y:32638,prsc:2,pt:True;n:type:ShaderForge.SFN_LightVector,id:42,x:31409,y:32543,varname:node_42,prsc:2;n:type:ShaderForge.SFN_Add,id:55,x:33872,y:32288,varname:node_55,prsc:2|A-37-OUT,B-187-RGB;n:type:ShaderForge.SFN_LightColor,id:63,x:33860,y:32155,varname:node_63,prsc:2;n:type:ShaderForge.SFN_Multiply,id:64,x:34308,y:32116,varname:node_64,prsc:2|A-379-OUT,B-6443-OUT;n:type:ShaderForge.SFN_Tex2d,id:82,x:33413,y:31854,varname:_Diffuse,prsc:2,tex:38e7dc430bf1ebb42818ebc6fdffebfc,ntxv:0,isnm:False|UVIN-1132-OUT,TEX-2036-TEX;n:type:ShaderForge.SFN_Tex2d,id:83,x:33413,y:31656,varname:_Normals,prsc:2,tex:6e5554f87e2917f4aa8e5808e175307f,ntxv:3,isnm:True|UVIN-1132-OUT,TEX-1926-TEX;n:type:ShaderForge.SFN_Multiply,id:84,x:33919,y:31998,cmnt:Diffuse Light,varname:node_84,prsc:2|A-6443-OUT,B-187-RGB;n:type:ShaderForge.SFN_AmbientLight,id:187,x:33323,y:32415,varname:node_187,prsc:2;n:type:ShaderForge.SFN_TexCoord,id:272,x:31373,y:31849,varname:node_272,prsc:2,uv:0;n:type:ShaderForge.SFN_RemapRangeAdvanced,id:1026,x:32197,y:32697,varname:node_1026,prsc:2|IN-40-OUT,IMIN-2384-OUT,IMAX-9128-OUT,OMIN-5169-OUT,OMAX-3044-OUT;n:type:ShaderForge.SFN_Slider,id:4544,x:32509,y:32314,ptovrint:False,ptlb:MinLight,ptin:_MinLight,varname:node_4544,prsc:2,min:0,cur:0,max:1;n:type:ShaderForge.SFN_Slider,id:5426,x:32521,y:32411,ptovrint:False,ptlb:MaxLight,ptin:_MaxLight,varname:_MinLight_copy,prsc:2,min:0,cur:1,max:1;n:type:ShaderForge.SFN_Slider,id:3630,x:31336,y:33021,ptovrint:False,ptlb:Reach,ptin:_Reach,varname:node_3630,prsc:2,min:0,cur:0.5,max:1;n:type:ShaderForge.SFN_Slider,id:7181,x:31336,y:33116,ptovrint:False,ptlb:Smoothness,ptin:_Smoothness,varname:_Value_copy,prsc:2,min:0,cur:0.025,max:0.5;n:type:ShaderForge.SFN_Add,id:9128,x:31776,y:33050,varname:node_9128,prsc:2|A-3630-OUT,B-7181-OUT;n:type:ShaderForge.SFN_Subtract,id:2384,x:31776,y:32906,varname:node_2384,prsc:2|A-3630-OUT,B-7181-OUT;n:type:ShaderForge.SFN_Clamp01,id:1648,x:32372,y:32697,varname:node_1648,prsc:2|IN-1026-OUT;n:type:ShaderForge.SFN_Vector1,id:5169,x:32170,y:32843,varname:node_5169,prsc:2,v1:0;n:type:ShaderForge.SFN_Vector1,id:3044,x:32168,y:32906,varname:node_3044,prsc:2,v1:1;n:type:ShaderForge.SFN_Lerp,id:6558,x:32995,y:32384,varname:node_6558,prsc:2|A-4544-OUT,B-5426-OUT,T-1648-OUT;n:type:ShaderForge.SFN_Slider,id:2431,x:33847,y:32462,ptovrint:False,ptlb:Outline,ptin:_Outline,varname:node_2431,prsc:2,min:0,cur:0,max:1;n:type:ShaderForge.SFN_Color,id:7799,x:34004,y:32554,ptovrint:False,ptlb:OutlineColor,ptin:_OutlineColor,varname:node_7799,prsc:2,glob:False,c1:0,c2:0,c3:0,c4:1;n:type:ShaderForge.SFN_Add,id:3442,x:33522,y:32170,varname:node_3442,prsc:2|A-2105-OUT,B-187-RGB;n:type:ShaderForge.SFN_Multiply,id:2105,x:33252,y:32160,varname:node_2105,prsc:2|A-6558-OUT,B-37-OUT;n:type:ShaderForge.SFN_Vector1,id:5483,x:33323,y:32547,varname:node_5483,prsc:2,v1:0;n:type:ShaderForge.SFN_Clamp,id:7728,x:33662,y:32381,varname:node_7728,prsc:2|IN-2105-OUT,MIN-187-RGB,MAX-36-OUT;n:type:ShaderForge.SFN_Vector1,id:36,x:33523,y:32507,varname:node_36,prsc:2,v1:1;n:type:ShaderForge.SFN_ObjectScale,id:3319,x:32342,y:31898,varname:node_3319,prsc:2,rcp:False;n:type:ShaderForge.SFN_Multiply,id:324,x:32696,y:31673,varname:node_324,prsc:2|A-3742-R,B-3319-X;n:type:ShaderForge.SFN_Append,id:1132,x:32880,y:31809,varname:node_1132,prsc:2|A-324-OUT,B-2373-OUT;n:type:ShaderForge.SFN_ValueProperty,id:3878,x:31387,y:31744,ptovrint:False,ptlb:Base Scale,ptin:_BaseScale,varname:node_3878,prsc:2,glob:False,v1:1;n:type:ShaderForge.SFN_Divide,id:3093,x:31759,y:31712,varname:node_3093,prsc:2|A-272-UVOUT,B-3878-OUT;n:type:ShaderForge.SFN_Tex2d,id:5887,x:33633,y:31482,ptovrint:False,ptlb:Mask,ptin:_Mask,varname:node_5887,prsc:2,tex:5f35c53802c6051489400c74fd077f13,ntxv:0,isnm:False;n:type:ShaderForge.SFN_Multiply,id:8465,x:33669,y:31869,varname:node_8465,prsc:2|A-82-RGB,B-5887-B;n:type:ShaderForge.SFN_Multiply,id:3403,x:33966,y:31607,varname:node_3403,prsc:2|A-83-RGB,B-5887-B;n:type:ShaderForge.SFN_ComponentMask,id:3742,x:32301,y:31644,varname:node_3742,prsc:2,cc1:0,cc2:1,cc3:-1,cc4:-1|IN-3093-OUT;n:type:ShaderForge.SFN_ObjectScale,id:9788,x:32287,y:31332,varname:node_9788,prsc:2,rcp:False;n:type:ShaderForge.SFN_Multiply,id:753,x:32629,y:31328,varname:node_753,prsc:2|A-6938-G,B-9788-Y;n:type:ShaderForge.SFN_Append,id:2194,x:32866,y:31328,varname:node_2194,prsc:2|A-3038-OUT,B-753-OUT;n:type:ShaderForge.SFN_ComponentMask,id:6938,x:32287,y:31163,varname:node_6938,prsc:2,cc1:0,cc2:1,cc3:-1,cc4:-1|IN-3093-OUT;n:type:ShaderForge.SFN_Tex2d,id:7401,x:33169,y:31149,varname:_Normals_copy,prsc:2,tex:6e5554f87e2917f4aa8e5808e175307f,ntxv:3,isnm:True|UVIN-2194-OUT,TEX-1926-TEX;n:type:ShaderForge.SFN_Tex2d,id:2242,x:33169,y:31347,varname:_Diffuse_copy,prsc:2,tex:38e7dc430bf1ebb42818ebc6fdffebfc,ntxv:0,isnm:False|UVIN-2194-OUT,TEX-2036-TEX;n:type:ShaderForge.SFN_Multiply,id:3962,x:33438,y:31141,varname:node_3962,prsc:2|A-7401-RGB,B-5887-G;n:type:ShaderForge.SFN_Multiply,id:2393,x:33436,y:31271,varname:node_2393,prsc:2|A-2242-RGB,B-5887-G;n:type:ShaderForge.SFN_Add,id:3309,x:34173,y:31553,varname:node_3309,prsc:2|A-3962-OUT,B-3403-OUT;n:type:ShaderForge.SFN_Add,id:1348,x:33897,y:31796,varname:node_1348,prsc:2|A-2393-OUT,B-8465-OUT;n:type:ShaderForge.SFN_Multiply,id:2373,x:32663,y:31868,varname:node_2373,prsc:2|A-3742-G,B-3319-Z;n:type:ShaderForge.SFN_Multiply,id:3038,x:32532,y:31101,varname:node_3038,prsc:2|A-6938-R,B-9788-X;n:type:ShaderForge.SFN_Append,id:2057,x:32857,y:30841,varname:node_2057,prsc:2|A-6543-OUT,B-8945-OUT;n:type:ShaderForge.SFN_Multiply,id:8945,x:32620,y:30841,varname:node_8945,prsc:2|A-2423-G,B-7653-Y;n:type:ShaderForge.SFN_ObjectScale,id:7653,x:32278,y:30845,varname:node_7653,prsc:2,rcp:False;n:type:ShaderForge.SFN_ComponentMask,id:2423,x:32278,y:30676,varname:node_2423,prsc:2,cc1:0,cc2:1,cc3:-1,cc4:-1|IN-3093-OUT;n:type:ShaderForge.SFN_Multiply,id:6543,x:32523,y:30614,varname:node_6543,prsc:2|A-2423-R,B-7653-Z;n:type:ShaderForge.SFN_Tex2d,id:4269,x:33095,y:30684,varname:_Normals_copy_copy,prsc:2,tex:6e5554f87e2917f4aa8e5808e175307f,ntxv:3,isnm:True|UVIN-2057-OUT,TEX-1926-TEX;n:type:ShaderForge.SFN_Tex2d,id:8003,x:33095,y:30882,varname:_Diffuse_copy_copy,prsc:2,tex:38e7dc430bf1ebb42818ebc6fdffebfc,ntxv:0,isnm:False|UVIN-2057-OUT,TEX-2036-TEX;n:type:ShaderForge.SFN_Multiply,id:681,x:33351,y:30695,varname:node_681,prsc:2|A-4269-RGB,B-5887-R;n:type:ShaderForge.SFN_Multiply,id:2749,x:33344,y:30888,varname:node_2749,prsc:2|A-8003-RGB,B-5887-R;n:type:ShaderForge.SFN_Add,id:1478,x:34360,y:31480,varname:node_1478,prsc:2|A-681-OUT,B-3309-OUT;n:type:ShaderForge.SFN_Add,id:8353,x:34115,y:31765,varname:node_8353,prsc:2|A-2749-OUT,B-1348-OUT;n:type:ShaderForge.SFN_Tex2dAsset,id:2036,x:32822,y:31501,ptovrint:False,ptlb:Diffuse Texture,ptin:_DiffuseTexture,varname:node_2036,glob:False,tex:38e7dc430bf1ebb42818ebc6fdffebfc,ntxv:0,isnm:False;n:type:ShaderForge.SFN_Tex2dAsset,id:1926,x:32829,y:31088,ptovrint:False,ptlb:Normal Texture,ptin:_NormalTexture,varname:node_1926,glob:False,tex:6e5554f87e2917f4aa8e5808e175307f,ntxv:3,isnm:True;n:type:ShaderForge.SFN_Multiply,id:379,x:34055,y:32234,varname:node_379,prsc:2|A-63-RGB,B-2105-OUT;n:type:ShaderForge.SFN_Lerp,id:2633,x:33875,y:31520,varname:node_2633,prsc:2;n:type:ShaderForge.SFN_Tex2d,id:9868,x:32993,y:30134,varname:node_9868,prsc:2,tex:0f3fa02a33d2ced4cb4be559048625fb,ntxv:0,isnm:False|UVIN-2057-OUT,TEX-9078-TEX;n:type:ShaderForge.SFN_Tex2dAsset,id:9078,x:32730,y:30408,ptovrint:False,ptlb:Wear Mask,ptin:_WearMask,varname:node_9078,glob:False,tex:0f3fa02a33d2ced4cb4be559048625fb,ntxv:0,isnm:False;n:type:ShaderForge.SFN_Color,id:9248,x:34456,y:31681,ptovrint:False,ptlb:Paint Color,ptin:_PaintColor,varname:node_9248,prsc:2,glob:False,c1:1,c2:0.6295956,c3:0.6295956,c4:1;n:type:ShaderForge.SFN_Lerp,id:9887,x:34690,y:31794,varname:node_9887,prsc:2|A-8353-OUT,B-9248-RGB,T-2237-OUT;n:type:ShaderForge.SFN_Slider,id:2237,x:34377,y:31857,ptovrint:False,ptlb:Color Opacity,ptin:_ColorOpacity,varname:node_2237,prsc:2,min:0,cur:0.5128205,max:1;n:type:ShaderForge.SFN_If,id:6443,x:34863,y:31449,varname:node_6443,prsc:2|A-8569-OUT,B-9630-OUT,GT-8353-OUT,EQ-8353-OUT,LT-9887-OUT;n:type:ShaderForge.SFN_Multiply,id:1121,x:33181,y:30286,varname:node_1121,prsc:2|A-5459-R,B-5887-G;n:type:ShaderForge.SFN_Multiply,id:9327,x:33181,y:30153,varname:node_9327,prsc:2|A-9868-G,B-5887-R;n:type:ShaderForge.SFN_Tex2d,id:5459,x:33005,y:30273,varname:node_5459,prsc:2,tex:0f3fa02a33d2ced4cb4be559048625fb,ntxv:0,isnm:False|UVIN-2194-OUT,TEX-9078-TEX;n:type:ShaderForge.SFN_Add,id:779,x:33373,y:30260,varname:node_779,prsc:2|A-1121-OUT,B-9327-OUT;n:type:ShaderForge.SFN_Tex2d,id:4929,x:33005,y:30433,varname:node_4929,prsc:2,tex:0f3fa02a33d2ced4cb4be559048625fb,ntxv:0,isnm:False|UVIN-2194-OUT,TEX-9078-TEX;n:type:ShaderForge.SFN_Multiply,id:9427,x:33181,y:30433,varname:node_9427,prsc:2|A-4929-R,B-5887-B;n:type:ShaderForge.SFN_Add,id:9630,x:33566,y:30307,varname:node_9630,prsc:2|A-779-OUT,B-9427-OUT;n:type:ShaderForge.SFN_Slider,id:8569,x:34584,y:31333,ptovrint:False,ptlb:Wear Threshold,ptin:_WearThreshold,varname:node_8569,prsc:2,min:0,cur:0.8119658,max:1;proporder:3630-7181-4544-5426-7799-2431-3878-5887-2036-1926-9078-9248-2237-8569;pass:END;sub:END;*/

Shader "Shader Forge/Examples/Painted_Box_Shader_2" {
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
        _PaintColor ("Paint Color", Color) = (1,0.6295956,0.6295956,1)
        _ColorOpacity ("Color Opacity", Range(0, 1)) = 0.5128205
        _WearThreshold ("Wear Threshold", Range(0, 1)) = 0.8119658
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
            uniform sampler2D _WearMask; uniform float4 _WearMask_ST;
            uniform float4 _PaintColor;
            uniform float _ColorOpacity;
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
////// Emissive:
                float4 node_5459 = tex2D(_WearMask,TRANSFORM_TEX(node_2194, _WearMask));
                float4 node_9868 = tex2D(_WearMask,TRANSFORM_TEX(node_2057, _WearMask));
                float4 node_4929 = tex2D(_WearMask,TRANSFORM_TEX(node_2194, _WearMask));
                float node_6443_if_leA = step(_WearThreshold,(((node_5459.r*_Mask_var.g)+(node_9868.g*_Mask_var.r))+(node_4929.r*_Mask_var.b)));
                float node_6443_if_leB = step((((node_5459.r*_Mask_var.g)+(node_9868.g*_Mask_var.r))+(node_4929.r*_Mask_var.b)),_WearThreshold);
                float4 _Diffuse_copy_copy = tex2D(_DiffuseTexture,TRANSFORM_TEX(node_2057, _DiffuseTexture));
                float4 _Diffuse_copy = tex2D(_DiffuseTexture,TRANSFORM_TEX(node_2194, _DiffuseTexture));
                float4 _Diffuse = tex2D(_DiffuseTexture,TRANSFORM_TEX(node_1132, _DiffuseTexture));
                float3 node_8353 = ((_Diffuse_copy_copy.rgb*_Mask_var.r)+((_Diffuse_copy.rgb*_Mask_var.g)+(_Diffuse.rgb*_Mask_var.b)));
                float3 node_6443 = lerp((node_6443_if_leA*lerp(node_8353,_PaintColor.rgb,_ColorOpacity))+(node_6443_if_leB*node_8353),node_8353,node_6443_if_leA*node_6443_if_leB);
                float3 emissive = (node_6443*UNITY_LIGHTMODEL_AMBIENT.rgb);
                float node_2384 = (_Reach-_Smoothness);
                float node_5169 = 0.0;
                float node_2105 = (lerp(_MinLight,_MaxLight,saturate((node_5169 + ( (0.5*dot(lightDirection,normalDirection)+0.5 - node_2384) * (1.0 - node_5169) ) / ((_Reach+_Smoothness) - node_2384))))*attenuation);
                float3 finalColor = emissive + ((_LightColor0.rgb*node_2105)*node_6443);
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
            uniform sampler2D _WearMask; uniform float4 _WearMask_ST;
            uniform float4 _PaintColor;
            uniform float _ColorOpacity;
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
                float node_2384 = (_Reach-_Smoothness);
                float node_5169 = 0.0;
                float node_2105 = (lerp(_MinLight,_MaxLight,saturate((node_5169 + ( (0.5*dot(lightDirection,normalDirection)+0.5 - node_2384) * (1.0 - node_5169) ) / ((_Reach+_Smoothness) - node_2384))))*attenuation);
                float4 node_5459 = tex2D(_WearMask,TRANSFORM_TEX(node_2194, _WearMask));
                float4 node_9868 = tex2D(_WearMask,TRANSFORM_TEX(node_2057, _WearMask));
                float4 node_4929 = tex2D(_WearMask,TRANSFORM_TEX(node_2194, _WearMask));
                float node_6443_if_leA = step(_WearThreshold,(((node_5459.r*_Mask_var.g)+(node_9868.g*_Mask_var.r))+(node_4929.r*_Mask_var.b)));
                float node_6443_if_leB = step((((node_5459.r*_Mask_var.g)+(node_9868.g*_Mask_var.r))+(node_4929.r*_Mask_var.b)),_WearThreshold);
                float4 _Diffuse_copy_copy = tex2D(_DiffuseTexture,TRANSFORM_TEX(node_2057, _DiffuseTexture));
                float4 _Diffuse_copy = tex2D(_DiffuseTexture,TRANSFORM_TEX(node_2194, _DiffuseTexture));
                float4 _Diffuse = tex2D(_DiffuseTexture,TRANSFORM_TEX(node_1132, _DiffuseTexture));
                float3 node_8353 = ((_Diffuse_copy_copy.rgb*_Mask_var.r)+((_Diffuse_copy.rgb*_Mask_var.g)+(_Diffuse.rgb*_Mask_var.b)));
                float3 node_6443 = lerp((node_6443_if_leA*lerp(node_8353,_PaintColor.rgb,_ColorOpacity))+(node_6443_if_leB*node_8353),node_8353,node_6443_if_leA*node_6443_if_leB);
                float3 finalColor = ((_LightColor0.rgb*node_2105)*node_6443);
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
            uniform float _BaseScale;
            uniform sampler2D _Mask; uniform float4 _Mask_ST;
            uniform sampler2D _DiffuseTexture; uniform float4 _DiffuseTexture_ST;
            uniform sampler2D _WearMask; uniform float4 _WearMask_ST;
            uniform float4 _PaintColor;
            uniform float _ColorOpacity;
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
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o = (VertexOutput)0;
                o.uv0 = v.texcoord0;
                o.pos = UnityMetaVertexPosition(v.vertex, v.texcoord1.xy, v.texcoord2.xy, unity_LightmapST, unity_DynamicLightmapST );
                return o;
            }
            float4 frag(VertexOutput i) : SV_Target {
                float3 recipObjScale = float3( length(_World2Object[0].xyz), length(_World2Object[1].xyz), length(_World2Object[2].xyz) );
                float3 objScale = 1.0/recipObjScale;
/////// Vectors:
                UnityMetaInput o;
                UNITY_INITIALIZE_OUTPUT( UnityMetaInput, o );
                
                float2 node_3093 = (i.uv0/_BaseScale);
                float2 node_6938 = node_3093.rg;
                float2 node_2194 = float2((node_6938.r*objScale.r),(node_6938.g*objScale.g));
                float4 node_5459 = tex2D(_WearMask,TRANSFORM_TEX(node_2194, _WearMask));
                float4 _Mask_var = tex2D(_Mask,TRANSFORM_TEX(i.uv0, _Mask));
                float2 node_2423 = node_3093.rg;
                float2 node_2057 = float2((node_2423.r*objScale.b),(node_2423.g*objScale.g));
                float4 node_9868 = tex2D(_WearMask,TRANSFORM_TEX(node_2057, _WearMask));
                float4 node_4929 = tex2D(_WearMask,TRANSFORM_TEX(node_2194, _WearMask));
                float node_6443_if_leA = step(_WearThreshold,(((node_5459.r*_Mask_var.g)+(node_9868.g*_Mask_var.r))+(node_4929.r*_Mask_var.b)));
                float node_6443_if_leB = step((((node_5459.r*_Mask_var.g)+(node_9868.g*_Mask_var.r))+(node_4929.r*_Mask_var.b)),_WearThreshold);
                float4 _Diffuse_copy_copy = tex2D(_DiffuseTexture,TRANSFORM_TEX(node_2057, _DiffuseTexture));
                float4 _Diffuse_copy = tex2D(_DiffuseTexture,TRANSFORM_TEX(node_2194, _DiffuseTexture));
                float2 node_3742 = node_3093.rg;
                float2 node_1132 = float2((node_3742.r*objScale.r),(node_3742.g*objScale.b));
                float4 _Diffuse = tex2D(_DiffuseTexture,TRANSFORM_TEX(node_1132, _DiffuseTexture));
                float3 node_8353 = ((_Diffuse_copy_copy.rgb*_Mask_var.r)+((_Diffuse_copy.rgb*_Mask_var.g)+(_Diffuse.rgb*_Mask_var.b)));
                float3 node_6443 = lerp((node_6443_if_leA*lerp(node_8353,_PaintColor.rgb,_ColorOpacity))+(node_6443_if_leB*node_8353),node_8353,node_6443_if_leA*node_6443_if_leB);
                o.Emission = (node_6443*UNITY_LIGHTMODEL_AMBIENT.rgb);
                
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
