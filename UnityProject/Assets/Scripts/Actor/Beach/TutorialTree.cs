using UnityEngine;
using System.Collections;

public class TutorialTree : MonoBehaviour {

	string EventID = "RucksackFallDown";

	int triggerCount = 0;

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
	
	// Update is called once per frame
	void OnTriggerEnter(Collider other)
	{
		if (triggerCount > 0) 
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
				movComp.DisplaySpeechBubble ("I should try interacting <b>(Right Mouse)</b> with that tree to get my backpack down.");

			}

		}

		triggerCount++;

	}
}
