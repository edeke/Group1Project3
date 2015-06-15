using UnityEngine;
using System.Collections;

public class SeenSnake : MonoBehaviour {

	void Awake (){
		Dialoguer.SetGlobalBoolean (3, true);
	}

	void OnTriggerEnter (Collider other) {
		if (other.tag == "Player") {
			Dialoguer.SetGlobalBoolean (3, false);
		}
	}

}
