using UnityEngine;
using System.Collections;

public class ItemMirror : Item {

	int touchCount = 0;

	public GameObject forceLocation;
	public ShopkeeperCamera camera;
	public Camera mainCamera;

	override public void OnInspect()
	{
		DisplayComment("It looks like an old Mayan mirror!");
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
					PlayerMovement movComp = GWorld.myPlayer.GetComponent<PlayerMovement> ();
					movComp.DisplaySpeechBubble ("I don't think he'll notice.");
				} 
			}


		} 
		else 
		{
			DisplayComment("I need something to carry this in.");
		}

	}

	void Speech1()
	{
		FindObjectOfType<Shopkeeper> ().DisplaySpeechBubble("Hey, don't touch that!");
	}

	void Speech2()
	{
		FindObjectOfType<Shopkeeper> ().DisplaySpeechBubble("I told you not to touch that!");
	}

	void Speech3()
	{
		FindObjectOfType<Shopkeeper> ().DisplaySpeechBubble("If you touch it one more time...");
	}

	void Speech4()
	{
		FindObjectOfType<Shopkeeper> ().DisplaySpeechBubble("That's it! I have had it with you. Get out of my shop!!!");
	}

}
