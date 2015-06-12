// Shader created with Shader Forge v1.13 
// Shader Forge (c) Neat Corporation / Joachim Holmer - http://www.acegikmo.com/shaderforge/
// Note: Manually altering this data may prevent you from opening it in Shader Forge
/*SF_DATA;ver:1.13;sub:START;pass:START;ps:flbk:,lico:1,lgpr:1,nrmq:1,nrsp:0,limd:0,spmd:1,trmd:0,grmd:0,uamb:True,mssp:True,bkdf:True,rprd:False,enco:False,rmgx:True,rpth:0,hqsc:True,hqlp:False,tesm:0,bsrc:0,bdst:1,culm:0,dpts:2,wrdp:True,dith:0,ufog:False,aust:True,igpj:False,qofs:0,qpre:1,rntp:1,fgom:False,fgoc:False,fgod:False,fgor:False,fgmd:0,fgcr:0.5,fgcg:0.5,fgcb:0.5,fgca:1,fgde:0.01,fgrn:0,fgrf:300,ofsf:0,ofsu:0,f2p0:False;n:type:ShaderForge.SFN_Final,id:0,x:34329,y:31962,varname:node_0,prsc:2|normal-83-RGB,emission-5545-OUT,custl-64-OUT,olwid-2431-OUT,olcol-7799-RGB;n:type:ShaderForge.SFN_LightAttenuation,id:37,x:32964,y:32209,varname:node_37,prsc:2;n:type:ShaderForge.SFN_Dot,id:40,x:31764,y:32587,varname:node_40,prsc:2,dt:4|A-42-OUT,B-41-OUT;n:type:ShaderForge.SFN_NormalVector,id:41,x:31554,y:32638,prsc:2,pt:True;n:type:ShaderForge.SFN_LightVector,id:42,x:31409,y:32543,varname:node_42,prsc:2;n:type:ShaderForge.SFN_LightColor,id:63,x:33860,y:32155,varname:node_63,prsc:2;n:type:ShaderForge.SFN_Multiply,id:64,x:34056,y:32155,varname:node_64,prsc:2|A-63-RGB,B-84-OUT;n:type:ShaderForge.SFN_Tex2d,id:83,x:34056,y:31966,ptovrint:False,ptlb:Normals,ptin:_Normals,varname:_Normals,prsc:2,tex:a4900d3a9fde56248bc38b4521bdb13a,ntxv:3,isnm:True;n:type:ShaderForge.SFN_Multiply,id:84,x:33712,y:32143,cmnt:Diffuse Light,varname:node_84,prsc:2|A-8745-OUT,B-2105-OUT;n:type:ShaderForge.SFN_AmbientLight,id:187,x:33323,y:32415,varname:node_187,prsc:2;n:type:ShaderForge.SFN_RemapRangeAdvanced,id:1026,x:32197,y:32697,varname:node_1026,prsc:2|IN-40-OUT,IMIN-2384-OUT,IMAX-9128-OUT,OMIN-5169-OUT,OMAX-3044-OUT;n:type:ShaderForge.SFN_Slider,id:4544,x:32509,y:32314,ptovrint:False,ptlb:MinLight,ptin:_MinLight,varname:node_4544,prsc:2,min:0,cur:0,max:1;n:type:ShaderForge.SFN_Slider,id:5426,x:32521,y:32411,ptovrint:False,ptlb:MaxLight,ptin:_MaxLight,varname:_MinLight_copy,prsc:2,min:0,cur:1,max:1;n:type:ShaderForge.SFN_Slider,id:3630,x:31336,y:33021,ptovrint:False,ptlb:Reach,ptin:_Reach,varname:node_3630,prsc:2,min:0,cur:0.5,max:1;n:type:ShaderForge.SFN_Slider,id:7181,x:31336,y:33116,ptovrint:False,ptlb:Smoothness,ptin:_Smoothness,varname:_Value_copy,prsc:2,min:0,cur:0.025,max:0.5;n:type:ShaderForge.SFN_Add,id:9128,x:31776,y:33050,varname:node_9128,prsc:2|A-3630-OUT,B-7181-OUT;n:type:ShaderForge.SFN_Subtract,id:2384,x:31776,y:32906,varname:node_2384,prsc:2|A-3630-OUT,B-7181-OUT;n:type:ShaderForge.SFN_Clamp01,id:1648,x:32372,y:32697,varname:node_1648,prsc:2|IN-1026-OUT;n:type:ShaderForge.SFN_Vector1,id:5169,x:32170,y:32843,varname:node_5169,prsc:2,v1:0;n:type:ShaderForge.SFN_Vector1,id:3044,x:32168,y:32906,varname:node_3044,prsc:2,v1:1;n:type:ShaderForge.SFN_Lerp,id:6558,x:32995,y:32384,varname:node_6558,prsc:2|A-4544-OUT,B-5426-OUT,T-1648-OUT;n:type:ShaderForge.SFN_Slider,id:2431,x:33847,y:32462,ptovrint:False,ptlb:Outline,ptin:_Outline,varname:node_2431,prsc:2,min:0,cur:0,max:1;n:type:ShaderForge.SFN_Color,id:7799,x:34004,y:32554,ptovrint:False,ptlb:OutlineColor,ptin:_OutlineColor,varname:node_7799,prsc:2,glob:False,c1:0,c2:0,c3:0,c4:1;n:type:ShaderForge.SFN_Multiply,id:2105,x:33252,y:32160,varname:node_2105,prsc:2|A-6558-OUT,B-37-OUT;n:type:ShaderForge.SFN_Vector1,id:5483,x:33323,y:32547,varname:node_5483,prsc:2,v1:0;n:type:ShaderForge.SFN_Clamp,id:7728,x:33640,y:32350,varname:node_7728,prsc:2|IN-2105-OUT,MIN-187-RGB,MAX-36-OUT;n:type:ShaderForge.SFN_Vector1,id:36,x:33523,y:32507,varname:node_36,prsc:2,v1:1;n:type:ShaderForge.SFN_Multiply,id:5545,x:33815,y:31878,varname:node_5545,prsc:2|A-8745-OUT,B-187-RGB;n:type:ShaderForge.SFN_Tex2d,id:2099,x:27759,y:32323,ptovrint:False,ptlb:Masks,ptin:_Masks,varname:_Diffuse,prsc:2,tex:12d24442a1666204a8e9ccf941281def,ntxv:0,isnm:False;n:type:ShaderForge.SFN_SwitchProperty,id:8745,x:31726,y:32096,ptovrint:False,ptlb:UseMasks,ptin:_UseMasks,varname:node_1905,prsc:2,on:False|A-1375-RGB,B-2840-OUT;n:type:ShaderForge.SFN_Multiply,id:4199,x:28569,y:31755,cmnt:Purple,varname:node_4199,prsc:2|A-9743-OUT,B-8685-OUT;n:type:ShaderForge.SFN_Multiply,id:4133,x:28569,y:31605,cmnt:Yellow,varname:node_4133,prsc:2|A-9743-OUT,B-9121-OUT;n:type:ShaderForge.SFN_Multiply,id:9700,x:28565,y:31463,cmnt:Cyan,varname:node_9700,prsc:2|A-9121-OUT,B-8685-OUT;n:type:ShaderForge.SFN_Clamp01,id:955,x:28395,y:31316,varname:node_955,prsc:2|IN-7141-OUT;n:type:ShaderForge.SFN_OneMinus,id:7859,x:28565,y:31316,cmnt:Black,varname:node_7859,prsc:2|IN-955-OUT;n:type:ShaderForge.SFN_Color,id:7707,x:29131,y:32166,ptovrint:False,ptlb:Red Color,ptin:_RedColor,varname:node_8870,prsc:2,glob:False,c1:0.7352941,c2:0.1946367,c3:0.1946367,c4:1;n:type:ShaderForge.SFN_Multiply,id:5900,x:28947,y:32216,varname:node_5900,prsc:2|A-495-OUT,B-6555-OUT;n:type:ShaderForge.SFN_Color,id:3350,x:29131,y:32544,ptovrint:False,ptlb:Blue Color,ptin:_BlueColor,varname:node_6831,prsc:2,glob:False,c1:0.2869585,c2:0.2698962,c3:0.7647059,c4:1;n:type:ShaderForge.SFN_Multiply,id:9587,x:28947,y:32574,varname:node_9587,prsc:2|A-2528-OUT,B-6841-OUT;n:type:ShaderForge.SFN_Color,id:6608,x:29131,y:31268,ptovrint:False,ptlb:Black Color,ptin:_BlackColor,varname:node_1995,prsc:2,glob:False,c1:0.4338235,c2:0.3437589,c3:0.1499243,c4:1;n:type:ShaderForge.SFN_Color,id:1288,x:29131,y:31440,ptovrint:False,ptlb:Cyan Color,ptin:_CyanColor,varname:node_5182,prsc:2,glob:False,c1:0.1342993,c2:0.5642971,c3:0.6764706,c4:1;n:type:ShaderForge.SFN_Multiply,id:2593,x:28931,y:31450,varname:node_2593,prsc:2|A-3289-OUT,B-9700-OUT;n:type:ShaderForge.SFN_Color,id:6921,x:29131,y:31604,ptovrint:False,ptlb:Yellow Color,ptin:_YellowColor,varname:node_5330,prsc:2,glob:False,c1:1,c2:0.9407708,c3:0.4632353,c4:1;n:type:ShaderForge.SFN_Multiply,id:4224,x:28944,y:31605,varname:node_4224,prsc:2|A-5047-OUT,B-4133-OUT;n:type:ShaderForge.SFN_Add,id:7141,x:28176,y:31316,varname:node_7141,prsc:2|A-2099-R,B-2099-G,C-2099-B;n:type:ShaderForge.SFN_Subtract,id:9743,x:28135,y:32285,cmnt:Red -White,varname:node_9743,prsc:2|A-2099-R,B-3469-OUT;n:type:ShaderForge.SFN_Subtract,id:9121,x:28135,y:32421,cmnt:Green -White,varname:node_9121,prsc:2|A-2099-G,B-3469-OUT;n:type:ShaderForge.SFN_Subtract,id:8685,x:28135,y:32560,cmnt:Blue -White,varname:node_8685,prsc:2|A-2099-B,B-3469-OUT;n:type:ShaderForge.SFN_Multiply,id:3112,x:28944,y:31769,varname:node_3112,prsc:2|A-1531-OUT,B-4199-OUT;n:type:ShaderForge.SFN_Color,id:2655,x:29131,y:31765,ptovrint:False,ptlb:Purple Color,ptin:_PurpleColor,varname:node_1208,prsc:2,glob:False,c1:0.8626313,c2:0.5040008,c3:0.8676471,c4:1;n:type:ShaderForge.SFN_Multiply,id:7632,x:28944,y:31922,varname:node_7632,prsc:2|A-3469-OUT,B-3008-OUT;n:type:ShaderForge.SFN_Color,id:1904,x:29131,y:31922,ptovrint:False,ptlb:White Color,ptin:_WhiteColor,varname:node_1473,prsc:2,glob:False,c1:1,c2:1,c3:1,c4:1;n:type:ShaderForge.SFN_Subtract,id:293,x:28357,y:32285,varname:node_293,prsc:2|A-9743-OUT,B-1289-OUT;n:type:ShaderForge.SFN_Multiply,id:8922,x:27798,y:32520,varname:node_8922,prsc:2|A-2099-R,B-2099-G;n:type:ShaderForge.SFN_Multiply,id:3469,x:27956,y:32520,cmnt:White,varname:node_3469,prsc:2|A-2099-B,B-8922-OUT;n:type:ShaderForge.SFN_Add,id:1289,x:28265,y:31750,varname:node_1289,prsc:2|A-4199-OUT,B-4133-OUT;n:type:ShaderForge.SFN_Clamp01,id:6555,x:28514,y:32285,cmnt:Red,varname:node_6555,prsc:2|IN-293-OUT;n:type:ShaderForge.SFN_Add,id:1063,x:29515,y:31620,varname:node_1063,prsc:2|A-1302-OUT,B-4658-OUT,C-9207-OUT,D-346-OUT,E-8474-OUT;n:type:ShaderForge.SFN_Add,id:9405,x:29749,y:31837,varname:node_9405,prsc:2|A-1063-OUT,B-8680-OUT,C-3197-OUT,D-6132-OUT;n:type:ShaderForge.SFN_Subtract,id:9425,x:28356,y:32416,varname:node_9425,prsc:2|A-9121-OUT,B-4685-OUT;n:type:ShaderForge.SFN_Clamp01,id:5793,x:28514,y:32416,cmnt:Green,varname:node_5793,prsc:2|IN-9425-OUT;n:type:ShaderForge.SFN_Add,id:4685,x:28265,y:31883,varname:node_4685,prsc:2|A-9700-OUT,B-4133-OUT;n:type:ShaderForge.SFN_Color,id:8105,x:29131,y:32338,ptovrint:False,ptlb:Green Color,ptin:_GreenColor,varname:node_8663,prsc:2,glob:False,c1:0.5909864,c2:0.9044118,c3:0.5652574,c4:1;n:type:ShaderForge.SFN_Multiply,id:1992,x:28947,y:32378,varname:node_1992,prsc:2|A-1513-OUT,B-5793-OUT;n:type:ShaderForge.SFN_Add,id:1259,x:28265,y:32016,varname:node_1259,prsc:2|A-4199-OUT,B-9700-OUT;n:type:ShaderForge.SFN_Subtract,id:9387,x:28356,y:32559,varname:node_9387,prsc:2|A-8685-OUT,B-1259-OUT;n:type:ShaderForge.SFN_Clamp01,id:2528,x:28514,y:32559,cmnt:Blue,varname:node_2528,prsc:2|IN-9387-OUT;n:type:ShaderForge.SFN_Tex2d,id:1375,x:29869,y:31607,ptovrint:False,ptlb:Diffuse_copy,ptin:_Diffuse_copy,varname:_Diffuse_copy,prsc:2,tex:62cc0e4d4e0eb0146b6b8c13668535fb,ntxv:0,isnm:False;n:type:ShaderForge.SFN_Add,id:8260,x:27956,y:32738,varname:node_8260,prsc:2|A-2099-R,B-2099-G,C-2099-B;n:type:ShaderForge.SFN_Lerp,id:2840,x:30048,y:31843,varname:node_2840,prsc:2|A-1375-RGB,B-9405-OUT,T-7492-OUT;n:type:ShaderForge.SFN_Clamp01,id:5252,x:28126,y:32758,varname:node_5252,prsc:2|IN-8260-OUT;n:type:ShaderForge.SFN_SwitchProperty,id:3360,x:28739,y:31278,ptovrint:False,ptlb:Use Black,ptin:_UseBlack,varname:node_9320,prsc:2,on:True|A-1404-OUT,B-2964-OUT;n:type:ShaderForge.SFN_Vector1,id:1404,x:29115,y:32074,varname:node_1404,prsc:2,v1:0;n:type:ShaderForge.SFN_SwitchProperty,id:3289,x:28739,y:31432,ptovrint:False,ptlb:Use Cyan,ptin:_UseCyan,varname:_UseBlack_copy,prsc:2,on:True|A-1404-OUT,B-2964-OUT;n:type:ShaderForge.SFN_SwitchProperty,id:5047,x:28739,y:31605,ptovrint:False,ptlb:Use Yellow,ptin:_UseYellow,varname:_UseCyan_copy,prsc:2,on:True|A-1404-OUT,B-2964-OUT;n:type:ShaderForge.SFN_SwitchProperty,id:1531,x:28739,y:31769,ptovrint:False,ptlb:Use Purple,ptin:_UsePurple,varname:_UseCyan_copy_copy,prsc:2,on:True|A-1404-OUT,B-2964-OUT;n:type:ShaderForge.SFN_SwitchProperty,id:3008,x:28739,y:31922,ptovrint:False,ptlb:Use White,ptin:_UseWhite,varname:_UseCyan_copy_copy_copy,prsc:2,on:True|A-1404-OUT,B-2964-OUT;n:type:ShaderForge.SFN_SwitchProperty,id:495,x:28724,y:32216,ptovrint:False,ptlb:Use Red,ptin:_UseRed,varname:_UseWhite_copy,prsc:2,on:True|A-1404-OUT,B-2964-OUT;n:type:ShaderForge.SFN_SwitchProperty,id:1513,x:28724,y:32403,ptovrint:False,ptlb:Use Green,ptin:_UseGreen,varname:_UseRed_copy,prsc:2,on:True|A-1404-OUT,B-2964-OUT;n:type:ShaderForge.SFN_SwitchProperty,id:6841,x:28724,y:32574,ptovrint:False,ptlb:Use Blue,ptin:_UseBlue,varname:_UseGreen_copy,prsc:2,on:True|A-1404-OUT,B-2964-OUT;n:type:ShaderForge.SFN_Vector1,id:2964,x:28972,y:32057,varname:node_2964,prsc:2,v1:1;n:type:ShaderForge.SFN_Multiply,id:6132,x:29310,y:32515,varname:node_6132,prsc:2|A-3350-RGB,B-9587-OUT;n:type:ShaderForge.SFN_Multiply,id:3197,x:29315,y:32320,varname:node_3197,prsc:2|A-2172-OUT,B-1992-OUT;n:type:ShaderForge.SFN_Multiply,id:8680,x:29315,y:32133,varname:node_8680,prsc:2|A-7707-RGB,B-5900-OUT;n:type:ShaderForge.SFN_Multiply,id:8474,x:29296,y:31911,varname:node_8474,prsc:2|A-2577-OUT,B-7632-OUT;n:type:ShaderForge.SFN_Multiply,id:346,x:29296,y:31765,varname:node_346,prsc:2|A-2655-RGB,B-3112-OUT;n:type:ShaderForge.SFN_Multiply,id:9207,x:29296,y:31614,varname:node_9207,prsc:2|A-6921-RGB,B-4224-OUT;n:type:ShaderForge.SFN_Multiply,id:4658,x:29296,y:31450,varname:node_4658,prsc:2|A-1288-RGB,B-2593-OUT;n:type:ShaderForge.SFN_Multiply,id:1302,x:29296,y:31268,varname:node_1302,prsc:2|A-6608-RGB,B-4529-OUT;n:type:ShaderForge.SFN_Add,id:5693,x:29296,y:31073,varname:node_5693,prsc:2|A-4529-OUT,B-2593-OUT,C-4224-OUT,D-3112-OUT,E-7632-OUT;n:type:ShaderForge.SFN_Add,id:7492,x:29581,y:31072,varname:node_7492,prsc:2|A-5693-OUT,B-5900-OUT,C-1992-OUT,D-9587-OUT;n:type:ShaderForge.SFN_Multiply,id:4529,x:28931,y:31268,varname:node_4529,prsc:2|A-3360-OUT,B-7859-OUT;n:type:ShaderForge.SFN_Tex2d,id:1922,x:28336,y:30440,varname:node_1922,prsc:2,tex:e9df5b05ad051ce4cad905853c710bcd,ntxv:0,isnm:False|UVIN-8045-OUT,TEX-1024-TEX;n:type:ShaderForge.SFN_Multiply,id:6948,x:28739,y:30440,varname:node_6948,prsc:2|A-1085-OUT,B-1904-RGB;n:type:ShaderForge.SFN_Multiply,id:1085,x:28551,y:30440,varname:node_1085,prsc:2|A-1922-R,B-1922-G;n:type:ShaderForge.SFN_Tex2d,id:5648,x:28336,y:30271,varname:_HullWood_copy,prsc:2,tex:e9df5b05ad051ce4cad905853c710bcd,ntxv:0,isnm:False|UVIN-783-OUT,TEX-1024-TEX;n:type:ShaderForge.SFN_Tex2dAsset,id:1024,x:27616,y:30557,ptovrint:False,ptlb:Wood Merge,ptin:_WoodMerge,varname:node_1024,glob:False,tex:e9df5b05ad051ce4cad905853c710bcd,ntxv:0,isnm:False;n:type:ShaderForge.SFN_TexCoord,id:6620,x:27603,y:30267,varname:node_6620,prsc:2,uv:0;n:type:ShaderForge.SFN_Multiply,id:8045,x:28135,y:30440,varname:node_8045,prsc:2|A-6620-UVOUT,B-6002-OUT;n:type:ShaderForge.SFN_ValueProperty,id:6002,x:27965,y:30846,ptovrint:False,ptlb:Hull Tiling,ptin:_HullTiling,varname:node_6002,prsc:2,glob:False,v1:15;n:type:ShaderForge.SFN_Multiply,id:783,x:28135,y:30271,varname:node_783,prsc:2|A-6620-UVOUT,B-5985-OUT;n:type:ShaderForge.SFN_ValueProperty,id:5985,x:27953,y:30379,ptovrint:False,ptlb:Deck Tiling,ptin:_DeckTiling,varname:node_5985,prsc:2,glob:False,v1:1;n:type:ShaderForge.SFN_Multiply,id:9091,x:28551,y:30271,varname:node_9091,prsc:2|A-5648-R,B-5648-G;n:type:ShaderForge.SFN_Multiply,id:2172,x:28739,y:30271,varname:node_2172,prsc:2|A-9091-OUT,B-8105-RGB;n:type:ShaderForge.SFN_Multiply,id:4871,x:28135,y:30089,varname:node_4871,prsc:2|A-6620-UVOUT,B-3755-OUT;n:type:ShaderForge.SFN_Multiply,id:2675,x:28551,y:30089,varname:node_2675,prsc:2|A-8487-R,B-8487-G;n:type:ShaderForge.SFN_Multiply,id:4584,x:28739,y:30089,varname:node_4584,prsc:2|A-8487-G,B-7707-RGB;n:type:ShaderForge.SFN_ValueProperty,id:3755,x:27909,y:30253,ptovrint:False,ptlb:Board Tiling,ptin:_BoardTiling,varname:node_3755,prsc:2,glob:False,v1:1;n:type:ShaderForge.SFN_Tex2d,id:8487,x:28317,y:30077,varname:node_8487,prsc:2,tex:e9df5b05ad051ce4cad905853c710bcd,ntxv:0,isnm:False|UVIN-4871-OUT,TEX-1024-TEX;n:type:ShaderForge.SFN_Tex2d,id:9707,x:28336,y:30611,ptovrint:False,ptlb:Wood,ptin:_Wood,varname:node_9707,prsc:2,tex:3d3167b16cc4b1c44af73f09ce2a316e,ntxv:0,isnm:False|UVIN-8045-OUT;n:type:ShaderForge.SFN_ValueProperty,id:2176,x:28332,y:30879,ptovrint:False,ptlb:Wear Threshold,ptin:_WearThreshold,varname:node_2176,prsc:2,glob:False,v1:0.2;n:type:ShaderForge.SFN_Power,id:1881,x:28587,y:30860,varname:node_1881,prsc:2|VAL-1596-OUT,EXP-5240-OUT;n:type:ShaderForge.SFN_Add,id:1596,x:28491,y:30689,varname:node_1596,prsc:2|A-9707-R,B-2176-OUT;n:type:ShaderForge.SFN_ValueProperty,id:5240,x:28378,y:30990,ptovrint:False,ptlb:Wear Exp,ptin:_WearExp,varname:node_5240,prsc:2,glob:False,v1:4;n:type:ShaderForge.SFN_Clamp01,id:9567,x:28741,y:30879,varname:node_9567,prsc:2|IN-7702-OUT;n:type:ShaderForge.SFN_Lerp,id:2577,x:28904,y:30798,varname:node_2577,prsc:2|A-6948-OUT,B-9707-RGB,T-9567-OUT;n:type:ShaderForge.SFN_Subtract,id:7702,x:28673,y:30725,varname:node_7702,prsc:2|A-1881-OUT,B-2176-OUT;proporder:83-3630-7181-4544-5426-7799-2431-2099-8745-7707-3350-6608-1288-6921-2655-1904-8105-1375-3360-3289-5047-1531-3008-495-1513-6841-1024-6002-5985-3755-9707-2176-5240;pass:END;sub:END;*/

