using UnityEngine;
using System.Collections;

public class MainMenu : MonoBehaviour {

	public void StartGame(){

		Application.LoadLevel ("");

	}

	public void Credits(){

		Application.LoadLevel ("");

	}

	public void QuitGame(){

		Application.Quit ();

	}

}
