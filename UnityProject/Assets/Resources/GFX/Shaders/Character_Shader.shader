// Shader created with Shader Forge v1.13 
// Shader Forge (c) Neat Corporation / Joachim Holmer - http://www.acegikmo.com/shaderforge/
// Note: Manually altering this data may prevent you from opening it in Shader Forge
/*SF_DATA;ver:1.13;sub:START;pass:START;ps:flbk:,lico:1,lgpr:1,nrmq:1,nrsp:0,limd:0,spmd:1,trmd:0,grmd:0,uamb:True,mssp:True,bkdf:True,rprd:False,enco:False,rmgx:True,rpth:0,hqsc:True,hqlp:False,tesm:0,bsrc:0,bdst:1,culm:0,dpts:2,wrdp:True,dith:0,ufog:False,aust:True,igpj:False,qofs:0,qpre:1,rntp:1,fgom:False,fgoc:False,fgod:False,fgor:False,fgmd:0,fgcr:0.5,fgcg:0.5,fgcb:0.5,fgca:1,fgde:0.01,fgrn:0,fgrf:300,ofsf:0,ofsu:0,f2p0:False;n:type:ShaderForge.SFN_Final,id:0,x:34990,y:31955,varname:node_0,prsc:2|normal-83-RGB,emission-4697-OUT,custl-64-OUT,olwid-2431-OUT,olcol-7799-RGB;n:type:ShaderForge.SFN_LightAttenuation,id:37,x:32857,y:32062,varname:node_37,prsc:2;n:type:ShaderForge.SFN_Dot,id:40,x:31764,y:32587,varname:node_40,prsc:2,dt:4|A-42-OUT,B-41-OUT;n:type:ShaderForge.SFN_NormalVector,id:41,x:31554,y:32638,prsc:2,pt:True;n:type:ShaderForge.SFN_LightVector,id:42,x:31409,y:32543,varname:node_42,prsc:2;n:type:ShaderForge.SFN_LightColor,id:63,x:33872,y:32155,varname:node_63,prsc:2;n:type:ShaderForge.SFN_Multiply,id:64,x:34056,y:32155,varname:node_64,prsc:2|A-63-RGB,B-84-OUT;n:type:ShaderForge.SFN_Tex2d,id:82,x:30604,y:31220,ptovrint:False,ptlb:Masks,ptin:_Masks,varname:_Diffuse,prsc:2,tex:12d24442a1666204a8e9ccf941281def,ntxv:0,isnm:False|UVIN-272-UVOUT;n:type:ShaderForge.SFN_Tex2d,id:83,x:34056,y:31966,ptovrint:False,ptlb:Normals,ptin:_Normals,varname:_Normals,prsc:2,tex:8873df0230cdf9a4f93c300fe2990fa2,ntxv:3,isnm:True|UVIN-272-UVOUT;n:type:ShaderForge.SFN_Multiply,id:84,x:33712,y:32143,cmnt:Diffuse Light,varname:node_84,prsc:2|A-2037-OUT,B-2105-OUT;n:type:ShaderForge.SFN_AmbientLight,id:187,x:33323,y:32415,varname:node_187,prsc:2;n:type:ShaderForge.SFN_TexCoord,id:272,x:31261,y:31685,varname:node_272,prsc:2,uv:0;n:type:ShaderForge.SFN_RemapRangeAdvanced,id:1026,x:32197,y:32697,varname:node_1026,prsc:2|IN-5306-OUT,IMIN-2384-OUT,IMAX-9128-OUT,OMIN-5169-OUT,OMAX-3044-OUT;n:type:ShaderForge.SFN_Slider,id:4544,x:32509,y:32314,ptovrint:False,ptlb:MinLight,ptin:_MinLight,varname:node_4544,prsc:2,min:0,cur:0,max:1;n:type:ShaderForge.SFN_Slider,id:5426,x:32521,y:32411,ptovrint:False,ptlb:MaxLight,ptin:_MaxLight,varname:_MinLight_copy,prsc:2,min:0,cur:1,max:1;n:type:ShaderForge.SFN_Slider,id:3630,x:31336,y:33021,ptovrint:False,ptlb:Reach,ptin:_Reach,varname:node_3630,prsc:2,min:0,cur:0.5,max:1;n:type:ShaderForge.SFN_Slider,id:7181,x:31336,y:33116,ptovrint:False,ptlb:Smoothness,ptin:_Smoothness,varname:_Value_copy,prsc:2,min:0,cur:0.025,max:0.5;n:type:ShaderForge.SFN_Add,id:9128,x:31776,y:33050,varname:node_9128,prsc:2|A-3630-OUT,B-7181-OUT;n:type:ShaderForge.SFN_Subtract,id:2384,x:31776,y:32906,varname:node_2384,prsc:2|A-3630-OUT,B-7181-OUT;n:type:ShaderForge.SFN_Clamp01,id:1648,x:32372,y:32697,varname:node_1648,prsc:2|IN-1026-OUT;n:type:ShaderForge.SFN_Vector1,id:5169,x:32170,y:32843,varname:node_5169,prsc:2,v1:0;n:type:ShaderForge.SFN_Vector1,id:3044,x:32168,y:32906,varname:node_3044,prsc:2,v1:1;n:type:ShaderForge.SFN_Lerp,id:6558,x:32995,y:32384,varname:node_6558,prsc:2|A-4544-OUT,B-5426-OUT,T-1648-OUT;n:type:ShaderForge.SFN_Slider,id:2431,x:33847,y:32462,ptovrint:False,ptlb:Outline,ptin:_Outline,varname:node_2431,prsc:2,min:0,cur:0,max:1;n:type:ShaderForge.SFN_Color,id:7799,x:34004,y:32554,ptovrint:False,ptlb:OutlineColor,ptin:_OutlineColor,varname:node_7799,prsc:2,glob:False,c1:0,c2:0,c3:0,c4:1;n:type:ShaderForge.SFN_Multiply,id:2105,x:33252,y:32160,varname:node_2105,prsc:2|A-6558-OUT,B-37-OUT;n:type:ShaderForge.SFN_Clamp,id:7728,x:33653,y:32343,varname:node_7728,prsc:2|IN-2105-OUT,MIN-187-RGB,MAX-36-OUT;n:type:ShaderForge.SFN_Vector1,id:36,x:33523,y:32507,varname:node_36,prsc:2,v1:1;n:type:ShaderForge.SFN_Color,id:8049,x:31852,y:31992,ptovrint:False,ptlb:Color 2,ptin:_Color2,varname:_Color2,prsc:2,glob:False,c1:0.9852941,c2:0.1738754,c3:0.1738754,c4:1;n:type:ShaderForge.SFN_Tex2d,id:7248,x:31805,y:32377,ptovrint:False,ptlb:AO,ptin:_AO,varname:node_7248,prsc:2,tex:6cd6a0f94b60c1145a608a252abfbe94,ntxv:0,isnm:False;n:type:ShaderForge.SFN_Multiply,id:5306,x:32063,y:32467,varname:node_5306,prsc:2|A-7248-R,B-40-OUT;n:type:ShaderForge.SFN_ConstantClamp,id:4531,x:31561,y:32336,varname:node_4531,prsc:2,min:0,max:1;n:type:ShaderForge.SFN_Multiply,id:2037,x:33592,y:31777,varname:node_2037,prsc:2|A-1905-OUT,B-7240-OUT;n:type:ShaderForge.SFN_Lerp,id:7240,x:33375,y:31637,varname:node_7240,prsc:2|A-3502-OUT,B-7248-R,T-9831-OUT;n:type:ShaderForge.SFN_Slider,id:9831,x:33045,y:31751,ptovrint:False,ptlb:AO Intensity,ptin:_AOIntensity,varname:node_9831,prsc:2,min:0,cur:1,max:1;n:type:ShaderForge.SFN_Vector1,id:3502,x:33124,y:31637,varname:node_3502,prsc:2,v1:1;n:type:ShaderForge.SFN_Multiply,id:145,x:34227,y:32491,varname:node_145,prsc:2|A-2525-OUT,B-7799-RGB;n:type:ShaderForge.SFN_Multiply,id:1464,x:33828,y:31937,varname:node_1464,prsc:2|A-2037-OUT,B-63-RGB;n:type:ShaderForge.SFN_Multiply,id:2525,x:33842,y:31723,varname:node_2525,prsc:2|A-2037-OUT,B-187-RGB;n:type:ShaderForge.SFN_Multiply,id:1627,x:33854,y:31526,varname:node_1627,prsc:2|A-2525-OUT,B-2105-OUT;n:type:ShaderForge.SFN_SwitchProperty,id:1905,x:33237,y:30775,ptovrint:False,ptlb:UseMasks,ptin:_UseMasks,varname:node_1905,prsc:2,on:False|A-4563-RGB,B-2620-OUT;n:type:ShaderForge.SFN_Multiply,id:5930,x:31414,y:30652,cmnt:Purple,varname:node_5930,prsc:2|A-8820-OUT,B-8886-OUT;n:type:ShaderForge.SFN_Multiply,id:249,x:31414,y:30502,cmnt:Yellow,varname:node_249,prsc:2|A-8820-OUT,B-3003-OUT;n:type:ShaderForge.SFN_Multiply,id:8134,x:31410,y:30360,cmnt:Cyan,varname:node_8134,prsc:2|A-3003-OUT,B-8886-OUT;n:type:ShaderForge.SFN_Clamp01,id:356,x:31240,y:30213,varname:node_356,prsc:2|IN-2049-OUT;n:type:ShaderForge.SFN_OneMinus,id:5698,x:31410,y:30213,cmnt:Black,varname:node_5698,prsc:2|IN-356-OUT;n:type:ShaderForge.SFN_Color,id:8870,x:31976,y:31063,ptovrint:False,ptlb:Red Color,ptin:_RedColor,varname:node_8870,prsc:2,glob:False,c1:0.7352941,c2:0.1946367,c3:0.1946367,c4:1;n:type:ShaderForge.SFN_Multiply,id:7380,x:31792,y:31113,varname:node_7380,prsc:2|A-2779-OUT,B-2438-OUT;n:type:ShaderForge.SFN_Color,id:6831,x:31976,y:31441,ptovrint:False,ptlb:Blue Color,ptin:_BlueColor,varname:node_6831,prsc:2,glob:False,c1:0.2869585,c2:0.2698962,c3:0.7647059,c4:1;n:type:ShaderForge.SFN_Multiply,id:6696,x:31792,y:31471,varname:node_6696,prsc:2|A-9597-OUT,B-538-OUT;n:type:ShaderForge.SFN_Color,id:1995,x:31976,y:30165,ptovrint:False,ptlb:Black Color,ptin:_BlackColor,varname:node_1995,prsc:2,glob:False,c1:0.4338235,c2:0.3437589,c3:0.1499243,c4:1;n:type:ShaderForge.SFN_Color,id:5182,x:31976,y:30337,ptovrint:False,ptlb:Cyan Color,ptin:_CyanColor,varname:node_5182,prsc:2,glob:False,c1:0.1342993,c2:0.5642971,c3:0.6764706,c4:1;n:type:ShaderForge.SFN_Multiply,id:6698,x:31776,y:30347,varname:node_6698,prsc:2|A-2808-OUT,B-8134-OUT;n:type:ShaderForge.SFN_Color,id:5330,x:31976,y:30501,ptovrint:False,ptlb:Yellow Color,ptin:_YellowColor,varname:node_5330,prsc:2,glob:False,c1:1,c2:0.9407708,c3:0.4632353,c4:1;n:type:ShaderForge.SFN_Multiply,id:3565,x:31789,y:30502,varname:node_3565,prsc:2|A-5582-OUT,B-249-OUT;n:type:ShaderForge.SFN_Add,id:2049,x:31021,y:30213,varname:node_2049,prsc:2|A-82-R,B-82-G,C-82-B;n:type:ShaderForge.SFN_Subtract,id:8820,x:30980,y:31182,cmnt:Red -White,varname:node_8820,prsc:2|A-82-R,B-2636-OUT;n:type:ShaderForge.SFN_Subtract,id:3003,x:30980,y:31318,cmnt:Green -White,varname:node_3003,prsc:2|A-82-G,B-2636-OUT;n:type:ShaderForge.SFN_Subtract,id:8886,x:30980,y:31457,cmnt:Blue -White,varname:node_8886,prsc:2|A-82-B,B-2636-OUT;n:type:ShaderForge.SFN_Multiply,id:2359,x:31789,y:30666,varname:node_2359,prsc:2|A-9798-OUT,B-5930-OUT;n:type:ShaderForge.SFN_Color,id:1208,x:31976,y:30662,ptovrint:False,ptlb:Purple Color,ptin:_PurpleColor,varname:node_1208,prsc:2,glob:False,c1:0.8626313,c2:0.5040008,c3:0.8676471,c4:1;n:type:ShaderForge.SFN_Multiply,id:3974,x:31789,y:30819,varname:node_3974,prsc:2|A-2636-OUT,B-3877-OUT;n:type:ShaderForge.SFN_Color,id:1473,x:31976,y:30819,ptovrint:False,ptlb:White Color,ptin:_WhiteColor,varname:node_1473,prsc:2,glob:False,c1:1,c2:1,c3:1,c4:1;n:type:ShaderForge.SFN_Subtract,id:8605,x:31202,y:31182,varname:node_8605,prsc:2|A-8820-OUT,B-2169-OUT;n:type:ShaderForge.SFN_Multiply,id:2290,x:30643,y:31417,varname:node_2290,prsc:2|A-82-R,B-82-G;n:type:ShaderForge.SFN_Multiply,id:2636,x:30801,y:31417,cmnt:White,varname:node_2636,prsc:2|A-82-B,B-2290-OUT;n:type:ShaderForge.SFN_Add,id:2169,x:31110,y:30647,varname:node_2169,prsc:2|A-5930-OUT,B-249-OUT;n:type:ShaderForge.SFN_Clamp01,id:2438,x:31359,y:31182,cmnt:Red,varname:node_2438,prsc:2|IN-8605-OUT;n:type:ShaderForge.SFN_Add,id:1579,x:32360,y:30517,varname:node_1579,prsc:2|A-280-OUT,B-7539-OUT,C-697-OUT,D-1768-OUT,E-516-OUT;n:type:ShaderForge.SFN_Add,id:3339,x:32594,y:30734,varname:node_3339,prsc:2|A-1579-OUT,B-7406-OUT,C-4425-OUT,D-3055-OUT;n:type:ShaderForge.SFN_Subtract,id:2155,x:31201,y:31313,varname:node_2155,prsc:2|A-3003-OUT,B-5807-OUT;n:type:ShaderForge.SFN_Clamp01,id:5296,x:31359,y:31313,cmnt:Green,varname:node_5296,prsc:2|IN-2155-OUT;n:type:ShaderForge.SFN_Add,id:5807,x:31110,y:30780,varname:node_5807,prsc:2|A-8134-OUT,B-249-OUT;n:type:ShaderForge.SFN_Color,id:8663,x:31976,y:31235,ptovrint:False,ptlb:Green Color,ptin:_GreenColor,varname:node_8663,prsc:2,glob:False,c1:0.5909864,c2:0.9044118,c3:0.5652574,c4:1;n:type:ShaderForge.SFN_Multiply,id:4440,x:31792,y:31275,varname:node_4440,prsc:2|A-6747-OUT,B-5296-OUT;n:type:ShaderForge.SFN_Add,id:5522,x:31110,y:30913,varname:node_5522,prsc:2|A-5930-OUT,B-8134-OUT;n:type:ShaderForge.SFN_Subtract,id:17,x:31201,y:31456,varname:node_17,prsc:2|A-8886-OUT,B-5522-OUT;n:type:ShaderForge.SFN_Clamp01,id:9597,x:31359,y:31456,cmnt:Blue,varname:node_9597,prsc:2|IN-17-OUT;n:type:ShaderForge.SFN_Tex2d,id:4563,x:32714,y:30504,ptovrint:False,ptlb:Diffuse,ptin:_Diffuse,varname:node_4563,prsc:2,tex:62cc0e4d4e0eb0146b6b8c13668535fb,ntxv:0,isnm:False;n:type:ShaderForge.SFN_Add,id:5668,x:30801,y:31635,varname:node_5668,prsc:2|A-82-R,B-82-G,C-82-B;n:type:ShaderForge.SFN_Lerp,id:2620,x:32913,y:30752,varname:node_2620,prsc:2|A-4563-RGB,B-3339-OUT,T-3479-OUT;n:type:ShaderForge.SFN_Clamp01,id:5856,x:30971,y:31655,varname:node_5856,prsc:2|IN-5668-OUT;n:type:ShaderForge.SFN_SwitchProperty,id:9320,x:31584,y:30175,ptovrint:False,ptlb:Use Black,ptin:_UseBlack,varname:node_9320,prsc:2,on:True|A-6817-OUT,B-2356-OUT;n:type:ShaderForge.SFN_Vector1,id:6817,x:31960,y:30971,varname:node_6817,prsc:2,v1:0;n:type:ShaderForge.SFN_SwitchProperty,id:2808,x:31584,y:30329,ptovrint:False,ptlb:Use Cyan,ptin:_UseCyan,varname:_UseBlack_copy,prsc:2,on:True|A-6817-OUT,B-2356-OUT;n:type:ShaderForge.SFN_SwitchProperty,id:5582,x:31584,y:30502,ptovrint:False,ptlb:Use Yellow,ptin:_UseYellow,varname:_UseCyan_copy,prsc:2,on:True|A-6817-OUT,B-2356-OUT;n:type:ShaderForge.SFN_SwitchProperty,id:9798,x:31584,y:30666,ptovrint:False,ptlb:Use Purple,ptin:_UsePurple,varname:_UseCyan_copy_copy,prsc:2,on:True|A-6817-OUT,B-2356-OUT;n:type:ShaderForge.SFN_SwitchProperty,id:3877,x:31584,y:30819,ptovrint:False,ptlb:Use White,ptin:_UseWhite,varname:_UseCyan_copy_copy_copy,prsc:2,on:True|A-6817-OUT,B-2356-OUT;n:type:ShaderForge.SFN_SwitchProperty,id:2779,x:31569,y:31113,ptovrint:False,ptlb:Use Red,ptin:_UseRed,varname:_UseWhite_copy,prsc:2,on:True|A-6817-OUT,B-2356-OUT;n:type:ShaderForge.SFN_SwitchProperty,id:6747,x:31569,y:31300,ptovrint:False,ptlb:Use Green,ptin:_UseGreen,varname:_UseRed_copy,prsc:2,on:True|A-6817-OUT,B-2356-OUT;n:type:ShaderForge.SFN_SwitchProperty,id:538,x:31569,y:31471,ptovrint:False,ptlb:Use Blue,ptin:_UseBlue,varname:_UseGreen_copy,prsc:2,on:True|A-6817-OUT,B-2356-OUT;n:type:ShaderForge.SFN_Vector1,id:2356,x:31817,y:30954,varname:node_2356,prsc:2,v1:1;n:type:ShaderForge.SFN_Multiply,id:3055,x:32155,y:31412,varname:node_3055,prsc:2|A-6831-RGB,B-6696-OUT;n:type:ShaderForge.SFN_Multiply,id:4425,x:32160,y:31217,varname:node_4425,prsc:2|A-8663-RGB,B-4440-OUT;n:type:ShaderForge.SFN_Multiply,id:7406,x:32160,y:31041,varname:node_7406,prsc:2|A-8870-RGB,B-7380-OUT;n:type:ShaderForge.SFN_Multiply,id:516,x:32141,y:30808,varname:node_516,prsc:2|A-1473-RGB,B-3974-OUT;n:type:ShaderForge.SFN_Multiply,id:1768,x:32141,y:30662,varname:node_1768,prsc:2|A-1208-RGB,B-2359-OUT;n:type:ShaderForge.SFN_Multiply,id:697,x:32141,y:30511,varname:node_697,prsc:2|A-5330-RGB,B-3565-OUT;n:type:ShaderForge.SFN_Multiply,id:7539,x:32141,y:30347,varname:node_7539,prsc:2|A-5182-RGB,B-6698-OUT;n:type:ShaderForge.SFN_Multiply,id:280,x:32141,y:30165,varname:node_280,prsc:2|A-1995-RGB,B-4708-OUT;n:type:ShaderForge.SFN_Multiply,id:1618,x:32148,y:29461,varname:node_1618,prsc:2|A-5698-OUT,B-9320-OUT;n:type:ShaderForge.SFN_Multiply,id:1631,x:32148,y:29604,varname:node_1631,prsc:2|A-8134-OUT,B-2808-OUT;n:type:ShaderForge.SFN_Multiply,id:6877,x:32148,y:29731,varname:node_6877,prsc:2|A-249-OUT,B-5582-OUT;n:type:ShaderForge.SFN_Multiply,id:2420,x:32148,y:29866,varname:node_2420,prsc:2|A-5930-OUT,B-9798-OUT;n:type:ShaderForge.SFN_Multiply,id:6750,x:32340,y:29461,varname:node_6750,prsc:2|A-2636-OUT,B-3877-OUT;n:type:ShaderForge.SFN_Multiply,id:5799,x:32340,y:29604,varname:node_5799,prsc:2|A-2438-OUT,B-2779-OUT;n:type:ShaderForge.SFN_Multiply,id:9660,x:32340,y:29731,varname:node_9660,prsc:2|A-5296-OUT,B-6747-OUT;n:type:ShaderForge.SFN_Multiply,id:8883,x:32340,y:29866,varname:node_8883,prsc:2|A-9597-OUT,B-538-OUT;n:type:ShaderForge.SFN_Add,id:8483,x:32575,y:29445,varname:node_8483,prsc:2|A-1618-OUT,B-6750-OUT,C-1631-OUT,D-5799-OUT,E-6877-OUT;n:type:ShaderForge.SFN_Add,id:3479,x:32575,y:29604,varname:node_3479,prsc:2|A-8483-OUT,B-9660-OUT,C-2420-OUT,D-8883-OUT;n:type:ShaderForge.SFN_Lerp,id:7756,x:32913,y:30920,varname:node_7756,prsc:2|A-4563-RGB,B-7583-OUT,T-3479-OUT;n:type:ShaderForge.SFN_Lerp,id:3450,x:32372,y:30210,varname:node_3450,prsc:2|A-280-OUT,B-7539-OUT,T-8134-OUT;n:type:ShaderForge.SFN_Lerp,id:4888,x:32562,y:30210,varname:node_4888,prsc:2|A-3450-OUT,B-697-OUT,T-249-OUT;n:type:ShaderForge.SFN_Lerp,id:1043,x:32752,y:30210,varname:node_1043,prsc:2|A-4888-OUT,B-1768-OUT,T-5930-OUT;n:type:ShaderForge.SFN_Lerp,id:2950,x:32935,y:30210,varname:node_2950,prsc:2|A-1043-OUT,B-516-OUT,T-3003-OUT;n:type:ShaderForge.SFN_Lerp,id:9514,x:33124,y:30210,varname:node_9514,prsc:2|A-2950-OUT,B-7406-OUT,T-2438-OUT;n:type:ShaderForge.SFN_Lerp,id:4858,x:33299,y:30210,varname:node_4858,prsc:2|A-9514-OUT,B-4425-OUT,T-5296-OUT;n:type:ShaderForge.SFN_Lerp,id:7583,x:33475,y:30210,varname:node_7583,prsc:2|A-4858-OUT,B-3055-OUT,T-9597-OUT;n:type:ShaderForge.SFN_Multiply,id:4708,x:31776,y:30165,varname:node_4708,prsc:2|A-9320-OUT,B-5698-OUT;n:type:ShaderForge.SFN_Multiply,id:8700,x:34454,y:31703,varname:node_8700,prsc:2|A-9139-RGB,B-1289-OUT;n:type:ShaderForge.SFN_Fresnel,id:1289,x:34262,y:31758,varname:node_1289,prsc:2;n:type:ShaderForge.SFN_Color,id:9139,x:34147,y:31637,ptovrint:False,ptlb:Highlight,ptin:_Highlight,varname:node_2454,prsc:2,glob:False,c1:0,c2:0,c3:0,c4:1;n:type:ShaderForge.SFN_Add,id:4697,x:34781,y:31559,varname:node_4697,prsc:2|A-2525-OUT,B-8700-OUT;proporder:82-83-3630-7181-4544-5426-7799-2431-7248-9831-1905-8870-1995-5182-5330-1208-1473-8663-6831-4563-9320-2808-5582-9798-3877-2779-6747-538-9139;pass:END;sub:END;*/