Shader "Shader Forge/Examples/Boat_Shader" {
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
        _WoodMerge ("Wood Merge", 2D) = "white" {}
        _HullTiling ("Hull Tiling", Float ) = 15
        _DeckTiling ("Deck Tiling", Float ) = 1
        _BoardTiling ("Board Tiling", Float ) = 1
        _Wood ("Wood", 2D) = "white" {}
        _WearThreshold ("Wear Threshold", Float ) = 0.2
        _WearExp ("Wear Exp", Float ) = 4
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
            uniform sampler2D _WoodMerge; uniform float4 _WoodMerge_ST;
            uniform float _HullTiling;
            uniform float _DeckTiling;
            uniform sampler2D _Wood; uniform float4 _Wood_ST;
            uniform float _WearThreshold;
            uniform float _WearExp;
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
                float4 _Masks_var = tex2D(_Masks,TRANSFORM_TEX(i.uv0, _Masks));
                float node_4529 = (lerp( node_1404, node_2964, _UseBlack )*(1.0 - saturate((_Masks_var.r+_Masks_var.g+_Masks_var.b))));
                float node_3469 = (_Masks_var.b*(_Masks_var.r*_Masks_var.g)); // White
                float node_9121 = (_Masks_var.g-node_3469); // Green -White
                float node_8685 = (_Masks_var.b-node_3469); // Blue -White
                float node_9700 = (node_9121*node_8685); // Cyan
                float node_2593 = (lerp( node_1404, node_2964, _UseCyan )*node_9700);
                float node_9743 = (_Masks_var.r-node_3469); // Red -White
                float node_4133 = (node_9743*node_9121); // Yellow
                float node_4224 = (lerp( node_1404, node_2964, _UseYellow )*node_4133);
                float node_4199 = (node_9743*node_8685); // Purple
                float node_3112 = (lerp( node_1404, node_2964, _UsePurple )*node_4199);
                float2 node_8045 = (i.uv0*_HullTiling);
                float4 node_1922 = tex2D(_WoodMerge,TRANSFORM_TEX(node_8045, _WoodMerge));
                float4 _Wood_var = tex2D(_Wood,TRANSFORM_TEX(node_8045, _Wood));
                float node_7632 = (node_3469*lerp( node_1404, node_2964, _UseWhite ));
                float node_5900 = (lerp( node_1404, node_2964, _UseRed )*saturate((node_9743-(node_4199+node_4133))));
                float2 node_783 = (i.uv0*_DeckTiling);
                float4 _HullWood_copy = tex2D(_WoodMerge,TRANSFORM_TEX(node_783, _WoodMerge));
                float node_1992 = (lerp( node_1404, node_2964, _UseGreen )*saturate((node_9121-(node_9700+node_4133))));
                float node_9587 = (saturate((node_8685-(node_4199+node_9700)))*lerp( node_1404, node_2964, _UseBlue ));
                float3 _UseMasks_var = lerp( _Diffuse_copy_var.rgb, lerp(_Diffuse_copy_var.rgb,(((_BlackColor.rgb*node_4529)+(_CyanColor.rgb*node_2593)+(_YellowColor.rgb*node_4224)+(_PurpleColor.rgb*node_3112)+(lerp(((node_1922.r*node_1922.g)*_WhiteColor.rgb),_Wood_var.rgb,saturate((pow((_Wood_var.r+_WearThreshold),_WearExp)-_WearThreshold)))*node_7632))+(_RedColor.rgb*node_5900)+(((_HullWood_copy.r*_HullWood_copy.g)*_GreenColor.rgb)*node_1992)+(_BlueColor.rgb*node_9587)),((node_4529+node_2593+node_4224+node_3112+node_7632)+node_5900+node_1992+node_9587)), _UseMasks );
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
            uniform sampler2D _WoodMerge; uniform float4 _WoodMerge_ST;
            uniform float _HullTiling;
            uniform float _DeckTiling;
            uniform sampler2D _Wood; uniform float4 _Wood_ST;
            uniform float _WearThreshold;
            uniform float _WearExp;
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
                float4 _Masks_var = tex2D(_Masks,TRANSFORM_TEX(i.uv0, _Masks));
                float node_4529 = (lerp( node_1404, node_2964, _UseBlack )*(1.0 - saturate((_Masks_var.r+_Masks_var.g+_Masks_var.b))));
                float node_3469 = (_Masks_var.b*(_Masks_var.r*_Masks_var.g)); // White
                float node_9121 = (_Masks_var.g-node_3469); // Green -White
                float node_8685 = (_Masks_var.b-node_3469); // Blue -White
                float node_9700 = (node_9121*node_8685); // Cyan
                float node_2593 = (lerp( node_1404, node_2964, _UseCyan )*node_9700);
                float node_9743 = (_Masks_var.r-node_3469); // Red -White
                float node_4133 = (node_9743*node_9121); // Yellow
                float node_4224 = (lerp( node_1404, node_2964, _UseYellow )*node_4133);
                float node_4199 = (node_9743*node_8685); // Purple
                float node_3112 = (lerp( node_1404, node_2964, _UsePurple )*node_4199);
                float2 node_8045 = (i.uv0*_HullTiling);
                float4 node_1922 = tex2D(_WoodMerge,TRANSFORM_TEX(node_8045, _WoodMerge));
                float4 _Wood_var = tex2D(_Wood,TRANSFORM_TEX(node_8045, _Wood));
                float node_7632 = (node_3469*lerp( node_1404, node_2964, _UseWhite ));
                float node_5900 = (lerp( node_1404, node_2964, _UseRed )*saturate((node_9743-(node_4199+node_4133))));
                float2 node_783 = (i.uv0*_DeckTiling);
                float4 _HullWood_copy = tex2D(_WoodMerge,TRANSFORM_TEX(node_783, _WoodMerge));
                float node_1992 = (lerp( node_1404, node_2964, _UseGreen )*saturate((node_9121-(node_9700+node_4133))));
                float node_9587 = (saturate((node_8685-(node_4199+node_9700)))*lerp( node_1404, node_2964, _UseBlue ));
                float3 _UseMasks_var = lerp( _Diffuse_copy_var.rgb, lerp(_Diffuse_copy_var.rgb,(((_BlackColor.rgb*node_4529)+(_CyanColor.rgb*node_2593)+(_YellowColor.rgb*node_4224)+(_PurpleColor.rgb*node_3112)+(lerp(((node_1922.r*node_1922.g)*_WhiteColor.rgb),_Wood_var.rgb,saturate((pow((_Wood_var.r+_WearThreshold),_WearExp)-_WearThreshold)))*node_7632))+(_RedColor.rgb*node_5900)+(((_HullWood_copy.r*_HullWood_copy.g)*_GreenColor.rgb)*node_1992)+(_BlueColor.rgb*node_9587)),((node_4529+node_2593+node_4224+node_3112+node_7632)+node_5900+node_1992+node_9587)), _UseMasks );
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
            uniform sampler2D _WoodMerge; uniform float4 _WoodMerge_ST;
            uniform float _HullTiling;
            uniform float _DeckTiling;
            uniform sampler2D _Wood; uniform float4 _Wood_ST;
            uniform float _WearThreshold;
            uniform float _WearExp;
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
                float4 _Masks_var = tex2D(_Masks,TRANSFORM_TEX(i.uv0, _Masks));
                float node_4529 = (lerp( node_1404, node_2964, _UseBlack )*(1.0 - saturate((_Masks_var.r+_Masks_var.g+_Masks_var.b))));
                float node_3469 = (_Masks_var.b*(_Masks_var.r*_Masks_var.g)); // White
                float node_9121 = (_Masks_var.g-node_3469); // Green -White
                float node_8685 = (_Masks_var.b-node_3469); // Blue -White
                float node_9700 = (node_9121*node_8685); // Cyan
                float node_2593 = (lerp( node_1404, node_2964, _UseCyan )*node_9700);
                float node_9743 = (_Masks_var.r-node_3469); // Red -White
                float node_4133 = (node_9743*node_9121); // Yellow
                float node_4224 = (lerp( node_1404, node_2964, _UseYellow )*node_4133);
                float node_4199 = (node_9743*node_8685); // Purple
                float node_3112 = (lerp( node_1404, node_2964, _UsePurple )*node_4199);
                float2 node_8045 = (i.uv0*_HullTiling);
                float4 node_1922 = tex2D(_WoodMerge,TRANSFORM_TEX(node_8045, _WoodMerge));
                float4 _Wood_var = tex2D(_Wood,TRANSFORM_TEX(node_8045, _Wood));
                float node_7632 = (node_3469*lerp( node_1404, node_2964, _UseWhite ));
                float node_5900 = (lerp( node_1404, node_2964, _UseRed )*saturate((node_9743-(node_4199+node_4133))));
                float2 node_783 = (i.uv0*_DeckTiling);
                float4 _HullWood_copy = tex2D(_WoodMerge,TRANSFORM_TEX(node_783, _WoodMerge));
                float node_1992 = (lerp( node_1404, node_2964, _UseGreen )*saturate((node_9121-(node_9700+node_4133))));
                float node_9587 = (saturate((node_8685-(node_4199+node_9700)))*lerp( node_1404, node_2964, _UseBlue ));
                float3 _UseMasks_var = lerp( _Diffuse_copy_var.rgb, lerp(_Diffuse_copy_var.rgb,(((_BlackColor.rgb*node_4529)+(_CyanColor.rgb*node_2593)+(_YellowColor.rgb*node_4224)+(_PurpleColor.rgb*node_3112)+(lerp(((node_1922.r*node_1922.g)*_WhiteColor.rgb),_Wood_var.rgb,saturate((pow((_Wood_var.r+_WearThreshold),_WearExp)-_WearThreshold)))*node_7632))+(_RedColor.rgb*node_5900)+(((_HullWood_copy.r*_HullWood_copy.g)*_GreenColor.rgb)*node_1992)+(_BlueColor.rgb*node_9587)),((node_4529+node_2593+node_4224+node_3112+node_7632)+node_5900+node_1992+node_9587)), _UseMasks );
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
