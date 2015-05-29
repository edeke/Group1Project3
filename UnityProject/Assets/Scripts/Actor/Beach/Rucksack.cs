using UnityEngine;
using System.Collections;


public class Rucksack : CommentActorBase
{

	string EventIDPosition = "RuckSackPosition";
	string EventIDPickedUp = "RuckSackPickedUp";

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

		DisplayComment("Looks like a Backpack, but I can't reach it");

	}

	override public void OnAction()
	{	
		GWorld.EnableInventory();
		GWorld.MarkEventDone (EventIDPickedUp);

		Destroy (gameObject);
		//Invoke ("DestroyObject", 1.0f);
		
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