Shader "Shader Forge/Examples/Character_Shader" {
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
        _RedColor ("Red Color", Color) = (0.7352941,0.1946367,0.1946367,1)
        _BlackColor ("Black Color", Color) = (0.4338235,0.3437589,0.1499243,1)
        _CyanColor ("Cyan Color", Color) = (0.1342993,0.5642971,0.6764706,1)
        _YellowColor ("Yellow Color", Color) = (1,0.9407708,0.4632353,1)
        _PurpleColor ("Purple Color", Color) = (0.8626313,0.5040008,0.8676471,1)
        _WhiteColor ("White Color", Color) = (1,1,1,1)
        _GreenColor ("Green Color", Color) = (0.5909864,0.9044118,0.5652574,1)
        _BlueColor ("Blue Color", Color) = (0.2869585,0.2698962,0.7647059,1)
        _Diffuse ("Diffuse", 2D) = "white" {}
        [MaterialToggle] _UseBlack ("Use Black", Float ) = 1
        [MaterialToggle] _UseCyan ("Use Cyan", Float ) = 1
        [MaterialToggle] _UseYellow ("Use Yellow", Float ) = 1
        [MaterialToggle] _UsePurple ("Use Purple", Float ) = 1
        [MaterialToggle] _UseWhite ("Use White", Float ) = 1
        [MaterialToggle] _UseRed ("Use Red", Float ) = 1
        [MaterialToggle] _UseGreen ("Use Green", Float ) = 1
        [MaterialToggle] _UseBlue ("Use Blue", Float ) = 1
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
            uniform float4 _RedColor;
            uniform float4 _BlueColor;
            uniform float4 _BlackColor;
            uniform float4 _CyanColor;
            uniform float4 _YellowColor;
            uniform float4 _PurpleColor;
            uniform float4 _WhiteColor;
            uniform float4 _GreenColor;
            uniform sampler2D _Diffuse; uniform float4 _Diffuse_ST;
            uniform fixed _UseBlack;
            uniform fixed _UseCyan;
            uniform fixed _UseYellow;
            uniform fixed _UsePurple;
            uniform fixed _UseWhite;
            uniform fixed _UseRed;
            uniform fixed _UseGreen;
            uniform fixed _UseBlue;
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
                float node_6817 = 0.0;
                float node_2356 = 1.0;
                float _UseBlack_var = lerp( node_6817, node_2356, _UseBlack );
                float4 _Masks_var = tex2D(_Masks,TRANSFORM_TEX(i.uv0, _Masks));
                float node_5698 = (1.0 - saturate((_Masks_var.r+_Masks_var.g+_Masks_var.b))); // Black
                float3 node_280 = (_BlackColor.rgb*(_UseBlack_var*node_5698));
                float _UseCyan_var = lerp( node_6817, node_2356, _UseCyan );
                float node_2636 = (_Masks_var.b*(_Masks_var.r*_Masks_var.g)); // White
                float node_3003 = (_Masks_var.g-node_2636); // Green -White
                float node_8886 = (_Masks_var.b-node_2636); // Blue -White
                float node_8134 = (node_3003*node_8886); // Cyan
                float3 node_7539 = (_CyanColor.rgb*(_UseCyan_var*node_8134));
                float _UseYellow_var = lerp( node_6817, node_2356, _UseYellow );
                float node_8820 = (_Masks_var.r-node_2636); // Red -White
                float node_249 = (node_8820*node_3003); // Yellow
                float3 node_697 = (_YellowColor.rgb*(_UseYellow_var*node_249));
                float _UsePurple_var = lerp( node_6817, node_2356, _UsePurple );
                float node_5930 = (node_8820*node_8886); // Purple
                float3 node_1768 = (_PurpleColor.rgb*(_UsePurple_var*node_5930));
                float _UseWhite_var = lerp( node_6817, node_2356, _UseWhite );
                float3 node_516 = (_WhiteColor.rgb*(node_2636*_UseWhite_var));
                float _UseRed_var = lerp( node_6817, node_2356, _UseRed );
                float node_2438 = saturate((node_8820-(node_5930+node_249))); // Red
                float3 node_7406 = (_RedColor.rgb*(_UseRed_var*node_2438));
                float _UseGreen_var = lerp( node_6817, node_2356, _UseGreen );
                float node_5296 = saturate((node_3003-(node_8134+node_249))); // Green
                float3 node_4425 = (_GreenColor.rgb*(_UseGreen_var*node_5296));
                float node_9597 = saturate((node_8886-(node_5930+node_8134))); // Blue
                float _UseBlue_var = lerp( node_6817, node_2356, _UseBlue );
                float3 node_3055 = (_BlueColor.rgb*(node_9597*_UseBlue_var));
                float node_3479 = (((node_5698*_UseBlack_var)+(node_2636*_UseWhite_var)+(node_8134*_UseCyan_var)+(node_2438*_UseRed_var)+(node_249*_UseYellow_var))+(node_5296*_UseGreen_var)+(node_5930*_UsePurple_var)+(node_9597*_UseBlue_var));
                float4 _AO_var = tex2D(_AO,TRANSFORM_TEX(i.uv0, _AO));
                float3 node_2037 = (lerp( _Diffuse_var.rgb, lerp(_Diffuse_var.rgb,((node_280+node_7539+node_697+node_1768+node_516)+node_7406+node_4425+node_3055),node_3479), _UseMasks )*lerp(1.0,_AO_var.r,_AOIntensity));
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
            uniform float4 _RedColor;
            uniform float4 _BlueColor;
            uniform float4 _BlackColor;
            uniform float4 _CyanColor;
            uniform float4 _YellowColor;
            uniform float4 _PurpleColor;
            uniform float4 _WhiteColor;
            uniform float4 _GreenColor;
            uniform sampler2D _Diffuse; uniform float4 _Diffuse_ST;
            uniform fixed _UseBlack;
            uniform fixed _UseCyan;
            uniform fixed _UseYellow;
            uniform fixed _UsePurple;
            uniform fixed _UseWhite;
            uniform fixed _UseRed;
            uniform fixed _UseGreen;
            uniform fixed _UseBlue;
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
                float node_6817 = 0.0;
                float node_2356 = 1.0;
                float _UseBlack_var = lerp( node_6817, node_2356, _UseBlack );
                float4 _Masks_var = tex2D(_Masks,TRANSFORM_TEX(i.uv0, _Masks));
                float node_5698 = (1.0 - saturate((_Masks_var.r+_Masks_var.g+_Masks_var.b))); // Black
                float3 node_280 = (_BlackColor.rgb*(_UseBlack_var*node_5698));
                float _UseCyan_var = lerp( node_6817, node_2356, _UseCyan );
                float node_2636 = (_Masks_var.b*(_Masks_var.r*_Masks_var.g)); // White
                float node_3003 = (_Masks_var.g-node_2636); // Green -White
                float node_8886 = (_Masks_var.b-node_2636); // Blue -White
                float node_8134 = (node_3003*node_8886); // Cyan
                float3 node_7539 = (_CyanColor.rgb*(_UseCyan_var*node_8134));
                float _UseYellow_var = lerp( node_6817, node_2356, _UseYellow );
                float node_8820 = (_Masks_var.r-node_2636); // Red -White
                float node_249 = (node_8820*node_3003); // Yellow
                float3 node_697 = (_YellowColor.rgb*(_UseYellow_var*node_249));
                float _UsePurple_var = lerp( node_6817, node_2356, _UsePurple );
                float node_5930 = (node_8820*node_8886); // Purple
                float3 node_1768 = (_PurpleColor.rgb*(_UsePurple_var*node_5930));
                float _UseWhite_var = lerp( node_6817, node_2356, _UseWhite );
                float3 node_516 = (_WhiteColor.rgb*(node_2636*_UseWhite_var));
                float _UseRed_var = lerp( node_6817, node_2356, _UseRed );
                float node_2438 = saturate((node_8820-(node_5930+node_249))); // Red
                float3 node_7406 = (_RedColor.rgb*(_UseRed_var*node_2438));
                float _UseGreen_var = lerp( node_6817, node_2356, _UseGreen );
                float node_5296 = saturate((node_3003-(node_8134+node_249))); // Green
                float3 node_4425 = (_GreenColor.rgb*(_UseGreen_var*node_5296));
                float node_9597 = saturate((node_8886-(node_5930+node_8134))); // Blue
                float _UseBlue_var = lerp( node_6817, node_2356, _UseBlue );
                float3 node_3055 = (_BlueColor.rgb*(node_9597*_UseBlue_var));
                float node_3479 = (((node_5698*_UseBlack_var)+(node_2636*_UseWhite_var)+(node_8134*_UseCyan_var)+(node_2438*_UseRed_var)+(node_249*_UseYellow_var))+(node_5296*_UseGreen_var)+(node_5930*_UsePurple_var)+(node_9597*_UseBlue_var));
                float4 _AO_var = tex2D(_AO,TRANSFORM_TEX(i.uv0, _AO));
                float3 node_2037 = (lerp( _Diffuse_var.rgb, lerp(_Diffuse_var.rgb,((node_280+node_7539+node_697+node_1768+node_516)+node_7406+node_4425+node_3055),node_3479), _UseMasks )*lerp(1.0,_AO_var.r,_AOIntensity));
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
            uniform float4 _RedColor;
            uniform float4 _BlueColor;
            uniform float4 _BlackColor;
            uniform float4 _CyanColor;
            uniform float4 _YellowColor;
            uniform float4 _PurpleColor;
            uniform float4 _WhiteColor;
            uniform float4 _GreenColor;
            uniform sampler2D _Diffuse; uniform float4 _Diffuse_ST;
            uniform fixed _UseBlack;
            uniform fixed _UseCyan;
            uniform fixed _UseYellow;
            uniform fixed _UsePurple;
            uniform fixed _UseWhite;
            uniform fixed _UseRed;
            uniform fixed _UseGreen;
            uniform fixed _UseBlue;
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
                float node_6817 = 0.0;
                float node_2356 = 1.0;
                float _UseBlack_var = lerp( node_6817, node_2356, _UseBlack );
                float4 _Masks_var = tex2D(_Masks,TRANSFORM_TEX(i.uv0, _Masks));
                float node_5698 = (1.0 - saturate((_Masks_var.r+_Masks_var.g+_Masks_var.b))); // Black
                float3 node_280 = (_BlackColor.rgb*(_UseBlack_var*node_5698));
                float _UseCyan_var = lerp( node_6817, node_2356, _UseCyan );
                float node_2636 = (_Masks_var.b*(_Masks_var.r*_Masks_var.g)); // White
                float node_3003 = (_Masks_var.g-node_2636); // Green -White
                float node_8886 = (_Masks_var.b-node_2636); // Blue -White
                float node_8134 = (node_3003*node_8886); // Cyan
                float3 node_7539 = (_CyanColor.rgb*(_UseCyan_var*node_8134));
                float _UseYellow_var = lerp( node_6817, node_2356, _UseYellow );
                float node_8820 = (_Masks_var.r-node_2636); // Red -White
                float node_249 = (node_8820*node_3003); // Yellow
                float3 node_697 = (_YellowColor.rgb*(_UseYellow_var*node_249));
                float _UsePurple_var = lerp( node_6817, node_2356, _UsePurple );
                float node_5930 = (node_8820*node_8886); // Purple
                float3 node_1768 = (_PurpleColor.rgb*(_UsePurple_var*node_5930));
                float _UseWhite_var = lerp( node_6817, node_2356, _UseWhite );
                float3 node_516 = (_WhiteColor.rgb*(node_2636*_UseWhite_var));
                float _UseRed_var = lerp( node_6817, node_2356, _UseRed );
                float node_2438 = saturate((node_8820-(node_5930+node_249))); // Red
                float3 node_7406 = (_RedColor.rgb*(_UseRed_var*node_2438));
                float _UseGreen_var = lerp( node_6817, node_2356, _UseGreen );
                float node_5296 = saturate((node_3003-(node_8134+node_249))); // Green
                float3 node_4425 = (_GreenColor.rgb*(_UseGreen_var*node_5296));
                float node_9597 = saturate((node_8886-(node_5930+node_8134))); // Blue
                float _UseBlue_var = lerp( node_6817, node_2356, _UseBlue );
                float3 node_3055 = (_BlueColor.rgb*(node_9597*_UseBlue_var));
                float node_3479 = (((node_5698*_UseBlack_var)+(node_2636*_UseWhite_var)+(node_8134*_UseCyan_var)+(node_2438*_UseRed_var)+(node_249*_UseYellow_var))+(node_5296*_UseGreen_var)+(node_5930*_UsePurple_var)+(node_9597*_UseBlue_var));
                float4 _AO_var = tex2D(_AO,TRANSFORM_TEX(i.uv0, _AO));
                float3 node_2037 = (lerp( _Diffuse_var.rgb, lerp(_Diffuse_var.rgb,((node_280+node_7539+node_697+node_1768+node_516)+node_7406+node_4425+node_3055),node_3479), _UseMasks )*lerp(1.0,_AO_var.r,_AOIntensity));
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
