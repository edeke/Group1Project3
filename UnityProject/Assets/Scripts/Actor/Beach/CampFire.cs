using UnityEngine;
using System.Collections;

public class CampFire : CommentActorBase {

	override public void OnInspect()
	{		
		//DisplaySpeechBubble ("That's not mine!");
		DisplayComment ("A Campfire.");
	}

	override public void OnAction()
	{
		DisplayComment ("I don't want to touch that.");
	}

	/*override public void OnTalkTo()
	{

	}*/

}
