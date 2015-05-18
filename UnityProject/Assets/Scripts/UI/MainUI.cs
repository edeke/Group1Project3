using UnityEngine;
using System.Collections;

public class MainUI : MonoBehaviour {

	static MainUI mainUI;

	void Awake ()
	{
		if (!mainUI) 
		{
			mainUI = this;
		} 
		else 
		{
			Destroy(gameObject);
		}
	}
}
