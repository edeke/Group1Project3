using UnityEngine;
using UnityEngine.UI;
using System.Collections;

public class MainCamera : MonoBehaviour {

	public OutlineCamera outlineCamera;
	public bool RenderOutlines;

	Camera mainCamera;

	public Material mat;

	// newRT;
	
	// Use this for initialization	
	//void Update()
	void OnPreRender()
	{
		mainCamera = GetComponent<Camera> ();


		if (RenderOutlines) 
		{
			outlineCamera.RenderOutlines ();
		}
	}

	void OnRenderImage(RenderTexture src, RenderTexture dest)
	{
		//newRT.Release ();
		RenderTexture newRT = new RenderTexture(Screen.width, Screen.height, src.depth, src.format);
		newRT.Create ();

		mainCamera.targetTexture = newRT;

		Graphics.Blit (src, newRT, mat);
		Graphics.Blit ( newRT, outlineCamera.mainRT_Depth );

		mainCamera.targetTexture = null;

		Graphics.Blit (src, dest );

		//outlineCamera.mainRT_Depth = newRT;

		newRT.Release ();

	}

}
