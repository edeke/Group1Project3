using UnityEngine;
using System.Collections;

public class MainCamera : MonoBehaviour {

	public OutlineCamera outlineCamera;
	public bool RenderOutlines;


	// Use this for initialization	
	void Update()
	{
		if (RenderOutlines) 
		{
			outlineCamera.RenderOutlines ();
		}
	}

}
