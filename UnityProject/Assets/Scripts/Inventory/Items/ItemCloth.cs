using UnityEngine;
using System.Collections;

public class ItemCloth : Item {

	override public void OnInventoryInspect()
	{
		PlayerMovement moveComp = GWorld.myPlayer.GetComponent<PlayerMovement> ();
		moveComp.DisplaySpeechBubble ("It's a nice piece of cloth");
	}

	override public void OnInspect()
	{
		DisplayComment("It's a cloth.");

	}

	override public void OnAction( ) 
	{

		if (GWorld.isInvEnabled == true) 
		{
			if (Inventory.myInv.AddItem (itemData, transform.position)) 
			{
				GWorld.MarkEventDone (eventID);
				Destroy (gameObject);
			} 
		} 
		else 
		{
			DisplayComment("I need something to carry this in.");
		}

	}

}
