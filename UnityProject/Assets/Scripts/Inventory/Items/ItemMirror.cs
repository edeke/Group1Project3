using UnityEngine;
using System.Collections;

public class ItemMirror : Item {

	int touchCount = 0;

	public GameObject forceLocation;
	public ShopkeeperCamera camera;
	public Camera mainCamera;

	override public void OnInspect()
	{
		DisplayComment("It looks like an old mirror!");
	}

	public void LoadLevel()
	{
		GWorld.LoadScene (ZoneBase.Cove);
	}

	override public void OnAction( ) 
	{

		if (GWorld.isInvEnabled == true) 
		{

			if( FindObjectOfType<Shopkeeper> ().atStart )
			{
				touchCount++;

				switch(touchCount)
				{
					case 1 :
						camera.gameObject.SetActive(true);
						mainCamera.gameObject.SetActive(false);
						camera.ActivateSeconds(4.0f);
						Invoke ("Speech1",0.1f);
					break;

					case 2 :
						camera.gameObject.SetActive(true);
						mainCamera.gameObject.SetActive(false);
						camera.ActivateSeconds(4.0f);
						Invoke ("Speech2",0.1f);
					break;

					case 3 :
						camera.gameObject.SetActive(true);
						mainCamera.gameObject.SetActive(false);
						camera.ActivateSeconds(4.0f);
						Invoke ("Speech3",0.1f);
					break;

					case 4 :
						camera.gameObject.SetActive(true);
						mainCamera.gameObject.SetActive(false);
						camera.ActivateSeconds(4.0f);
						Invoke ("Speech4",0.1f);
						
						GWorld.myPlayer.GetComponent<PlayerMovement>().ForceMoveToLocation( forceLocation.transform.position );
						Invoke ("LoadLevel", 3.0f);
					break;
				}



			}
			else
			{
				if (Inventory.myInv.AddItem (itemData, transform.position)) 
				{
					GWorld.MarkEventDone (eventID);
					Destroy (gameObject);
				} 
			}


		} 
		else 
		{
			DisplayComment("I need a backpack to hold this mirror.");
		}

	}

	void Speech1()
	{
		FindObjectOfType<Shopkeeper> ().DisplaySpeechBubble("Hey, don't touch that !");
	}

	void Speech2()
	{
		FindObjectOfType<Shopkeeper> ().DisplaySpeechBubble("I told you to no touch that!");
	}

	void Speech3()
	{
		FindObjectOfType<Shopkeeper> ().DisplaySpeechBubble("If you touch that one more time...!");
	}

	void Speech4()
	{
		FindObjectOfType<Shopkeeper> ().DisplaySpeechBubble("That's it, I had it with you. Get out of my shop !!!");
	}

}
