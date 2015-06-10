using UnityEngine;
using System.Collections;

public class ItemBranch : Item {




	override public void OnInspect()
	{
		DisplayComment("This could be used as a torch.");
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
			DisplayComment("Need inventory to pickup item");
		}

	}




}
