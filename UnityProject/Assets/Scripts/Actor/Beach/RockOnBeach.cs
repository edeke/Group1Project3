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
				else
				{
					body.mass = 1000;
					body.drag = 2;
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
		EventData tempData = new EventData();
		GWorld.FindEvent(EventID,ref tempData);
		
		if (tempData.hasEventOccured) 
		{
			DisplayComment ("I should watch my toes!");
		} 
		else 
		{
			DisplayComment ("It's a large rock.");
		}

	}

	override public void OnAction()
	{	
		
		DisplayComment("This rock looks <b>suspicious</b> but it's to heavy to move.");

		//Invoke ("DestroyObject", 1.0f);
		
	}

	override public EAnimationState AnimationOnAction()
	{	
		
		
		return animationOnAction;
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
				else
				{
					body.mass = 1000;
					body.drag = 2;
				}

				GWorld.MarkEventDone (EventID);
			return true;
		}
		
		return false;
	}

}
