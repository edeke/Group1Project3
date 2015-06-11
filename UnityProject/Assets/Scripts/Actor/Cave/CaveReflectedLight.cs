using UnityEngine;
using System.Collections;

public class CaveReflectedLight : MonoBehaviour {


	string EventID = "MirrorPlacedCave";
	bool turnOnLight = false;

	Light lightComp;


	// Use this for initialization
	void Start () 
	{
		lightComp = GetComponent<Light> ();
		lightComp.enabled = false;

		if (!GWorld.TryRegisterEvent (EventID, "Hello"))
		{
			EventData tempData = new EventData();
			GWorld.FindEvent(EventID,ref tempData);
			
			if(tempData.hasEventOccured)
			{
				if( GWorld.GetTimeOfTheDay() == TimeOfDay.Night || GWorld.GetTimeOfTheDay() == TimeOfDay.Dawn)
				{
					lightComp.enabled = true;
				}
			}
		}

	}

	
	public void TurnOnLight()
	{
		if( GWorld.GetTimeOfTheDay() == TimeOfDay.Night || GWorld.GetTimeOfTheDay() == TimeOfDay.Dawn)
		{
			lightComp.enabled = true;
			turnOnLight = true;
		}
	}

}
