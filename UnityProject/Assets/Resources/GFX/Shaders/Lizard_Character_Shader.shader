// Shader created with Shader Forge v1.13 
// Shader Forge (c) Neat Corporation / Joachim Holmer - http://www.acegikmo.com/shaderforge/
// Note: Manually altering this data may prevent you from opening it in Shader Forge
/*SF_DATA;ver:1.13;sub:START;pass:START;ps:flbk:,lico:1,lgpr:1,nrmq:1,nrsp:0,limd:0,spmd:1,trmd:0,grmd:0,uamb:True,mssp:True,bkdf:True,rprd:False,enco:False,rmgx:True,rpth:0,hqsc:True,hqlp:False,tesm:0,bsrc:0,bdst:1,culm:0,dpts:2,wrdp:True,dith:0,ufog:False,aust:True,igpj:False,qofs:0,qpre:1,rntp:1,fgom:False,fgoc:False,fgod:False,fgor:False,fgmd:0,fgcr:0.5,fgcg:0.5,fgcb:0.5,fgca:1,fgde:0.01,fgrn:0,fgrf:300,ofsf:0,ofsu:0,f2p0:False;n:type:ShaderForge.SFN_Final,id:0,x:34726,y:31907,varname:node_0,prsc:2|normal-83-RGB,emission-5369-OUT,custl-64-OUT,olwid-2431-OUT,olcol-7799-RGB;n:type:ShaderForge.SFN_LightAttenuation,id:37,x:32857,y:32062,varname:node_37,prsc:2;n:type:ShaderForge.SFN_Dot,id:40,x:31764,y:32587,varname:node_40,prsc:2,dt:4|A-42-OUT,B-41-OUT;n:type:ShaderForge.SFN_NormalVector,id:41,x:31554,y:32638,prsc:2,pt:True;n:type:ShaderForge.SFN_LightVector,id:42,x:31409,y:32543,varname:node_42,prsc:2;n:type:ShaderForge.SFN_LightColor,id:63,x:33872,y:32155,varname:node_63,prsc:2;n:type:ShaderForge.SFN_Multiply,id:64,x:34056,y:32155,varname:node_64,prsc:2|A-63-RGB,B-84-OUT;n:type:ShaderForge.SFN_Tex2d,id:82,x:30162,y:31195,ptovrint:False,ptlb:Masks,ptin:_Masks,varname:_Diffuse,prsc:2,tex:12d24442a1666204a8e9ccf941281def,ntxv:0,isnm:False|UVIN-272-UVOUT;n:type:ShaderForge.SFN_Tex2d,id:83,x:34056,y:31966,ptovrint:False,ptlb:Normals,ptin:_Normals,varname:_Normals,prsc:2,tex:8873df0230cdf9a4f93c300fe2990fa2,ntxv:3,isnm:True|UVIN-272-UVOUT;n:type:ShaderForge.SFN_Multiply,id:84,x:33712,y:32143,cmnt:Diffuse Light,varname:node_84,prsc:2|A-2037-OUT,B-2105-OUT;n:type:ShaderForge.SFN_AmbientLight,id:187,x:33323,y:32415,varname:node_187,prsc:2;n:type:ShaderForge.SFN_TexCoord,id:272,x:31261,y:31685,varname:node_272,prsc:2,uv:0;n:type:ShaderForge.SFN_RemapRangeAdvanced,id:1026,x:32197,y:32697,varname:node_1026,prsc:2|IN-5306-OUT,IMIN-2384-OUT,IMAX-9128-OUT,OMIN-5169-OUT,OMAX-3044-OUT;n:type:ShaderForge.SFN_Slider,id:4544,x:32509,y:32314,ptovrint:False,ptlb:MinLight,ptin:_MinLight,varname:node_4544,prsc:2,min:0,cur:0,max:1;n:type:ShaderForge.SFN_Slider,id:5426,x:32521,y:32411,ptovrint:False,ptlb:MaxLight,ptin:_MaxLight,varname:_MinLight_copy,prsc:2,min:0,cur:1,max:1;n:type:ShaderForge.SFN_Slider,id:3630,x:31336,y:33021,ptovrint:False,ptlb:Reach,ptin:_Reach,varname:node_3630,prsc:2,min:0,cur:0.5,max:1;n:type:ShaderForge.SFN_Slider,id:7181,x:31336,y:33116,ptovrint:False,ptlb:Smoothness,ptin:_Smoothness,varname:_Value_copy,prsc:2,min:0,cur:0.025,max:0.5;n:type:ShaderForge.SFN_Add,id:9128,x:31776,y:33050,varname:node_9128,prsc:2|A-3630-OUT,B-7181-OUT;n:type:ShaderForge.SFN_Subtract,id:2384,x:31776,y:32906,varname:node_2384,prsc:2|A-3630-OUT,B-7181-OUT;n:type:ShaderForge.SFN_Clamp01,id:1648,x:32372,y:32697,varname:node_1648,prsc:2|IN-1026-OUT;n:type:ShaderForge.SFN_Vector1,id:5169,x:32170,y:32843,varname:node_5169,prsc:2,v1:0;n:type:ShaderForge.SFN_Vector1,id:3044,x:32168,y:32906,varname:node_3044,prsc:2,v1:1;n:type:ShaderForge.SFN_Lerp,id:6558,x:32995,y:32384,varname:node_6558,prsc:2|A-4544-OUT,B-5426-OUT,T-1648-OUT;n:type:ShaderForge.SFN_Slider,id:2431,x:33847,y:32462,ptovrint:False,ptlb:Outline,ptin:_Outline,varname:node_2431,prsc:2,min:0,cur:0,max:1;n:type:ShaderForge.SFN_Color,id:7799,x:34004,y:32554,ptovrint:False,ptlb:OutlineColor,ptin:_OutlineColor,varname:node_7799,prsc:2,glob:False,c1:0,c2:0,c3:0,c4:1;n:type:ShaderForge.SFN_Multiply,id:2105,x:33252,y:32160,varname:node_2105,prsc:2|A-6558-OUT,B-37-OUT;n:type:ShaderForge.SFN_Clamp,id:7728,x:33653,y:32343,varname:node_7728,prsc:2|IN-2105-OUT,MIN-187-RGB,MAX-36-OUT;n:type:ShaderForge.SFN_Vector1,id:36,x:33523,y:32507,varname:node_36,prsc:2,v1:1;n:type:ShaderForge.SFN_Color,id:8049,x:31852,y:31992,ptovrint:False,ptlb:Color 2,ptin:_Color2,varname:_Color2,prsc:2,glob:False,c1:0.9852941,c2:0.1738754,c3:0.1738754,c4:1;n:type:ShaderForge.SFN_Tex2d,id:7248,x:31805,y:32377,ptovrint:False,ptlb:AO,ptin:_AO,varname:node_7248,prsc:2,tex:6cd6a0f94b60c1145a608a252abfbe94,ntxv:0,isnm:False;n:type:ShaderForge.SFN_Multiply,id:5306,x:32063,y:32467,varname:node_5306,prsc:2|A-7248-R,B-40-OUT;n:type:ShaderForge.SFN_ConstantClamp,id:4531,x:31561,y:32336,varname:node_4531,prsc:2,min:0,max:1;n:type:ShaderForge.SFN_Multiply,id:2037,x:33592,y:31777,varname:node_2037,prsc:2|A-1905-OUT,B-7240-OUT;n:type:ShaderForge.SFN_Lerp,id:7240,x:33375,y:31637,varname:node_7240,prsc:2|A-3502-OUT,B-7248-R,T-9831-OUT;n:type:ShaderForge.SFN_Slider,id:9831,x:33045,y:31751,ptovrint:False,ptlb:AO Intensity,ptin:_AOIntensity,varname:node_9831,prsc:2,min:0,cur:1,max:1;n:type:ShaderForge.SFN_Vector1,id:3502,x:33124,y:31637,varname:node_3502,prsc:2,v1:1;n:type:ShaderForge.SFN_Multiply,id:145,x:34227,y:32491,varname:node_145,prsc:2|A-2525-OUT,B-7799-RGB;n:type:ShaderForge.SFN_Multiply,id:1464,x:33828,y:31937,varname:node_1464,prsc:2|A-2037-OUT,B-63-RGB;n:type:ShaderForge.SFN_Multiply,id:2525,x:33842,y:31723,varname:node_2525,prsc:2|A-2037-OUT,B-187-RGB;n:type:ShaderForge.SFN_Multiply,id:1627,x:34056,y:31734,varname:node_1627,prsc:2|A-2525-OUT,B-2105-OUT;n:type:ShaderForge.SFN_SwitchProperty,id:1905,x:33237,y:30775,ptovrint:False,ptlb:UseMasks,ptin:_UseMasks,varname:node_1905,prsc:2,on:False|A-4563-RGB,B-5593-OUT;n:type:ShaderForge.SFN_Color,id:8870,x:31976,y:31063,ptovrint:False,ptlb:Button Color,ptin:_ButtonColor,varname:node_8870,prsc:2,glob:False,c1:0.7352941,c2:0.1946367,c3:0.1946367,c4:1;n:type:ShaderForge.SFN_Multiply,id:7380,x:31792,y:31113,varname:node_7380,prsc:2|A-2779-OUT,B-82-R;n:type:ShaderForge.SFN_Color,id:6831,x:31976,y:31442,ptovrint:False,ptlb:Skin Color 1,ptin:_SkinColor1,varname:node_6831,prsc:2,glob:False,c1:0.2869585,c2:0.2698962,c3:0.7647059,c4:1;n:type:ShaderForge.SFN_Multiply,id:6696,x:31792,y:31471,varname:node_6696,prsc:2|A-538-OUT,B-82-B;n:type:ShaderForge.SFN_Add,id:3339,x:32637,y:30762,varname:node_3339,prsc:2;n:type:ShaderForge.SFN_Color,id:8663,x:31976,y:31235,ptovrint:False,ptlb:Vest Color,ptin:_VestColor,varname:node_8663,prsc:2,glob:False,c1:0.5909864,c2:0.9044118,c3:0.5652574,c4:1;n:type:ShaderForge.SFN_Multiply,id:4440,x:31792,y:31275,varname:node_4440,prsc:2|A-6747-OUT,B-82-G;n:type:ShaderForge.SFN_Tex2d,id:4563,x:32714,y:30504,ptovrint:False,ptlb:Diffuse,ptin:_Diffuse,varname:node_4563,prsc:2,tex:62cc0e4d4e0eb0146b6b8c13668535fb,ntxv:0,isnm:False;n:type:ShaderForge.SFN_Add,id:5668,x:30801,y:31635,varname:node_5668,prsc:2|A-82-R,B-82-G,C-82-B;n:type:ShaderForge.SFN_Lerp,id:2620,x:32913,y:30752,varname:node_2620,prsc:2|A-4563-RGB,B-3339-OUT;n:type:ShaderForge.SFN_Clamp01,id:5856,x:30971,y:31655,varname:node_5856,prsc:2|IN-5668-OUT;n:type:ShaderForge.SFN_SwitchProperty,id:2779,x:31569,y:31113,ptovrint:False,ptlb:Use Red,ptin:_UseRed,varname:_UseWhite_copy,prsc:2,on:True|A-5148-OUT,B-9267-OUT;n:type:ShaderForge.SFN_SwitchProperty,id:6747,x:31569,y:31300,ptovrint:False,ptlb:Use Green,ptin:_UseGreen,varname:_UseRed_copy,prsc:2,on:True|A-5148-OUT,B-9267-OUT;n:type:ShaderForge.SFN_SwitchProperty,id:538,x:31569,y:31471,ptovrint:False,ptlb:Use Blue,ptin:_UseBlue,varname:_UseGreen_copy,prsc:2,on:True|A-5148-OUT,B-9267-OUT;n:type:ShaderForge.SFN_Multiply,id:3055,x:32371,y:31379,varname:node_3055,prsc:2|A-9571-OUT,B-6696-OUT;n:type:ShaderForge.SFN_Multiply,id:4425,x:32160,y:31217,varname:node_4425,prsc:2|A-8663-RGB,B-4440-OUT;n:type:ShaderForge.SFN_Lerp,id:7756,x:32913,y:30920,varname:node_7756,prsc:2|A-4563-RGB;n:type:ShaderForge.SFN_Multiply,id:8300,x:28327,y:30463,varname:node_8300,prsc:2;n:type:ShaderForge.SFN_Tex2d,id:5234,x:28528,y:30463,ptovrint:False,ptlb:node_5504,ptin:_node_5504,varname:_HullWood_copy,prsc:2,tex:e9df5b05ad051ce4cad905853c710bcd,ntxv:0,isnm:False;n:type:ShaderForge.SFN_Multiply,id:8228,x:28743,y:30463,varname:node_8228,prsc:2|A-5234-R,B-5234-G;n:type:ShaderForge.SFN_Multiply,id:3647,x:28931,y:30463,varname:node_3647,prsc:2|A-8228-OUT;n:type:ShaderForge.SFN_Multiply,id:7771,x:32577,y:31315,varname:node_7771,prsc:2|A-4563-RGB,B-3055-OUT;n:type:ShaderForge.SFN_Multiply,id:1435,x:28391,y:30527,varname:node_1435,prsc:2;n:type:ShaderForge.SFN_Tex2d,id:7460,x:28592,y:30527,ptovrint:False,ptlb:node_5504_copy,ptin:_node_5504_copy,varname:_node_5504_copy,prsc:2,tex:e9df5b05ad051ce4cad905853c710bcd,ntxv:0,isnm:False;n:type:ShaderForge.SFN_Multiply,id:1245,x:28807,y:30527,varname:node_1245,prsc:2|A-7460-R,B-7460-G;n:type:ShaderForge.SFN_Multiply,id:9909,x:28995,y:30527,varname:node_9909,prsc:2|A-1245-OUT;n:type:ShaderForge.SFN_Multiply,id:5948,x:28455,y:30591,varname:node_5948,prsc:2;n:type:ShaderForge.SFN_Tex2d,id:3945,x:28656,y:30591,ptovrint:False,ptlb:node_5504_copy_copy,ptin:_node_5504_copy_copy,varname:_node_5504_copy_copy,prsc:2,tex:e9df5b05ad051ce4cad905853c710bcd,ntxv:0,isnm:False;n:type:ShaderForge.SFN_Multiply,id:5332,x:28871,y:30591,varname:node_5332,prsc:2|A-3945-R,B-3945-G;n:type:ShaderForge.SFN_Multiply,id:4764,x:29059,y:30591,varname:node_4764,prsc:2|A-5332-OUT;n:type:ShaderForge.SFN_If,id:7632,x:30324,y:31011,varname:node_7632,prsc:2|A-82-G,B-8555-OUT,GT-7193-OUT,EQ-8555-OUT,LT-8555-OUT;n:type:ShaderForge.SFN_Vector1,id:8555,x:30019,y:30973,varname:node_8555,prsc:2,v1:0;n:type:ShaderForge.SFN_Vector1,id:7193,x:29927,y:31074,varname:node_7193,prsc:2,v1:1;n:type:ShaderForge.SFN_Vector1,id:5148,x:31256,y:31317,varname:node_5148,prsc:2,v1:0;n:type:ShaderForge.SFN_Vector1,id:9267,x:31256,y:31238,varname:node_9267,prsc:2,v1:1;n:type:ShaderForge.SFN_Multiply,id:7573,x:32160,y:31063,varname:node_7573,prsc:2|A-8870-RGB,B-7380-OUT;n:type:ShaderForge.SFN_Color,id:8718,x:31976,y:31620,ptovrint:False,ptlb:Skin Color 2,ptin:_SkinColor2,varname:_SkinColor2,prsc:2,glob:False,c1:0.7647059,c2:0.2698962,c3:0.5258323,c4:1;n:type:ShaderForge.SFN_Lerp,id:5677,x:32189,y:31530,varname:node_5677,prsc:2|A-6831-RGB,B-8718-RGB,T-82-A;n:type:ShaderForge.SFN_Lerp,id:9571,x:32397,y:31509,varname:node_9571,prsc:2|A-4563-RGB,B-5677-OUT,T-8633-OUT;n:type:ShaderForge.SFN_Slider,id:8633,x:32220,y:31705,ptovrint:False,ptlb:Skin Color Opacity,ptin:_SkinColorOpacity,varname:node_8633,prsc:2,min:0,cur:0.9715159,max:1;n:type:ShaderForge.SFN_Add,id:2343,x:32160,y:30898,varname:node_2343,prsc:2|A-7380-OUT,B-4440-OUT,C-6696-OUT;n:type:ShaderForge.SFN_Subtract,id:7139,x:32379,y:30910,varname:node_7139,prsc:2|A-4563-RGB,B-2343-OUT;n:type:ShaderForge.SFN_Clamp01,id:666,x:32541,y:30898,varname:node_666,prsc:2|IN-7139-OUT;n:type:ShaderForge.SFN_Add,id:5593,x:32750,y:30998,varname:node_5593,prsc:2|A-666-OUT,B-9786-OUT;n:type:ShaderForge.SFN_Add,id:9786,x:32691,y:31168,varname:node_9786,prsc:2|A-7573-OUT,B-4425-OUT,C-3055-OUT;n:type:ShaderForge.SFN_Color,id:2655,x:33639,y:31449,ptovrint:False,ptlb:Highlight,ptin:_Highlight,varname:node_2454,prsc:2,glob:False,c1:0,c2:0,c3:0,c4:1;n:type:ShaderForge.SFN_Fresnel,id:5165,x:33754,y:31570,varname:node_5165,prsc:2;n:type:ShaderForge.SFN_Multiply,id:9630,x:33946,y:31515,varname:node_9630,prsc:2|A-2655-RGB,B-5165-OUT;n:type:ShaderForge.SFN_Add,id:5369,x:34235,y:31554,varname:node_5369,prsc:2|A-2525-OUT,B-9630-OUT;proporder:82-83-3630-7181-4544-5426-7799-2431-7248-9831-1905-8870-8663-6831-4563-2779-6747-538-8718-8633-2655;pass:END;sub:END;*/

