using UnityEngine;
using System.Collections;

public class TriggerLeader : MonoBehaviour {

	LeaderRat leader;
	public GameObject forceMoveLocation;

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
			movComp.ForceMoveToLocation( forceMoveLocation.transform.position );
			Invoke ("ForcePlayerIdle", 3.0f);
			Invoke ("ForcePlayerUnIdle", 30.0f);
			leader.StartSpeech();
			GWorld.MarkEventDone(EventID);
			
		}

	}

	void ForcePlayerIdle()
	{
		PlayerMovement movComp = GWorld.myPlayer.GetComponent<PlayerMovement> ();
		movComp.ForceIdle (true);
	}

	void ForcePlayerUnIdle()
	{
		PlayerMovement movComp = GWorld.myPlayer.GetComponent<PlayerMovement> ();
		movComp.ForceIdle (false);
	}

}
