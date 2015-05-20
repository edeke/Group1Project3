using UnityEngine;
using UnityEngine.UI;
using System.Collections;

public class MainMenu : MonoBehaviour {

	public Canvas main;
	public Canvas options;
	public Canvas credits;
	public Canvas startGame;
	public Canvas quitGame;
	public InputField playerName;
	public Button acceptButton;

	private string chosenName;

	void Start () {

		PlayerPrefs.DeleteKey ("Player Name");

		main.gameObject.SetActive (true);
		options.gameObject.SetActive (false);
		credits.gameObject.SetActive (false);
		startGame.gameObject.SetActive (false);
		quitGame.gameObject.SetActive (false);

	}

	void Update (){

		chosenName = playerName.text;

		if (Input.GetKeyDown (KeyCode.Escape)) {
			BackButton();
		}

		Debug.Log (PlayerPrefs.GetString("Player Name"));

		if (playerName.text.Length > 0) {

			acceptButton.interactable = true;
						
		} else {

			acceptButton.interactable = false;

		}

	}

	public void StartGame(){

		main.gameObject.SetActive (false);
		options.gameObject.SetActive (false);
		credits.gameObject.SetActive (false);
		startGame.gameObject.SetActive (true);
		quitGame.gameObject.SetActive (false);

	}

	public void Credits(){

		main.gameObject.SetActive (false);
		options.gameObject.SetActive (false);
		credits.gameObject.SetActive (true);
		startGame.gameObject.SetActive (false);
		quitGame.gameObject.SetActive (false);

	}

	public void QuitGame(){

		main.gameObject.SetActive (false);
		options.gameObject.SetActive (false);
		credits.gameObject.SetActive (false);
		startGame.gameObject.SetActive (false);
		quitGame.gameObject.SetActive (true);

	}

	public void Options(){
		
		main.gameObject.SetActive (false);
		options.gameObject.SetActive (true);
		credits.gameObject.SetActive (false);
		startGame.gameObject.SetActive (false);
		quitGame.gameObject.SetActive (false);
		
	}

	public void BackButton(){

		main.gameObject.SetActive (true);
		options.gameObject.SetActive (false);
		credits.gameObject.SetActive (false);
		startGame.gameObject.SetActive (false);
		quitGame.gameObject.SetActive (false);

	}

	public void AcceptName(){

		PlayerPrefs.SetString ("Player Name", chosenName);
		Application.LoadLevel("MechanicsAndCamera");

	}

	public void AcceptQuit(){
		
		Application.Quit ();
		
	}

}
