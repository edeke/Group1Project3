using UnityEngine;
using System.Collections;

public class TutorialTree : MonoBehaviour {

	string EventID = "RucksackFallDown";
	string EventIDBackpack = "RuckSackPickedUp";

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
	

	void OnTriggerEnter(Collider other)
	{
		if (triggerCount > 0) 
		{
			EventData tempData = new EventData();
			GWorld.FindEvent(EventID,ref tempData);
			
			if(tempData.hasEventOccured)
			{



				//Destroy(gameObject);
			}
			else if( other.CompareTag ("Player")) 
			{

				PlayerMovement movComp = other.GetComponent<PlayerMovement> ();
				movComp.DisplaySpeechBubble ("I should try interacting <b>(Right Mouse)</b> with that tree to get my backpack down.");

			}

		}

		triggerCount++;

	}

	void OnTriggerExit(Collider other)
	{

		EventData tempData = new EventData();
		GWorld.FindEvent(EventIDBackpack,ref tempData);
			
		if(tempData.hasEventOccured)
		{
			if( other.CompareTag ("Player")) 
			{
					
				PlayerMovement movComp = other.GetComponent<PlayerMovement> ();
				movComp.DisplaySpeechBubble ("Yay! That wasn't too hard!");
					
			}
				
			Destroy(gameObject);
		}
		
	}

}



