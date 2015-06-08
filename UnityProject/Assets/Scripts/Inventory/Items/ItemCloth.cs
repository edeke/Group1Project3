using UnityEngine;
using System.Collections;

public class ItemCloth : Item {




	override public void OnInspect()
	{
		DisplayComment("It's a cloth!");

	}


	override public void OnDragOver( Vector3 deltaMousePosition )
	{

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
