using UnityEngine;
using UnityEngine.UI;
using System.Collections;

public class InventoryOpenButton : MonoBehaviour {

	GameObject panel;
	Image rend;

	bool active = false;

	// Use this for initialization
	void Start () {

		panel = GameObject.FindGameObjectWithTag("MainPanel");
		panel.SetActive (false);

		rend = GetComponent<Image> ();
		rend.enabled = false;

	
	}

	public void ShowButton(bool enable)
	{
		rend.enabled = enable;
	}

	public void OnClick()
	{
		if ( GWorld.isInvEnabled == true && GWorld.LoadingLevel () == false ) 
		{
			if (active) 
			{
				panel.SetActive (false);
				active = false;

			} 
			else 
			{
				panel.SetActive (true);
				active = true;
			
			}
		}

	}

	void OnGUI()
	{
		GUI.enabled = false;
	}

	public void OnPointerEnter()
	{

	}

	public void OnPointerLeaving()
	{

	}

}
