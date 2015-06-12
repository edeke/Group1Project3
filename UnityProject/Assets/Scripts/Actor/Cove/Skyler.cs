using UnityEngine;
using System.Collections;

public class Skyler : ClickOnActorBase {
	
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

		if (anim) {
			anim.SetFloat ("speed", speed);
		}

		posPrev = transform.position;
		
		if (isTalking == true) {
			anim.SetBool ("Talk", true);
		} 
		
		if (isTalking == true && GWorld.dialogOpen == false) {
			anim.SetBool ("Talk", false);
			isTalking = false;
			
		}
		
	}

	public void DontTouchTheJar (){
		DisplaySpeechBubble ("Don't touch that jar!");
	}
	
	override public void OnTalkTo()
	{
		
		Dialoguer.StartDialogue (dialog, null);
		
		isTalking = true;
		
	}
	
	override public void OnInspect()
	{	
		//DisplaySpeechBubble ( "Hello" );
		DisplaySpeechBubble ( "I'm so confused!" );
		
	}
	
}
