using UnityEngine;
using System.Collections;


public class TreeOnBeach : CommentActorBase
{
	public GameObject rucksack;
	string EventID = "RucksackFallDown";

	void Start () 
	{

		if (!GWorld.TryRegisterEvent (EventID, "Hello"))
		{
			EventData tempData = new EventData();
			GWorld.FindEvent(EventID,ref tempData);

			if(tempData.hasEventOccured && rucksack != null)
			{
				rucksack.AddComponent<Rigidbody> ();
			}

		}
	}

	override public void OnInspect()
	{	

		DisplayComment("A tree, there is something hanging in it");

	}

	override public void OnAction()
	{	
		if (rucksack != null) 
		{
			GWorld.MarkEventDone (EventID);

			rucksack.AddComponent<Rigidbody> ();

		}
		
	}

}
