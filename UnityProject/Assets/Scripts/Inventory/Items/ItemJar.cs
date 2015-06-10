using UnityEngine;
using System.Collections;

public class ItemJar : Item {




	override public void OnInspect()
	{
		DisplayComment("A nice looking jar.");

	}

	override public void OnAction( ) 
	{	
		if(Dialoguer.GetGlobalBoolean(4) == true){
			if (GWorld.isInvEnabled == true) 
			{
				if (Inventory.myInv.AddItem (itemData, transform.position)) 
				{
					GWorld.MarkEventDone (eventID);
					Destroy (gameObject);
				} 
			} 
		}
		else 
		{
			DisplayComment("I need a backpack to hold this jar.");
		}

	}

}
