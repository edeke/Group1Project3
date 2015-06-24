using UnityEngine;
using System.Collections;

public class ThugRat : NPCBase {

	string EventID = "LeaderSpeak";

	// Use this for initialization
	void Start ()
	{
		if (!GWorld.TryRegisterEvent (EventID, "Hello"))
		{
			EventData tempData = new EventData();
			GWorld.FindEvent(EventID,ref tempData);
			
			if(tempData.hasEventOccured)
			{
				Destroy(gameObject);
			}
			
		}
	
	}

	virtual public void OnTalkTo()
	{
		DisplayComment ("I don't think he wants to talk to me.");
	}
	

	override public void OnInspect()
	{	
		DisplaySpeechBubble ( "Hey!" );
		
	}

	public void ActivateThug ( float randomTime )
	{
		Invoke ("DoThugThings", randomTime);

	}

	public void Hurray(int random)
	{

		switch (random)
		{
			case 0 :
				DisplaySpeechBubble ("Hurraay!!");
			break;

			case 1 :
				DisplaySpeechBubble ("Awesome!");
			break;

			case 2 :
				DisplaySpeechBubble ("Wohoo!");
			break;

			case 3 :
				DisplaySpeechBubble ("Splendid!");
			break;

		}

	}
	

	void DoThugThings()
	{
		DisplaySpeechBubble ("Hurraay!!");
		Invoke ("StartWalking", Random.Range (5.0f, 10.0f));
	}

	void StartWalking()
	{
		agent.SetDestination ( walkToLocation [0] );
	}

}
