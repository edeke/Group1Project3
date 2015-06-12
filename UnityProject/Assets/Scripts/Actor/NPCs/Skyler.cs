using UnityEngine;
using System.Collections;

public class Skyler : NPCBase {

	
	// Use this for initialization
	void Start () {
		
	}

	public void DontTouchTheJar ()
	{
		DisplaySpeechBubble ("Don't touch that jar!");
	}
	
	override public void OnTalkTo()
	{
		
		Dialoguer.StartDialogue (dialog, null);
		
		isTalking = true;
		
	}
	
	override public void OnInspect()
	{	

		DisplaySpeechBubble ( "I'm so confused!" );
		
	}
	
}
