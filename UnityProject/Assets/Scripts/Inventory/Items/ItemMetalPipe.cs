using UnityEngine;
using System.Collections;

public class ItemMetalPipe : Item {




	override public void OnInspect()
	{
		DisplayComment("It's a spoon.");

	}

	override public void OnAction( ) 
	{

		if (GWorld.isInvEnabled == true) 
		{
			if (Inventory.myInv.AddItem (itemData, transform.position)) 
			{
				PlayerMovement movComp = GWorld.myPlayer.GetComponent<PlayerMovement>();
				movComp.DisplaySpeechBubble("This spoon looks strong. It might come in handy.");


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
