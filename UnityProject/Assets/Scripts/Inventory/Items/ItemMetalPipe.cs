using UnityEngine;
using System.Collections;

public class ItemMetalPipe : Item {




	override public void OnInspect()
	{
		DisplayComment("It's a large metal spoon!");

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
			DisplayComment("I need a backpack or something to hold this large spoon");
		}

	}

}
