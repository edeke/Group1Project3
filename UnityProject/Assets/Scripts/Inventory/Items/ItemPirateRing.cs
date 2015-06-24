using UnityEngine;
using System.Collections;

public class ItemPirateRing : Item {
	
	string EventIDRockMoved = "RockOnBeachMoved";

	void Start () 
	{

		EventData tempData = new EventData();
		GWorld.FindEvent(EventIDRockMoved,ref tempData);
			
		Item callBaseClass = (Item)this;
		callBaseClass.Start ();
		
	}


	override public void OnInspect()
	{
		EventData rockMovedEvent = new EventData();
		GWorld.FindEvent(EventIDRockMoved,ref rockMovedEvent);
		
		if (rockMovedEvent.hasEventOccured) 
		{
			DisplayComment ("It's a ring.");
		} 
		else 
		{
			DisplayComment ("It's a ring.");
		}

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
					//PlayerMovement movComp = GWorld.myPlayer.GetComponent<PlayerMovement>();
					//movComp.DisplaySpeechBubble("I should return the ring to to the soldier.");


					GWorld.MarkEventDone (eventID);
					Destroy (gameObject);
				} 
			} 

		} 
		else 
		{
			DisplayComment ("It's stuck under the rock.");
		}

	}

}
