using UnityEngine;
using System.Collections;

public class ItemMetalPipe : Item {




	override public void OnInspect()
	{


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
			ShowMessage("Need inventory to pickup item");
		}

	}

}
