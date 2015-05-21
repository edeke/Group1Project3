using UnityEngine;
using System.Collections;


public class BoatWreck : CommentActorBase
{

	string EventID = "BoatWreckMoved";
	public Vector3 target;
	Vector3 startLocation;
	float currentTime;


	void Start () 
	{
		startLocation = transform.position;
		currentTime = 0.0f;

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

	/*override public bool UseItemOnObject(EItem itemType)
	{
		switch (itemType) 
		{
			case EItem.MetalPipe :
				moveWreck = true;
				GWorld.MarkEventDone (EventID);
			return true;
		}
		
		return false;
	}*/

	public void OpenPassage()
	{
		GWorld.MarkEventDone (EventID);

		NavMeshObstacle comp = GetComponent<NavMeshObstacle> ();
		Destroy (comp);

	}

}
