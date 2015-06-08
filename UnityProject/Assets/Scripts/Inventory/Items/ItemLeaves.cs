using UnityEngine;
using System.Collections;

public class ItemLeaves : Item {




	override public void OnInspect()
	{

		DisplayComment ("Some large leaves, they could be good for something");
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
			DisplayComment("Need inventory to pickup item");
		}

	}

}
