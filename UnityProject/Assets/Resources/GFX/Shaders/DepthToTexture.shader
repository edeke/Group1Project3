Shader "Custom/DepthGrayscale" {
	Properties {
		_MainTex ("Base (RGB)", 2D) = "white" {}
	}
	
SubShader {
Tags { "RenderType"="Opaque" }

Pass{
CGPROGRAM
#pragma vertex vert
#pragma fragment frag
#include "UnityCG.cginc"

sampler2D _MainTex;

sampler2D _CameraDepthTexture;

struct v2f {
   float4 pos : SV_POSITION;
   half2 uv : TEXCOORD0;
   float4 scrPos:TEXCOORD1;
   
};

//Vertex Shader
v2f vert (appdata_base v){
   v2f o;
   o.pos = mul (UNITY_MATRIX_MVP, v.vertex);
   o.scrPos=ComputeScreenPos(o.pos);
   //for some reason, the y position of the depth texture comes out inverted
   //o.scrPos.y = 1 - o.scrPos.y;
   return o;
}

//Fragment Shader
half4 frag (v2f i) : COLOR{

 fixed4 color = tex2D(_MainTex, i.uv);
   float depthValue = Linear01Depth (tex2Dproj(_CameraDepthTexture, UNITY_PROJ_COORD(i.scrPos)).r);
   half4 depth;


   //depth.rgb = color.rgb;
   //depth.a = 1;
   depth.r = 1 - depthValue ;
   depth.g = 1 - depthValue;
   depth.b = 1 - depthValue;
   depth.a = 1;
   
   //depth.a = 1 - depthValue;

  //depth.r = 1- color.r;
  //depth.g = 1- color.g;
  //depth.b = 1- color.b;
  	

 
   return depth;
}
ENDCG
}
}
FallBack "Diffuse"
}