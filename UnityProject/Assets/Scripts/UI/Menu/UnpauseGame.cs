using UnityEngine;
using System.Collections;

public class UnpauseGame : MonoBehaviour {

	// Use this for initialization
	void Awake () {
	
		Time.timeScale = 0.5f;

	}

}
