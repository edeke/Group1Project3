using UnityEngine;
using System.Collections;

public class ItemPirateRing : Item {

	bool isRockMoved = false;
	string EventIDRockMoved = "RockOnBeachMoved";

	void Start () 
	{

		EventData tempData = new EventData();
		GWorld.FindEvent(EventIDRockMoved,ref tempData);
			
		if(tempData.hasEventOccured)
		{
			isRockMoved = true;
		}
			
		Item callBaseClass = (Item)this;
		callBaseClass.Start ();
		
	}


	override public void OnInspect()
	{


	}


	override public void OnDragOver( Vector3 deltaMousePosition )
	{

	}

	override public void OnAction( ) 
	{
		EventData rockMovedEvent = new EventData();
		GWorld.FindEvent(EventIDRockMoved,ref rockMovedEvent);
		
		if (rockMovedEvent.hasEventOccured) 
		{
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
			ShowMessage ("There is a large rock on it");
		}

	}

}
