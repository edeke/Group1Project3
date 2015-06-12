using UnityEngine;
using System.Collections;

public class ItemBranch : Item {




	override public void OnInspect()
	{
		DisplayComment("It's a bone.");
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
			DisplayComment("I need something to carry it in.");
		}

	}




}
