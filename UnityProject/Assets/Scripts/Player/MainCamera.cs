using UnityEngine;
using System.Collections;

public class MainCamera : MonoBehaviour {

	public OutlineCamera outlineCamera;


	// Use this for initialization	
	void OnPostRender()
	{
		outlineCamera.RenderOutlines ();
	}

}
