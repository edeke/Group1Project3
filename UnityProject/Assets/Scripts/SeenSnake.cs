using UnityEngine;
using System.Collections;

public class SeenSnake : MonoBehaviour {

	void OnTriggerEnter () {

		Dialoguer.SetGlobalBoolean (3, true);

	}

}
