using UnityEngine;
using UnityEngine.UI;
using System.Collections;

public class OutlineCamera : MonoBehaviour {
	
	RenderTexture currentRT;
	public RenderTexture mainRT_Depth;
	public Camera cam;

	public Material mat;
	public Shader shader;

	/*void OnGUI()
	{
		Rect newRect = new Rect (0, 0, Screen.width, Screen.height);
		GUI.DrawTexture ( newRect, currentRT);
	}*/

	public void RenderOutlines()
	{
		/*if (currentRT == null || currentRT.width != Screen.width || currentRT.height != Screen.height) 
		{
			currentRT = new RenderTexture(Screen.width, Screen.height, 16, RenderTextureFormat.ARGB32);
		}

		RenderTexture prevRT = RenderTexture.active;
		RenderTexture.active = currentRT;
		cam.targetTexture = currentRT;

		cam.Render() ;
		//cam.RenderWithShader (shader, "Opaque");

		RenderTexture rtTemp = RenderTexture.GetTemporary(Screen.width, Screen.height, 16, RenderTextureFormat.ARGB32);
		//mat.SetTexture ("_MainTex", currentRT);
		Graphics.Blit (currentRT,rtTemp, mat);


		RenderTexture.active = prevRT;*/

		RawImage[] imgComps = FindObjectsOfType<RawImage> ();

		foreach (RawImage comp in imgComps)
		{
			if(comp.CompareTag("Outline"))
			{

				comp.texture = mainRT_Depth;
			}
		}
	}
}
