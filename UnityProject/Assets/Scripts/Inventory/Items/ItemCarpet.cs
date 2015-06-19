using UnityEngine;
using System.Collections;

public class ItemCarpet : Item {
	

	override public void OnInspect()
	{
		DisplayComment("It looks like there is something underneath it.");

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
