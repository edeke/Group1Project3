using UnityEngine;
using System.Collections;

public class Raft : CommentActorBase {

	override public void OnInspect()
	{		
		//DisplaySpeechBubble ("That's not mine!");
		DisplayComment ("Oh no! My raft is broken!");
	}

	override public void OnAction()
	{
		DisplayComment ("I don't want to carry that around.");
	}

	/*override public void OnTalkTo()
	{

	}*/

}
