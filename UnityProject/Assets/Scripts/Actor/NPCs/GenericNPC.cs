using UnityEngine;
using System.Collections;

public class GenericNPC : NPCBase {

	
	// Use this for initialization
	void Start () {

	
	}
	
	override public void OnInspect()
	{	
		DisplaySpeechBubble ( "Hey!" );
		
	}

}
