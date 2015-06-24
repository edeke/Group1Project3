using UnityEngine;
using System.Collections;

public class ItemBottle1 : Item {


//	override public void OnInventoryInspect()
//	{
//		PlayerMovement moveComp = GWorld.myPlayer.GetComponent<PlayerMovement> ();
//		moveComp.DisplaySpeechBubble ("Now I have one empty bottle.");
//	}


	override public void OnInspect()
	{

		DisplayComment ("A bottle. They might be of some use.");
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
