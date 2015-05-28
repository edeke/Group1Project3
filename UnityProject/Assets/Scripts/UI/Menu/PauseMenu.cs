using UnityEngine;
using System.Collections;

public class PauseMenu : MonoBehaviour {

	private bool isPaused = false;

	private GameObject UI;

	private GameObject PauseUI;

	public GameObject rpgGUI;

	// Use this for initialization
	void Start () {
	
		UI = GWorld.mainUI;
		PauseUI = GameObject.Find ("PauseMenu");
		rpgGUI = GWorld.mainDialog;

		PauseUI.SetActive (false);

		UnpauseGame();

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
				
		UI.SetActive(false);

		PauseUI.SetActive (true);

		rpgGUI.SetActive (false);

	}

	public void UnpauseGame (){

		isPaused = false;
		Time.timeScale = 1.0f;

		Debug.Log ("Pressed resume");
				
		UI.SetActive(true);

		PauseUI.SetActive (false);

		rpgGUI.SetActive (true);

	}

	public void MainMenu(){

		Application.LoadLevel ("MainMenu");

		Dialoguer.EndDialogue ();

	}

	public void QuitGame (){

		Application.Quit();

	}

}
