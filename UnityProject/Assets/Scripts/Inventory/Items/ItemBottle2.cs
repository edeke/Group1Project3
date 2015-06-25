using UnityEngine;
using System.Collections;

public class ItemBottle2 : Item {




	override public void OnInspect()
	{

		DisplayComment ("A bottle. It might be of some use.");
	}

	override public void OnAction( ) 
	{

		if (GWorld.isInvEnabled == true) 
		{
			if (Inventory.myInv.AddItem (itemData, transform.position)) 
			{
				GWorld.MarkEventDone (eventID);
				PlayerMovement movComp = GWorld.myPlayer.GetComponent<PlayerMovement> ();
				movComp.DisplaySpeechBubble ("I'll take that one.");
				Destroy (gameObject);
			} 
		} 
		else 
		{
			DisplayComment("Need inventory to pickup item");
		}

	}

}
