using UnityEngine;
using System.Collections;

public class OnByNight : MonoBehaviour {

	void Awake(){

		if (GWorld.GetTimeOfTheDay() == TimeOfDay.Night || GWorld.GetTimeOfTheDay() == TimeOfDay.Dawn) {
			gameObject.SetActive (true);
		} else {
			gameObject.SetActive (false);
		}
	}

}
