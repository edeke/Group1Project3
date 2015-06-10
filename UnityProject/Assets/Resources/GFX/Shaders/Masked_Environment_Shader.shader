// Shader created with Shader Forge v1.13 
// Shader Forge (c) Neat Corporation / Joachim Holmer - http://www.acegikmo.com/shaderforge/
// Note: Manually altering this data may prevent you from opening it in Shader Forge
/*SF_DATA;ver:1.13;sub:START;pass:START;ps:flbk:,lico:1,lgpr:1,nrmq:1,nrsp:0,limd:0,spmd:1,trmd:0,grmd:0,uamb:True,mssp:True,bkdf:True,rprd:False,enco:False,rmgx:True,rpth:0,hqsc:True,hqlp:False,tesm:0,bsrc:0,bdst:1,culm:0,dpts:2,wrdp:True,dith:0,ufog:False,aust:True,igpj:False,qofs:0,qpre:1,rntp:1,fgom:False,fgoc:False,fgod:False,fgor:False,fgmd:0,fgcr:0.5,fgcg:0.5,fgcb:0.5,fgca:1,fgde:0.01,fgrn:0,fgrf:300,ofsf:0,ofsu:0,f2p0:False;n:type:ShaderForge.SFN_Final,id:0,x:34329,y:31962,varname:node_0,prsc:2|normal-83-RGB,emission-5545-OUT,custl-64-OUT,olwid-2431-OUT,olcol-7799-RGB;n:type:ShaderForge.SFN_LightAttenuation,id:37,x:32964,y:32209,varname:node_37,prsc:2;n:type:ShaderForge.SFN_Dot,id:40,x:31764,y:32587,varname:node_40,prsc:2,dt:4|A-42-OUT,B-41-OUT;n:type:ShaderForge.SFN_NormalVector,id:41,x:31554,y:32638,prsc:2,pt:True;n:type:ShaderForge.SFN_LightVector,id:42,x:31409,y:32543,varname:node_42,prsc:2;n:type:ShaderForge.SFN_LightColor,id:63,x:33860,y:32155,varname:node_63,prsc:2;n:type:ShaderForge.SFN_Multiply,id:64,x:34056,y:32155,varname:node_64,prsc:2|A-63-RGB,B-84-OUT;n:type:ShaderForge.SFN_Tex2d,id:83,x:34056,y:31966,ptovrint:False,ptlb:Normals,ptin:_Normals,varname:_Normals,prsc:2,tex:a4900d3a9fde56248bc38b4521bdb13a,ntxv:3,isnm:True;n:type:ShaderForge.SFN_Multiply,id:84,x:33712,y:32143,cmnt:Diffuse Light,varname:node_84,prsc:2|A-8745-OUT,B-2105-OUT;n:type:ShaderForge.SFN_AmbientLight,id:187,x:33323,y:32415,varname:node_187,prsc:2;n:type:ShaderForge.SFN_RemapRangeAdvanced,id:1026,x:32197,y:32697,varname:node_1026,prsc:2|IN-40-OUT,IMIN-2384-OUT,IMAX-9128-OUT,OMIN-5169-OUT,OMAX-3044-OUT;n:type:ShaderForge.SFN_Slider,id:4544,x:32509,y:32314,ptovrint:False,ptlb:MinLight,ptin:_MinLight,varname:node_4544,prsc:2,min:0,cur:0,max:1;n:type:ShaderForge.SFN_Slider,id:5426,x:32521,y:32411,ptovrint:False,ptlb:MaxLight,ptin:_MaxLight,varname:_MinLight_copy,prsc:2,min:0,cur:1,max:1;n:type:ShaderForge.SFN_Slider,id:3630,x:31336,y:33021,ptovrint:False,ptlb:Reach,ptin:_Reach,varname:node_3630,prsc:2,min:0,cur:0.5,max:1;n:type:ShaderForge.SFN_Slider,id:7181,x:31336,y:33116,ptovrint:False,ptlb:Smoothness,ptin:_Smoothness,varname:_Value_copy,prsc:2,min:0,cur:0.025,max:0.5;n:type:ShaderForge.SFN_Add,id:9128,x:31776,y:33050,varname:node_9128,prsc:2|A-3630-OUT,B-7181-OUT;n:type:ShaderForge.SFN_Subtract,id:2384,x:31776,y:32906,varname:node_2384,prsc:2|A-3630-OUT,B-7181-OUT;n:type:ShaderForge.SFN_Clamp01,id:1648,x:32372,y:32697,varname:node_1648,prsc:2|IN-1026-OUT;n:type:ShaderForge.SFN_Vector1,id:5169,x:32170,y:32843,varname:node_5169,prsc:2,v1:0;n:type:ShaderForge.SFN_Vector1,id:3044,x:32168,y:32906,varname:node_3044,prsc:2,v1:1;n:type:ShaderForge.SFN_Lerp,id:6558,x:32995,y:32384,varname:node_6558,prsc:2|A-4544-OUT,B-5426-OUT,T-1648-OUT;n:type:ShaderForge.SFN_Slider,id:2431,x:33847,y:32462,ptovrint:False,ptlb:Outline,ptin:_Outline,varname:node_2431,prsc:2,min:0,cur:0,max:1;n:type:ShaderForge.SFN_Color,id:7799,x:34004,y:32554,ptovrint:False,ptlb:OutlineColor,ptin:_OutlineColor,varname:node_7799,prsc:2,glob:False,c1:0,c2:0,c3:0,c4:1;n:type:ShaderForge.SFN_Multiply,id:2105,x:33252,y:32160,varname:node_2105,prsc:2|A-6558-OUT,B-37-OUT;n:type:ShaderForge.SFN_Vector1,id:5483,x:33323,y:32547,varname:node_5483,prsc:2,v1:0;n:type:ShaderForge.SFN_Clamp,id:7728,x:33640,y:32350,varname:node_7728,prsc:2|IN-2105-OUT,MIN-187-RGB,MAX-36-OUT;n:type:ShaderForge.SFN_Vector1,id:36,x:33523,y:32507,varname:node_36,prsc:2,v1:1;n:type:ShaderForge.SFN_Multiply,id:5545,x:33815,y:31878,varname:node_5545,prsc:2|A-8745-OUT,B-187-RGB;n:type:ShaderForge.SFN_Tex2d,id:2099,x:27759,y:32323,ptovrint:False,ptlb:Masks,ptin:_Masks,varname:_Diffuse,prsc:2,tex:12d24442a1666204a8e9ccf941281def,ntxv:0,isnm:False;n:type:ShaderForge.SFN_SwitchProperty,id:8745,x:31726,y:32096,ptovrint:False,ptlb:UseMasks,ptin:_UseMasks,varname:node_1905,prsc:2,on:False|A-1375-RGB,B-2840-OUT;n:type:ShaderForge.SFN_Multiply,id:4199,x:28569,y:31755,cmnt:Purple,varname:node_4199,prsc:2|A-9743-OUT,B-8685-OUT;n:type:ShaderForge.SFN_Multiply,id:4133,x:28569,y:31605,cmnt:Yellow,varname:node_4133,prsc:2|A-9743-OUT,B-9121-OUT;n:type:ShaderForge.SFN_Multiply,id:9700,x:28565,y:31463,cmnt:Cyan,varname:node_9700,prsc:2|A-9121-OUT,B-8685-OUT;n:type:ShaderForge.SFN_Clamp01,id:955,x:28395,y:31316,varname:node_955,prsc:2|IN-7141-OUT;n:type:ShaderForge.SFN_OneMinus,id:7859,x:28565,y:31316,cmnt:Black,varname:node_7859,prsc:2|IN-955-OUT;n:type:ShaderForge.SFN_Color,id:7707,x:29131,y:32166,ptovrint:False,ptlb:Red Color,ptin:_RedColor,varname:node_8870,prsc:2,glob:False,c1:0.7352941,c2:0.1946367,c3:0.1946367,c4:1;n:type:ShaderForge.SFN_Multiply,id:5900,x:28947,y:32216,varname:node_5900,prsc:2|A-495-OUT,B-6555-OUT;n:type:ShaderForge.SFN_Color,id:3350,x:29131,y:32544,ptovrint:False,ptlb:Blue Color,ptin:_BlueColor,varname:node_6831,prsc:2,glob:False,c1:0.2869585,c2:0.2698962,c3:0.7647059,c4:1;n:type:ShaderForge.SFN_Multiply,id:9587,x:28947,y:32574,varname:node_9587,prsc:2|A-2528-OUT,B-6841-OUT;n:type:ShaderForge.SFN_Color,id:6608,x:29131,y:31268,ptovrint:False,ptlb:Black Color,ptin:_BlackColor,varname:node_1995,prsc:2,glob:False,c1:0.4338235,c2:0.3437589,c3:0.1499243,c4:1;n:type:ShaderForge.SFN_Color,id:1288,x:29131,y:31440,ptovrint:False,ptlb:Cyan Color,ptin:_CyanColor,varname:node_5182,prsc:2,glob:False,c1:0.1342993,c2:0.5642971,c3:0.6764706,c4:1;n:type:ShaderForge.SFN_Multiply,id:2593,x:28931,y:31450,varname:node_2593,prsc:2|A-3289-OUT,B-9700-OUT;n:type:ShaderForge.SFN_Color,id:6921,x:29131,y:31604,ptovrint:False,ptlb:Yellow Color,ptin:_YellowColor,varname:node_5330,prsc:2,glob:False,c1:1,c2:0.9407708,c3:0.4632353,c4:1;n:type:ShaderForge.SFN_Multiply,id:4224,x:28944,y:31605,varname:node_4224,prsc:2|A-5047-OUT,B-4133-OUT;n:type:ShaderForge.SFN_Add,id:7141,x:28176,y:31316,varname:node_7141,prsc:2|A-2099-R,B-2099-G,C-2099-B;n:type:ShaderForge.SFN_Subtract,id:9743,x:28135,y:32285,cmnt:Red -White,varname:node_9743,prsc:2|A-2099-R,B-3469-OUT;n:type:ShaderForge.SFN_Subtract,id:9121,x:28135,y:32421,cmnt:Green -White,varname:node_9121,prsc:2|A-2099-G,B-3469-OUT;n:type:ShaderForge.SFN_Subtract,id:8685,x:28135,y:32560,cmnt:Blue -White,varname:node_8685,prsc:2|A-2099-B,B-3469-OUT;n:type:ShaderForge.SFN_Multiply,id:3112,x:28944,y:31769,varname:node_3112,prsc:2|A-1531-OUT,B-4199-OUT;n:type:ShaderForge.SFN_Color,id:2655,x:29131,y:31765,ptovrint:False,ptlb:Purple Color,ptin:_PurpleColor,varname:node_1208,prsc:2,glob:False,c1:0.8626313,c2:0.5040008,c3:0.8676471,c4:1;n:type:ShaderForge.SFN_Multiply,id:7632,x:28944,y:31922,varname:node_7632,prsc:2|A-3469-OUT,B-3008-OUT;n:type:ShaderForge.SFN_Color,id:1904,x:29131,y:31922,ptovrint:False,ptlb:White Color,ptin:_WhiteColor,varname:node_1473,prsc:2,glob:False,c1:1,c2:1,c3:1,c4:1;n:type:ShaderForge.SFN_Subtract,id:293,x:28357,y:32285,varname:node_293,prsc:2|A-9743-OUT,B-1289-OUT;n:type:ShaderForge.SFN_Multiply,id:8922,x:27798,y:32520,varname:node_8922,prsc:2|A-2099-R,B-2099-G;n:type:ShaderForge.SFN_Multiply,id:3469,x:27956,y:32520,cmnt:White,varname:node_3469,prsc:2|A-2099-B,B-8922-OUT;n:type:ShaderForge.SFN_Add,id:1289,x:28265,y:31750,varname:node_1289,prsc:2|A-4199-OUT,B-4133-OUT;n:type:ShaderForge.SFN_Clamp01,id:6555,x:28514,y:32285,cmnt:Red,varname:node_6555,prsc:2|IN-293-OUT;n:type:ShaderForge.SFN_Add,id:1063,x:29515,y:31620,varname:node_1063,prsc:2|A-1302-OUT,B-4658-OUT,C-9207-OUT,D-346-OUT,E-8474-OUT;n:type:ShaderForge.SFN_Add,id:9405,x:29749,y:31837,varname:node_9405,prsc:2|A-1063-OUT,B-8680-OUT,C-3197-OUT,D-6132-OUT;n:type:ShaderForge.SFN_Subtract,id:9425,x:28356,y:32416,varname:node_9425,prsc:2|A-9121-OUT,B-4685-OUT;n:type:ShaderForge.SFN_Clamp01,id:5793,x:28514,y:32416,cmnt:Green,varname:node_5793,prsc:2|IN-9425-OUT;n:type:ShaderForge.SFN_Add,id:4685,x:28265,y:31883,varname:node_4685,prsc:2|A-9700-OUT,B-4133-OUT;n:type:ShaderForge.SFN_Color,id:8105,x:29131,y:32338,ptovrint:False,ptlb:Green Color,ptin:_GreenColor,varname:node_8663,prsc:2,glob:False,c1:0.5909864,c2:0.9044118,c3:0.5652574,c4:1;n:type:ShaderForge.SFN_Multiply,id:1992,x:28947,y:32378,varname:node_1992,prsc:2|A-1513-OUT,B-5793-OUT;n:type:ShaderForge.SFN_Add,id:1259,x:28265,y:32016,varname:node_1259,prsc:2|A-4199-OUT,B-9700-OUT;n:type:ShaderForge.SFN_Subtract,id:9387,x:28356,y:32559,varname:node_9387,prsc:2|A-8685-OUT,B-1259-OUT;n:type:ShaderForge.SFN_Clamp01,id:2528,x:28514,y:32559,cmnt:Blue,varname:node_2528,prsc:2|IN-9387-OUT;n:type:ShaderForge.SFN_Tex2d,id:1375,x:29869,y:31607,ptovrint:False,ptlb:Diffuse_copy,ptin:_Diffuse_copy,varname:_Diffuse_copy,prsc:2,tex:62cc0e4d4e0eb0146b6b8c13668535fb,ntxv:0,isnm:False;n:type:ShaderForge.SFN_Add,id:8260,x:27956,y:32738,varname:node_8260,prsc:2|A-2099-R,B-2099-G,C-2099-B;n:type:ShaderForge.SFN_Lerp,id:2840,x:30068,y:31855,varname:node_2840,prsc:2|A-1375-RGB,B-9405-OUT,T-7492-OUT;n:type:ShaderForge.SFN_Clamp01,id:5252,x:28126,y:32758,varname:node_5252,prsc:2|IN-8260-OUT;n:type:ShaderForge.SFN_SwitchProperty,id:3360,x:28739,y:31278,ptovrint:False,ptlb:Use Black,ptin:_UseBlack,varname:node_9320,prsc:2,on:True|A-1404-OUT,B-2964-OUT;n:type:ShaderForge.SFN_Vector1,id:1404,x:29115,y:32074,varname:node_1404,prsc:2,v1:0;n:type:ShaderForge.SFN_SwitchProperty,id:3289,x:28739,y:31432,ptovrint:False,ptlb:Use Cyan,ptin:_UseCyan,varname:_UseBlack_copy,prsc:2,on:True|A-1404-OUT,B-2964-OUT;n:type:ShaderForge.SFN_SwitchProperty,id:5047,x:28739,y:31605,ptovrint:False,ptlb:Use Yellow,ptin:_UseYellow,varname:_UseCyan_copy,prsc:2,on:True|A-1404-OUT,B-2964-OUT;n:type:ShaderForge.SFN_SwitchProperty,id:1531,x:28739,y:31769,ptovrint:False,ptlb:Use Purple,ptin:_UsePurple,varname:_UseCyan_copy_copy,prsc:2,on:True|A-1404-OUT,B-2964-OUT;n:type:ShaderForge.SFN_SwitchProperty,id:3008,x:28739,y:31922,ptovrint:False,ptlb:Use White,ptin:_UseWhite,varname:_UseCyan_copy_copy_copy,prsc:2,on:True|A-1404-OUT,B-2964-OUT;n:type:ShaderForge.SFN_SwitchProperty,id:495,x:28724,y:32216,ptovrint:False,ptlb:Use Red,ptin:_UseRed,varname:_UseWhite_copy,prsc:2,on:True|A-1404-OUT,B-2964-OUT;n:type:ShaderForge.SFN_SwitchProperty,id:1513,x:28724,y:32403,ptovrint:False,ptlb:Use Green,ptin:_UseGreen,varname:_UseRed_copy,prsc:2,on:True|A-1404-OUT,B-2964-OUT;n:type:ShaderForge.SFN_SwitchProperty,id:6841,x:28724,y:32574,ptovrint:False,ptlb:Use Blue,ptin:_UseBlue,varname:_UseGreen_copy,prsc:2,on:True|A-1404-OUT,B-2964-OUT;n:type:ShaderForge.SFN_Vector1,id:2964,x:28972,y:32057,varname:node_2964,prsc:2,v1:1;n:type:ShaderForge.SFN_Multiply,id:6132,x:29310,y:32515,varname:node_6132,prsc:2|A-3350-RGB,B-9587-OUT;n:type:ShaderForge.SFN_Multiply,id:3197,x:29315,y:32320,varname:node_3197,prsc:2|A-8105-RGB,B-1992-OUT;n:type:ShaderForge.SFN_Multiply,id:8680,x:29315,y:32144,varname:node_8680,prsc:2|A-7707-RGB,B-5900-OUT;n:type:ShaderForge.SFN_Multiply,id:8474,x:29296,y:31911,varname:node_8474,prsc:2|A-1904-RGB,B-7632-OUT;n:type:ShaderForge.SFN_Multiply,id:346,x:29296,y:31765,varname:node_346,prsc:2|A-2655-RGB,B-3112-OUT;n:type:ShaderForge.SFN_Multiply,id:9207,x:29296,y:31614,varname:node_9207,prsc:2|A-6921-RGB,B-4224-OUT;n:type:ShaderForge.SFN_Multiply,id:4658,x:29296,y:31450,varname:node_4658,prsc:2|A-1288-RGB,B-2593-OUT;n:type:ShaderForge.SFN_Multiply,id:1302,x:29296,y:31268,varname:node_1302,prsc:2|A-6608-RGB,B-4529-OUT;n:type:ShaderForge.SFN_Multiply,id:6741,x:29303,y:30564,varname:node_6741,prsc:2|A-7859-OUT,B-3360-OUT;n:type:ShaderForge.SFN_Multiply,id:3646,x:29303,y:30707,varname:node_3646,prsc:2|A-9700-OUT,B-3289-OUT;n:type:ShaderForge.SFN_Multiply,id:1633,x:29303,y:30834,varname:node_1633,prsc:2|A-4133-OUT,B-5047-OUT;n:type:ShaderForge.SFN_Multiply,id:7550,x:29303,y:30969,varname:node_7550,prsc:2|A-4199-OUT,B-1531-OUT;n:type:ShaderForge.SFN_Multiply,id:7868,x:29495,y:30564,varname:node_7868,prsc:2|A-3469-OUT,B-3008-OUT;n:type:ShaderForge.SFN_Multiply,id:8413,x:29495,y:30707,varname:node_8413,prsc:2|A-6555-OUT,B-495-OUT;n:type:ShaderForge.SFN_Multiply,id:9397,x:29495,y:30834,varname:node_9397,prsc:2|A-5793-OUT,B-1513-OUT;n:type:ShaderForge.SFN_Multiply,id:4799,x:29495,y:30969,varname:node_4799,prsc:2|A-2528-OUT,B-6841-OUT;n:type:ShaderForge.SFN_Add,id:5693,x:29730,y:30548,varname:node_5693,prsc:2|A-6741-OUT,B-7868-OUT,C-3646-OUT,D-8413-OUT,E-1633-OUT;n:type:ShaderForge.SFN_Add,id:7492,x:29730,y:30707,varname:node_7492,prsc:2|A-5693-OUT,B-9397-OUT,C-7550-OUT,D-4799-OUT;n:type:ShaderForge.SFN_Multiply,id:4529,x:28931,y:31268,varname:node_4529,prsc:2|A-3360-OUT,B-7859-OUT;proporder:83-3630-7181-4544-5426-7799-2431-2099-8745-7707-3350-6608-1288-6921-2655-1904-8105-1375-3360-3289-5047-1531-3008-495-1513-6841;pass:END;sub:END;*/

