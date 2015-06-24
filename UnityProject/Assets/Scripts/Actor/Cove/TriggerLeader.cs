using UnityEngine;
using System.Collections;

public class TriggerLeader : MonoBehaviour {

	public LeaderRat leader;

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

		leader = FindObjectOfType<LeaderRat> ();
	}
	
	void OnTriggerEnter(Collider other)
	{

		EventData tempData = new EventData();
		GWorld.FindEvent(EventID,ref tempData);
		
		if(tempData.hasEventOccured)
		{

			Destroy(gameObject);
		}
		else if( other.CompareTag ("Player")) 
		{
			
			PlayerMovement movComp = other.GetComponent<PlayerMovement> ();
			movComp.DisplaySpeechBubble ("Looks like there is some kind of meeting here.");
			leader.StartSpeech();
			GWorld.MarkEventDone(EventID);
			
		}

	}

}
