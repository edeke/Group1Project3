using UnityEngine;
using System.Collections;

public class PauseMenu : MonoBehaviour {

	private bool isPaused = false;

	private GameObject UI;

	private GameObject PauseUI;

	// Use this for initialization
	void Start () {
	
		UI = GameObject.Find("MainUI(Clone)");
		PauseUI = GameObject.Find ("PauseMenu");

		PauseUI.SetActive (false);

	}
	
	// Update is called once per frame
	void Update () {
	
		if (Input.GetKeyDown (KeyCode.Escape) && isPaused == false) {

			PauseGame();

		} else if (Input.GetKeyDown (KeyCode.Escape) && isPaused == true) {

			UnpauseGame();
	
		}

	}

	public void PauseGame (){

		isPaused = true; 
		Time.timeScale = 0.0f;
		Debug.Log("Game is paused!");
		
		UI.SetActive(false);

		PauseUI.SetActive (true);

	}

	public void UnpauseGame (){

		isPaused = false;
		Time.timeScale = 1.0f;
		Debug.Log("Game is NOT paused!");
		
		UI.SetActive(true);

		PauseUI.SetActive (false);

	}

	public void QuitGame (){

		Application.Quit();

	}

}
