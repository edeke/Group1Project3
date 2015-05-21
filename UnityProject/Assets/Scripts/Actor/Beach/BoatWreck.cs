using UnityEngine;
using System.Collections;


public class BoatWreck : CommentActorBase
{

	string EventID = "BoatWreckMoved";

	void Start () 
	{

		if (!GWorld.TryRegisterEvent (EventID, "Hello"))
		{
			EventData tempData = new EventData();
			GWorld.FindEvent(EventID,ref tempData);
			
			if(tempData.hasEventOccured)
			{
				NavMeshObstacle comp = GetComponent<NavMeshObstacle> ();
				Destroy (comp);
			}
			
		}
	
	}

	override public void OnInspect()
	{	

		DisplayComment("The wreck, I can't move it");

	}

	override public void OnAction()
	{	
		
		DisplayComment("Its to heavy!");

	}

	public void OpenPassage()
	{
		GWorld.MarkEventDone (EventID);

		NavMeshObstacle comp = GetComponent<NavMeshObstacle> ();
		Destroy (comp);

	}

}
