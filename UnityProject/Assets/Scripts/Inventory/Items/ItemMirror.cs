using UnityEngine;
using System.Collections;

public class ItemMirror : Item {

	int touchCount = 0;

	public GameObject forceLocation;

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
						FindObjectOfType<Shopkeeper> ().DisplaySpeechBubble("Hey, don't touch that !");
					break;

					case 2 :
						FindObjectOfType<Shopkeeper> ().DisplaySpeechBubble("I told you to no touch that!");
					break;

					case 3 :
						FindObjectOfType<Shopkeeper> ().DisplaySpeechBubble("If you touch that one more time...!");
					break;

					case 4 :
						FindObjectOfType<Shopkeeper> ().DisplaySpeechBubble("That's it, I had it with you. Get out of my shop !!");
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

}
