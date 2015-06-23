using UnityEngine;
using System.Collections;

public class ChapterScript : MonoBehaviour {

	float currentTime;
	float TTL = 5.0f;
	Animator anim;


	// Use this for initialization
	void Start () 
	{
		currentTime = TTL;
		anim = GetComponent<Animator> ();
	}
	
	// Update is called once per frame
	void Update ()
	{
		currentTime -= Time.deltaTime;

		if (currentTime <= 1.0f) 
		{
			anim.SetBool("Quit",true);
		}

		if (currentTime <= 0.0f)
		{
			Destroy(gameObject);
		}
	}
}
