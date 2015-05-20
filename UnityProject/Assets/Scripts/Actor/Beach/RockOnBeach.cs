using UnityEngine;
using System.Collections;


public class RockOnBeach : CommentActorBase
{

	string EventID = "RockOnBeachMoved";
	public Vector3 target;
	bool moveRock = false;
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
				transform.position = target;
			}
			
		}
	
	}

	void Update()
	{
		
		if (moveRock) 
		{
			currentTime += Time.deltaTime;
			transform.position = Vector3.Lerp (startLocation, target, currentTime);
		}
	}

	override public void OnInspect()
	{	

		DisplayComment("A large rock, however I can't move it");

	}

	override public void OnAction()
	{	
		
		DisplayComment("This rock looks <b>suspicious</b> and <b>delicious</b> !");

		//Invoke ("DestroyObject", 1.0f);
		
	}
	
	void DestroyObject()
	{
		Destroy (gameObject);
	}

	override public bool UseItemOnObject(EItem itemType)
	{
		switch (itemType) 
		{
			case EItem.MetalPipe :
				moveRock = true;
				GWorld.MarkEventDone (EventID);
			return true;
		}
		
		return false;
	}

}
