using UnityEngine;
using System.Collections;

public class ItemMirror : Item {

	override public void OnInspect()
	{
		DisplayComment("It looks like an old mirror!");

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
			DisplayComment("I need a backpack to hold this mirror.");
		}

	}

}
