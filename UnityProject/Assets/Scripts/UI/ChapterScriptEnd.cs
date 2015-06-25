using UnityEngine;
using System.Collections;

public class ChapterScriptEnd : MonoBehaviour {


	Animator anim;


	// Use this for initialization
	void Start () 
	{
		anim = GetComponent<Animator> ();
	}
	
	// Update is called once per frame
	void Update ()
	{
		if(Input.GetKeyDown("escape"))
		{

			GWorld.QuitGame();
			Application.LoadLevel("MainMenu");
			Destroy (gameObject);

		}
	}
}
