using UnityEngine;
using System.Collections;

public class UILetter : MonoBehaviour 
{


	public void Update()
	{


		if (Input.GetMouseButtonUp (0)) 
		{
			Destroy (gameObject);
		}
	}
	
}
