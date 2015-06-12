using UnityEngine;
using System.Collections;

public class LizardBeach : NPCBase {
	
	
	// Use this for initialization
	void Start () {
		
		
	}
	
	override public void OnInspect()
	{	
		DisplaySpeechBubble ( "Zzzz..." );
		
	}
	
}