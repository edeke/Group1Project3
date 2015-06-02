using UnityEngine;
using System.Collections;


public class RockOnBeach : CommentActorBase
{

	string EventID = "RockOnBeachMoved";
	string EventIDPosition = "RockOnBeachPosition";
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
				Rigidbody body = GetComponent<Rigidbody>();

				if(body == null)
				{
					gameObject.AddComponent<Rigidbody> ();
				}

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

	/*void Update()
	{
		
		if (moveRock) 
		{
			currentTime += Time.deltaTime;
			transform.position = Vector3.Lerp (startLocation, target, currentTime);
		}
	}*/

	void OnDestroy()
	{
		//store position of object befor changing scene or quiting
		GWorld.StorePositionForEvent (EventIDPosition, transform.position, transform.rotation);
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

				Rigidbody body = GetComponent<Rigidbody>();
				if(body == null)
				{
					gameObject.AddComponent<Rigidbody> ();
				}

				GWorld.MarkEventDone (EventID);
			return true;
		}
		
		return false;
	}

}