Shader "Shader Forge/Examples/Masked_Environment_Shader" {
    Properties {
        _Normals ("Normals", 2D) = "bump" {}
        _Reach ("Reach", Range(0, 1)) = 0.5
        _Smoothness ("Smoothness", Range(0, 0.5)) = 0.025
        _MinLight ("MinLight", Range(0, 1)) = 0
        _MaxLight ("MaxLight", Range(0, 1)) = 1
        _OutlineColor ("OutlineColor", Color) = (0,0,0,1)
        _Outline ("Outline", Range(0, 1)) = 0
        _Masks ("Masks", 2D) = "white" {}
        [MaterialToggle] _UseMasks ("UseMasks", Float ) = 0.6235294
        _RedColor ("Red Color", Color) = (0.7352941,0.1946367,0.1946367,1)
        _BlueColor ("Blue Color", Color) = (0.2869585,0.2698962,0.7647059,1)
        _BlackColor ("Black Color", Color) = (0.4338235,0.3437589,0.1499243,1)
        _CyanColor ("Cyan Color", Color) = (0.1342993,0.5642971,0.6764706,1)
        _YellowColor ("Yellow Color", Color) = (1,0.9407708,0.4632353,1)
        _PurpleColor ("Purple Color", Color) = (0.8626313,0.5040008,0.8676471,1)
        _WhiteColor ("White Color", Color) = (1,1,1,1)
        _GreenColor ("Green Color", Color) = (0.5909864,0.9044118,0.5652574,1)
        _Diffuse_copy ("Diffuse_copy", 2D) = "white" {}
        [MaterialToggle] _UseBlack ("Use Black", Float ) = 1
        [MaterialToggle] _UseCyan ("Use Cyan", Float ) = 1
        [MaterialToggle] _UseYellow ("Use Yellow", Float ) = 1
        [MaterialToggle] _UsePurple ("Use Purple", Float ) = 1
        [MaterialToggle] _UseWhite ("Use White", Float ) = 1
        [MaterialToggle] _UseRed ("Use Red", Float ) = 1
        [MaterialToggle] _UseGreen ("Use Green", Float ) = 1
        [MaterialToggle] _UseBlue ("Use Blue", Float ) = 1
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
            uniform sampler2D _Masks; uniform float4 _Masks_ST;
            uniform fixed _UseMasks;
            uniform float4 _RedColor;
            uniform float4 _BlueColor;
            uniform float4 _BlackColor;
            uniform float4 _CyanColor;
            uniform float4 _YellowColor;
            uniform float4 _PurpleColor;
            uniform float4 _WhiteColor;
            uniform float4 _GreenColor;
            uniform sampler2D _Diffuse_copy; uniform float4 _Diffuse_copy_ST;
            uniform fixed _UseBlack;
            uniform fixed _UseCyan;
            uniform fixed _UseYellow;
            uniform fixed _UsePurple;
            uniform fixed _UseWhite;
            uniform fixed _UseRed;
            uniform fixed _UseGreen;
            uniform fixed _UseBlue;
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
                float4 _Diffuse_copy_var = tex2D(_Diffuse_copy,TRANSFORM_TEX(i.uv0, _Diffuse_copy));
                float node_1404 = 0.0;
                float node_2964 = 1.0;
                float _UseBlack_var = lerp( node_1404, node_2964, _UseBlack );
                float4 _Masks_var = tex2D(_Masks,TRANSFORM_TEX(i.uv0, _Masks));
                float node_7859 = (1.0 - saturate((_Masks_var.r+_Masks_var.g+_Masks_var.b))); // Black
                float3 node_1302 = (_BlackColor.rgb*(_UseBlack_var*node_7859));
                float _UseCyan_var = lerp( node_1404, node_2964, _UseCyan );
                float node_3469 = (_Masks_var.b*(_Masks_var.r*_Masks_var.g)); // White
                float node_9121 = (_Masks_var.g-node_3469); // Green -White
                float node_8685 = (_Masks_var.b-node_3469); // Blue -White
                float node_9700 = (node_9121*node_8685); // Cyan
                float3 node_4658 = (_CyanColor.rgb*(_UseCyan_var*node_9700));
                float _UseYellow_var = lerp( node_1404, node_2964, _UseYellow );
                float node_9743 = (_Masks_var.r-node_3469); // Red -White
                float node_4133 = (node_9743*node_9121); // Yellow
                float3 node_9207 = (_YellowColor.rgb*(_UseYellow_var*node_4133));
                float _UsePurple_var = lerp( node_1404, node_2964, _UsePurple );
                float node_4199 = (node_9743*node_8685); // Purple
                float3 node_346 = (_PurpleColor.rgb*(_UsePurple_var*node_4199));
                float _UseWhite_var = lerp( node_1404, node_2964, _UseWhite );
                float3 node_8474 = (_WhiteColor.rgb*(node_3469*_UseWhite_var));
                float _UseRed_var = lerp( node_1404, node_2964, _UseRed );
                float node_6555 = saturate((node_9743-(node_4199+node_4133))); // Red
                float3 node_8680 = (_RedColor.rgb*(_UseRed_var*node_6555));
                float _UseGreen_var = lerp( node_1404, node_2964, _UseGreen );
                float node_5793 = saturate((node_9121-(node_9700+node_4133))); // Green
                float3 node_3197 = (_GreenColor.rgb*(_UseGreen_var*node_5793));
                float node_2528 = saturate((node_8685-(node_4199+node_9700))); // Blue
                float _UseBlue_var = lerp( node_1404, node_2964, _UseBlue );
                float3 node_6132 = (_BlueColor.rgb*(node_2528*_UseBlue_var));
                float node_7492 = (((node_7859*_UseBlack_var)+(node_3469*_UseWhite_var)+(node_9700*_UseCyan_var)+(node_6555*_UseRed_var)+(node_4133*_UseYellow_var))+(node_5793*_UseGreen_var)+(node_4199*_UsePurple_var)+(node_2528*_UseBlue_var));
                float3 _UseMasks_var = lerp( _Diffuse_copy_var.rgb, lerp(_Diffuse_copy_var.rgb,((node_1302+node_4658+node_9207+node_346+node_8474)+node_8680+node_3197+node_6132),node_7492), _UseMasks );
                float3 emissive = (_UseMasks_var*UNITY_LIGHTMODEL_AMBIENT.rgb);
                float node_2384 = (_Reach-_Smoothness);
                float node_5169 = 0.0;
                float node_2105 = (lerp(_MinLight,_MaxLight,saturate((node_5169 + ( (0.5*dot(lightDirection,normalDirection)+0.5 - node_2384) * (1.0 - node_5169) ) / ((_Reach+_Smoothness) - node_2384))))*attenuation);
                float3 finalColor = emissive + (_LightColor0.rgb*(_UseMasks_var*node_2105));
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
            uniform sampler2D _Masks; uniform float4 _Masks_ST;
            uniform fixed _UseMasks;
            uniform float4 _RedColor;
            uniform float4 _BlueColor;
            uniform float4 _BlackColor;
            uniform float4 _CyanColor;
            uniform float4 _YellowColor;
            uniform float4 _PurpleColor;
            uniform float4 _WhiteColor;
            uniform float4 _GreenColor;
            uniform sampler2D _Diffuse_copy; uniform float4 _Diffuse_copy_ST;
            uniform fixed _UseBlack;
            uniform fixed _UseCyan;
            uniform fixed _UseYellow;
            uniform fixed _UsePurple;
            uniform fixed _UseWhite;
            uniform fixed _UseRed;
            uniform fixed _UseGreen;
            uniform fixed _UseBlue;
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
                float4 _Diffuse_copy_var = tex2D(_Diffuse_copy,TRANSFORM_TEX(i.uv0, _Diffuse_copy));
                float node_1404 = 0.0;
                float node_2964 = 1.0;
                float _UseBlack_var = lerp( node_1404, node_2964, _UseBlack );
                float4 _Masks_var = tex2D(_Masks,TRANSFORM_TEX(i.uv0, _Masks));
                float node_7859 = (1.0 - saturate((_Masks_var.r+_Masks_var.g+_Masks_var.b))); // Black
                float3 node_1302 = (_BlackColor.rgb*(_UseBlack_var*node_7859));
                float _UseCyan_var = lerp( node_1404, node_2964, _UseCyan );
                float node_3469 = (_Masks_var.b*(_Masks_var.r*_Masks_var.g)); // White
                float node_9121 = (_Masks_var.g-node_3469); // Green -White
                float node_8685 = (_Masks_var.b-node_3469); // Blue -White
                float node_9700 = (node_9121*node_8685); // Cyan
                float3 node_4658 = (_CyanColor.rgb*(_UseCyan_var*node_9700));
                float _UseYellow_var = lerp( node_1404, node_2964, _UseYellow );
                float node_9743 = (_Masks_var.r-node_3469); // Red -White
                float node_4133 = (node_9743*node_9121); // Yellow
                float3 node_9207 = (_YellowColor.rgb*(_UseYellow_var*node_4133));
                float _UsePurple_var = lerp( node_1404, node_2964, _UsePurple );
                float node_4199 = (node_9743*node_8685); // Purple
                float3 node_346 = (_PurpleColor.rgb*(_UsePurple_var*node_4199));
                float _UseWhite_var = lerp( node_1404, node_2964, _UseWhite );
                float3 node_8474 = (_WhiteColor.rgb*(node_3469*_UseWhite_var));
                float _UseRed_var = lerp( node_1404, node_2964, _UseRed );
                float node_6555 = saturate((node_9743-(node_4199+node_4133))); // Red
                float3 node_8680 = (_RedColor.rgb*(_UseRed_var*node_6555));
                float _UseGreen_var = lerp( node_1404, node_2964, _UseGreen );
                float node_5793 = saturate((node_9121-(node_9700+node_4133))); // Green
                float3 node_3197 = (_GreenColor.rgb*(_UseGreen_var*node_5793));
                float node_2528 = saturate((node_8685-(node_4199+node_9700))); // Blue
                float _UseBlue_var = lerp( node_1404, node_2964, _UseBlue );
                float3 node_6132 = (_BlueColor.rgb*(node_2528*_UseBlue_var));
                float node_7492 = (((node_7859*_UseBlack_var)+(node_3469*_UseWhite_var)+(node_9700*_UseCyan_var)+(node_6555*_UseRed_var)+(node_4133*_UseYellow_var))+(node_5793*_UseGreen_var)+(node_4199*_UsePurple_var)+(node_2528*_UseBlue_var));
                float3 _UseMasks_var = lerp( _Diffuse_copy_var.rgb, lerp(_Diffuse_copy_var.rgb,((node_1302+node_4658+node_9207+node_346+node_8474)+node_8680+node_3197+node_6132),node_7492), _UseMasks );
                float node_2384 = (_Reach-_Smoothness);
                float node_5169 = 0.0;
                float node_2105 = (lerp(_MinLight,_MaxLight,saturate((node_5169 + ( (0.5*dot(lightDirection,normalDirection)+0.5 - node_2384) * (1.0 - node_5169) ) / ((_Reach+_Smoothness) - node_2384))))*attenuation);
                float3 finalColor = (_LightColor0.rgb*(_UseMasks_var*node_2105));
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
            uniform fixed _UseMasks;
            uniform float4 _RedColor;
            uniform float4 _BlueColor;
            uniform float4 _BlackColor;
            uniform float4 _CyanColor;
            uniform float4 _YellowColor;
            uniform float4 _PurpleColor;
            uniform float4 _WhiteColor;
            uniform float4 _GreenColor;
            uniform sampler2D _Diffuse_copy; uniform float4 _Diffuse_copy_ST;
            uniform fixed _UseBlack;
            uniform fixed _UseCyan;
            uniform fixed _UseYellow;
            uniform fixed _UsePurple;
            uniform fixed _UseWhite;
            uniform fixed _UseRed;
            uniform fixed _UseGreen;
            uniform fixed _UseBlue;
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
                
                float4 _Diffuse_copy_var = tex2D(_Diffuse_copy,TRANSFORM_TEX(i.uv0, _Diffuse_copy));
                float node_1404 = 0.0;
                float node_2964 = 1.0;
                float _UseBlack_var = lerp( node_1404, node_2964, _UseBlack );
                float4 _Masks_var = tex2D(_Masks,TRANSFORM_TEX(i.uv0, _Masks));
                float node_7859 = (1.0 - saturate((_Masks_var.r+_Masks_var.g+_Masks_var.b))); // Black
                float3 node_1302 = (_BlackColor.rgb*(_UseBlack_var*node_7859));
                float _UseCyan_var = lerp( node_1404, node_2964, _UseCyan );
                float node_3469 = (_Masks_var.b*(_Masks_var.r*_Masks_var.g)); // White
                float node_9121 = (_Masks_var.g-node_3469); // Green -White
                float node_8685 = (_Masks_var.b-node_3469); // Blue -White
                float node_9700 = (node_9121*node_8685); // Cyan
                float3 node_4658 = (_CyanColor.rgb*(_UseCyan_var*node_9700));
                float _UseYellow_var = lerp( node_1404, node_2964, _UseYellow );
                float node_9743 = (_Masks_var.r-node_3469); // Red -White
                float node_4133 = (node_9743*node_9121); // Yellow
                float3 node_9207 = (_YellowColor.rgb*(_UseYellow_var*node_4133));
                float _UsePurple_var = lerp( node_1404, node_2964, _UsePurple );
                float node_4199 = (node_9743*node_8685); // Purple
                float3 node_346 = (_PurpleColor.rgb*(_UsePurple_var*node_4199));
                float _UseWhite_var = lerp( node_1404, node_2964, _UseWhite );
                float3 node_8474 = (_WhiteColor.rgb*(node_3469*_UseWhite_var));
                float _UseRed_var = lerp( node_1404, node_2964, _UseRed );
                float node_6555 = saturate((node_9743-(node_4199+node_4133))); // Red
                float3 node_8680 = (_RedColor.rgb*(_UseRed_var*node_6555));
                float _UseGreen_var = lerp( node_1404, node_2964, _UseGreen );
                float node_5793 = saturate((node_9121-(node_9700+node_4133))); // Green
                float3 node_3197 = (_GreenColor.rgb*(_UseGreen_var*node_5793));
                float node_2528 = saturate((node_8685-(node_4199+node_9700))); // Blue
                float _UseBlue_var = lerp( node_1404, node_2964, _UseBlue );
                float3 node_6132 = (_BlueColor.rgb*(node_2528*_UseBlue_var));
                float node_7492 = (((node_7859*_UseBlack_var)+(node_3469*_UseWhite_var)+(node_9700*_UseCyan_var)+(node_6555*_UseRed_var)+(node_4133*_UseYellow_var))+(node_5793*_UseGreen_var)+(node_4199*_UsePurple_var)+(node_2528*_UseBlue_var));
                float3 _UseMasks_var = lerp( _Diffuse_copy_var.rgb, lerp(_Diffuse_copy_var.rgb,((node_1302+node_4658+node_9207+node_346+node_8474)+node_8680+node_3197+node_6132),node_7492), _UseMasks );
                o.Emission = (_UseMasks_var*UNITY_LIGHTMODEL_AMBIENT.rgb);
                
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
