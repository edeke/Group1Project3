using UnityEngine;
using System.Collections;

public class UILetter : MonoBehaviour 
{

	Animator anim;
	
	void Awake()
	{
		anim = GetComponent<Animator> ();
	}


	public void Update()
	{



		if (Input.GetMouseButtonUp (0)) 
		{
			anim.SetBool("Quit", true);
			Invoke ("Destroy", 0.75f);
		}
	}

	void Destroy()
	{

		string path = "Prefabs/UI/Chapters/ChapterEndUI";
		GameObject comp = (GameObject) Instantiate(Resources.Load(path));
		
		if(!comp)
		{
			Debug.Log ("Failed to Load Letter1 - " + path);
		}

		GWorld.FadeToBlack (true);
		Destroy (gameObject);

	}

}
