using UnityEngine;
using System.Collections;

public class ItemCloth : Item {

	override public void OnInspect()
	{
		DisplayComment("It's a cloth. I can use this!");

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
			DisplayComment("I need a backpack to hold this cloth.");
		}

	}

}
