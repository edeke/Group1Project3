using UnityEngine;
using UnityEngine.UI;
using System.Collections;

public class SleepButton : MonoBehaviour {
	
	//bool active = false;
	GameObject sleepMenu;
	Image sleepButtonImage;

	public Sprite texDay;
	public Sprite texNight;

	// Use this for initialization
	void Start ()
	{
		sleepButtonImage = GetComponent<Image> ();

	}

	public void OnClick()
	{
		if (sleepMenu == null && GWorld.LoadingLevel() == false) 
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

	void Update()
	{
		if (GWorld.loadLevel == false) 
		{
			if (GWorld.GetTimeOfTheDay () == TimeOfDay.Day) 
			{
				sleepButtonImage.sprite = texDay;
			} 
			else 
			{
				sleepButtonImage.sprite = texNight;
			}
		}
	}


}
