using UnityEngine;
using UnityEngine.UI;
using System.Collections;

public class SleepButton : MonoBehaviour {
	
	//bool active = false;
	GameObject sleepMenu;

	// Use this for initialization
	void Start () {

	}

	public void OnClick()
	{
		if (sleepMenu == null) 
		{
			string path = "Prefabs/UI/SleepMenu/SleepMenu";
			sleepMenu = (GameObject)Instantiate (Resources.Load (path));
		}
		else
		{
			Destroy(sleepMenu);
		}
	}

	public void OnPointerEnter()
	{

	}

	public void OnPointerLeaving()
	{

	}

}
