using UnityEngine;
using System.Collections;

public class Waterfall : CommentActorBase {

	override public void OnInspect()
	{		
		DisplayComment ("I love the sound from waterfalls!");
	}

	override public void OnAction()
	{
		DisplayComment ("I can't open it without a key");
	}

}
