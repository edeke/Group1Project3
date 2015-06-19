using UnityEngine;
using System.Collections;

public class SeenSnake : MonoBehaviour {

	string EventID = "SeenSnake";

	void Update(){

		if (!GWorld.TryRegisterEvent (EventID, "Hello")) 
		{
			EventData tempData = new EventData();
			GWorld.FindEvent(EventID,ref tempData);
			
			if (!tempData.hasEventOccured) 
			{
				Dialoguer.SetGlobalBoolean (3, true);
			} 
			else 
			{
				Dialoguer.SetGlobalBoolean (3, false);
			}
		}

	}

	void OnTriggerEnter (Collider other) {
		if (other.tag == "Player") {
			GWorld.MarkEventDone (EventID);
		}
	}

}
