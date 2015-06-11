using UnityEngine;
using System.Collections;

public class CaveReflectedLight : MonoBehaviour {


	string EventID = "MirrorPlacedCave";
	bool turnOnLight = false;


	Light lightComp;
	float intensityStart;


	// Use this for initialization
	void Start () 
	{
		lightComp = GetComponent<Light> ();
		lightComp.enabled = false;

		intensityStart = lightComp.intensity;
		lightComp.intensity = 0.0f;

		if (!GWorld.TryRegisterEvent (EventID, "Hello"))
		{
			EventData tempData = new EventData();
			GWorld.FindEvent(EventID,ref tempData);
			
			if(tempData.hasEventOccured)
			{
				if( GWorld.GetTimeOfTheDay() == TimeOfDay.Night || GWorld.GetTimeOfTheDay() == TimeOfDay.Dawn)
				{
					if(lightComp != null)
					{
						lightComp.enabled = true;
						lightComp.intensity = intensityStart;
					}
				}
			}
		}


	

	}

	void Update()
	{

		if (turnOnLight)
		{
			float currentIntensity = lightComp.intensity;
			if(currentIntensity < intensityStart)
			{
				lightComp.intensity += Time.deltaTime;
			}
		}

	}

	
	public void TurnOnLight()
	{
		if( GWorld.GetTimeOfTheDay() == TimeOfDay.Night || GWorld.GetTimeOfTheDay() == TimeOfDay.Dawn)
		{
			if(lightComp != null)
			{
				lightComp.enabled = true;
				turnOnLight = true;
			}
		}
	}

}
