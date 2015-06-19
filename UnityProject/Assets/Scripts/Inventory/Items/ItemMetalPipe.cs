using UnityEngine;
using System.Collections;

public class ItemMetalPipe : Item {




	override public void OnInspect()
	{
		DisplayComment("It's a shovel.");

	}

	override public void OnAction( ) 
	{

		if (GWorld.isInvEnabled == true) 
		{
			if (Inventory.myInv.AddItem (itemData, transform.position)) 
			{
				PlayerMovement movComp = GWorld.myPlayer.GetComponent<PlayerMovement>();
				movComp.DisplaySpeechBubble("This will come in handy, I'm sure of it");


				GWorld.MarkEventDone (eventID);
				Destroy (gameObject);
			} 
		} 
		else 
		{
			DisplayComment("I need something to carry it in first.");
		}

	}

}
