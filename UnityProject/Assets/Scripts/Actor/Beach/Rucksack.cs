﻿using UnityEngine;
using System.Collections;


public class Rucksack : CommentActorBase
{

	string EventIDPosition = "RuckSackPosition";
	string EventIDPickedUp = "RuckSackPickedUp";
	string EventIDFallDown = "RucksackFallDown";

	void Start () 
	{
		if (!GWorld.TryRegisterEvent (EventIDPickedUp, "Hello")) 
		{
			EventData tempData = new EventData();
			GWorld.FindEvent(EventIDPickedUp,ref tempData);

			if(tempData.hasEventOccured)
			{
				Destroy(gameObject);
			}
		}

		if (!GWorld.TryRegisterEvent (EventIDPosition, "Hello")) 
		{
			EventData tempData = new EventData();
			GWorld.FindEvent(EventIDPosition,ref tempData);
			
			transform.position = tempData.position;
			transform.rotation = tempData.rotation;
		}


	}

	override public void OnInspect()
	{	
		EventData tempData = new EventData();
		GWorld.FindEvent(EventIDFallDown,ref tempData);
		
		if (!tempData.hasEventOccured) 
		{
			DisplayComment ("Looks like a backpack, but I can't reach it");
		} 
		else 
		{
			DisplayComment ("It's a backpack, I should pick it up");
		}

	}

	override public void OnAction()
	{	
		GWorld.EnableInventory();
		GWorld.MarkEventDone (EventIDPickedUp);

		Destroy (gameObject);
		
	}
	
	void DestroyObject()
	{

	}

	void OnDestroy()
	{
		//store position of object befor changing scene or quiting
		GWorld.StorePositionForEvent (EventIDPosition, transform.position, transform.rotation);
	}

}
