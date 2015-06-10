using UnityEngine;
using System.Collections;

public class SurferDude : ClickOnActorBase {

	private bool isTalking;
	private bool isWalking;

	Animator anim;

	Vector3 posPrev;
	float maxSpeed = 8;

	Vector3 destination;


	// Use this for initialization
	void Start () {

		anim = GetComponentInChildren<Animator> ();
	
	}

	void Update (){
		
		//calculate speed
		float speed = (transform.position - posPrev).magnitude / Time.deltaTime / maxSpeed;
		//speed /= maxSpeed;
		anim.SetFloat ("speed", speed);
		
		posPrev = transform.position;
		
		if (isTalking == true) {
			anim.SetBool ("Talk", true);
		} 
		
		if (isTalking == true && GWorld.dialogOpen == false) {
			anim.SetBool ("Talk", false);
			isTalking = false;
			
		}

//		if (Vector3.Distance (destination, target.position) > 1.0f) {
//			destination = target.position;
//			agent.destination = destination;
//		}

	}
	
	override public void OnTalkTo()
	{
		
		Dialoguer.StartDialogue (dialog, null);
		
		isTalking = true;
		
	}
	
	override public void OnInspect()
	{	
		//DisplaySpeechBubble ( "Hello" );
		DisplaySpeechBubble ( "Hey duuude!" );
		
	}

}
