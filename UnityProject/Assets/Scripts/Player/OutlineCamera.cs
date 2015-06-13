using UnityEngine;
using System.Collections;

public class OutlineCamera : MonoBehaviour {
	
	RenderTexture currentRT;
	public Camera cam;

	void OnGUI()
	{
		Rect newRect = new Rect (0, 0, Screen.width, Screen.height);
		GUI.DrawTexture ( newRect, currentRT);
	}

	public void RenderOutlines()
	{
		if (currentRT == null || currentRT.width != Screen.width || currentRT.height != Screen.height) 
		{
			currentRT = new RenderTexture(Screen.width, Screen.height, 16, RenderTextureFormat.ARGB32);
		}

		RenderTexture prevRT = RenderTexture.active;
		RenderTexture.active = currentRT;
		cam.targetTexture = currentRT;

		cam.Render();
		RenderTexture.active = prevRT;

	}
}
