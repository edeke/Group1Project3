using UnityEngine;
using System.Collections;

public class SurferDude : NPCBase {

	
	// Use this for initialization
	void Start () {

	
	}
	
	override public void OnTalkTo()
	{
		
		Dialoguer.StartDialogue (dialog, null);
		
		isTalking = true;
		
	}
	
	override public void OnInspect()
	{	
		DisplaySpeechBubble ( "Hey duuude!" );
		
	}

}
