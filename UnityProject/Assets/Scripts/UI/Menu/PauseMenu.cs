using UnityEngine;
using System.Collections;

public class PauseMenu : MonoBehaviour {

	private bool isPaused = false;

	private GameObject UI;

	// Use this for initialization
	void Start () {
	
		UI = GameObject.Find("MainUI(Clone)");

	}
	
	// Update is called once per frame
	void Update () {
	
		if (Input.GetKeyDown (KeyCode.Escape) && isPaused == false) {

			isPaused = true; 
			Time.timeScale = 0.0f;
			Debug.Log("Game is paused!");

			UI.SetActive(false);

		} else if (Input.GetKeyDown (KeyCode.Escape) && isPaused == true) {

			isPaused = false;
			Time.timeScale = 1.0f;
			Debug.Log("Game is NOT paused!");

			UI.SetActive(true);

		}

	}
}
