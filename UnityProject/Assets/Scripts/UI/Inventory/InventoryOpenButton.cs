using UnityEngine;
using UnityEngine.UI;
using System.Collections;

public class InventoryOpenButton : MonoBehaviour {

	GameObject panel;
	Image rend;

	bool active = false;

	public AudioClip openInventory;
	public AudioClip closeInventory;

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
				AudioSource.PlayClipAtPoint(closeInventory, transform.position, 0.2f);
				panel.SetActive (false);
				active = false;

			} 
			else 
			{
				AudioSource.PlayClipAtPoint(openInventory, transform.position, 0.2f);
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