Shader "Shader Forge/Examples/Lizard_Character_Shader" {
    Properties {
        _Masks ("Masks", 2D) = "white" {}
        _Normals ("Normals", 2D) = "bump" {}
        _Reach ("Reach", Range(0, 1)) = 0.5
        _Smoothness ("Smoothness", Range(0, 0.5)) = 0.025
        _MinLight ("MinLight", Range(0, 1)) = 0
        _MaxLight ("MaxLight", Range(0, 1)) = 1
        _OutlineColor ("OutlineColor", Color) = (0,0,0,1)
        _Outline ("Outline", Range(0, 1)) = 0
        _AO ("AO", 2D) = "white" {}
        _AOIntensity ("AO Intensity", Range(0, 1)) = 1
        [MaterialToggle] _UseMasks ("UseMasks", Float ) = 0.6235294
        _ButtonColor ("Button Color", Color) = (0.7352941,0.1946367,0.1946367,1)
        _VestColor ("Vest Color", Color) = (0.5909864,0.9044118,0.5652574,1)
        _SkinColor1 ("Skin Color 1", Color) = (0.2869585,0.2698962,0.7647059,1)
        _Diffuse ("Diffuse", 2D) = "white" {}
        [MaterialToggle] _UseRed ("Use Red", Float ) = 1
        [MaterialToggle] _UseGreen ("Use Green", Float ) = 1
        [MaterialToggle] _UseBlue ("Use Blue", Float ) = 1
        _SkinColor2 ("Skin Color 2", Color) = (0.7647059,0.2698962,0.5258323,1)
        _SkinColorOpacity ("Skin Color Opacity", Range(0, 1)) = 0.9715159
        _Highlight ("Highlight", Color) = (0,0,0,1)
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
            uniform sampler2D _Masks; uniform float4 _Masks_ST;
            uniform sampler2D _Normals; uniform float4 _Normals_ST;
            uniform float _MinLight;
            uniform float _MaxLight;
            uniform float _Reach;
            uniform float _Smoothness;
            uniform sampler2D _AO; uniform float4 _AO_ST;
            uniform float _AOIntensity;
            uniform fixed _UseMasks;
            uniform float4 _ButtonColor;
            uniform float4 _SkinColor1;
            uniform float4 _VestColor;
            uniform sampler2D _Diffuse; uniform float4 _Diffuse_ST;
            uniform fixed _UseRed;
            uniform fixed _UseGreen;
            uniform fixed _UseBlue;
            uniform float4 _SkinColor2;
            uniform float _SkinColorOpacity;
            uniform float4 _Highlight;
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
                float4 _Diffuse_var = tex2D(_Diffuse,TRANSFORM_TEX(i.uv0, _Diffuse));
                float node_5148 = 0.0;
                float node_9267 = 1.0;
                float4 _Masks_var = tex2D(_Masks,TRANSFORM_TEX(i.uv0, _Masks));
                float node_7380 = (lerp( node_5148, node_9267, _UseRed )*_Masks_var.r);
                float node_4440 = (lerp( node_5148, node_9267, _UseGreen )*_Masks_var.g);
                float node_6696 = (lerp( node_5148, node_9267, _UseBlue )*_Masks_var.b);
                float3 node_3055 = (lerp(_Diffuse_var.rgb,lerp(_SkinColor1.rgb,_SkinColor2.rgb,_Masks_var.a),_SkinColorOpacity)*node_6696);
                float4 _AO_var = tex2D(_AO,TRANSFORM_TEX(i.uv0, _AO));
                float3 node_2037 = (lerp( _Diffuse_var.rgb, (saturate((_Diffuse_var.rgb-(node_7380+node_4440+node_6696)))+((_ButtonColor.rgb*node_7380)+(_VestColor.rgb*node_4440)+node_3055)), _UseMasks )*lerp(1.0,_AO_var.r,_AOIntensity));
                float3 node_2525 = (node_2037*UNITY_LIGHTMODEL_AMBIENT.rgb);
                float3 emissive = (node_2525+(_Highlight.rgb*(1.0-max(0,dot(normalDirection, viewDirection)))));
                float node_2384 = (_Reach-_Smoothness);
                float node_5169 = 0.0;
                float node_2105 = (lerp(_MinLight,_MaxLight,saturate((node_5169 + ( ((_AO_var.r*0.5*dot(lightDirection,normalDirection)+0.5) - node_2384) * (1.0 - node_5169) ) / ((_Reach+_Smoothness) - node_2384))))*attenuation);
                float3 finalColor = emissive + (_LightColor0.rgb*(node_2037*node_2105));
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
            uniform sampler2D _Masks; uniform float4 _Masks_ST;
            uniform sampler2D _Normals; uniform float4 _Normals_ST;
            uniform float _MinLight;
            uniform float _MaxLight;
            uniform float _Reach;
            uniform float _Smoothness;
            uniform sampler2D _AO; uniform float4 _AO_ST;
            uniform float _AOIntensity;
            uniform fixed _UseMasks;
            uniform float4 _ButtonColor;
            uniform float4 _SkinColor1;
            uniform float4 _VestColor;
            uniform sampler2D _Diffuse; uniform float4 _Diffuse_ST;
            uniform fixed _UseRed;
            uniform fixed _UseGreen;
            uniform fixed _UseBlue;
            uniform float4 _SkinColor2;
            uniform float _SkinColorOpacity;
            uniform float4 _Highlight;
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
                float4 _Diffuse_var = tex2D(_Diffuse,TRANSFORM_TEX(i.uv0, _Diffuse));
                float node_5148 = 0.0;
                float node_9267 = 1.0;
                float4 _Masks_var = tex2D(_Masks,TRANSFORM_TEX(i.uv0, _Masks));
                float node_7380 = (lerp( node_5148, node_9267, _UseRed )*_Masks_var.r);
                float node_4440 = (lerp( node_5148, node_9267, _UseGreen )*_Masks_var.g);
                float node_6696 = (lerp( node_5148, node_9267, _UseBlue )*_Masks_var.b);
                float3 node_3055 = (lerp(_Diffuse_var.rgb,lerp(_SkinColor1.rgb,_SkinColor2.rgb,_Masks_var.a),_SkinColorOpacity)*node_6696);
                float4 _AO_var = tex2D(_AO,TRANSFORM_TEX(i.uv0, _AO));
                float3 node_2037 = (lerp( _Diffuse_var.rgb, (saturate((_Diffuse_var.rgb-(node_7380+node_4440+node_6696)))+((_ButtonColor.rgb*node_7380)+(_VestColor.rgb*node_4440)+node_3055)), _UseMasks )*lerp(1.0,_AO_var.r,_AOIntensity));
                float node_2384 = (_Reach-_Smoothness);
                float node_5169 = 0.0;
                float node_2105 = (lerp(_MinLight,_MaxLight,saturate((node_5169 + ( ((_AO_var.r*0.5*dot(lightDirection,normalDirection)+0.5) - node_2384) * (1.0 - node_5169) ) / ((_Reach+_Smoothness) - node_2384))))*attenuation);
                float3 finalColor = (_LightColor0.rgb*(node_2037*node_2105));
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
            uniform sampler2D _Masks; uniform float4 _Masks_ST;
            uniform sampler2D _AO; uniform float4 _AO_ST;
            uniform float _AOIntensity;
            uniform fixed _UseMasks;
            uniform float4 _ButtonColor;
            uniform float4 _SkinColor1;
            uniform float4 _VestColor;
            uniform sampler2D _Diffuse; uniform float4 _Diffuse_ST;
            uniform fixed _UseRed;
            uniform fixed _UseGreen;
            uniform fixed _UseBlue;
            uniform float4 _SkinColor2;
            uniform float _SkinColorOpacity;
            uniform float4 _Highlight;
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
                
                float4 _Diffuse_var = tex2D(_Diffuse,TRANSFORM_TEX(i.uv0, _Diffuse));
                float node_5148 = 0.0;
                float node_9267 = 1.0;
                float4 _Masks_var = tex2D(_Masks,TRANSFORM_TEX(i.uv0, _Masks));
                float node_7380 = (lerp( node_5148, node_9267, _UseRed )*_Masks_var.r);
                float node_4440 = (lerp( node_5148, node_9267, _UseGreen )*_Masks_var.g);
                float node_6696 = (lerp( node_5148, node_9267, _UseBlue )*_Masks_var.b);
                float3 node_3055 = (lerp(_Diffuse_var.rgb,lerp(_SkinColor1.rgb,_SkinColor2.rgb,_Masks_var.a),_SkinColorOpacity)*node_6696);
                float4 _AO_var = tex2D(_AO,TRANSFORM_TEX(i.uv0, _AO));
                float3 node_2037 = (lerp( _Diffuse_var.rgb, (saturate((_Diffuse_var.rgb-(node_7380+node_4440+node_6696)))+((_ButtonColor.rgb*node_7380)+(_VestColor.rgb*node_4440)+node_3055)), _UseMasks )*lerp(1.0,_AO_var.r,_AOIntensity));
                float3 node_2525 = (node_2037*UNITY_LIGHTMODEL_AMBIENT.rgb);
                o.Emission = (node_2525+(_Highlight.rgb*(1.0-max(0,dot(normalDirection, viewDirection)))));
                
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
