using UnityEngine;
using System.Collections;

public class Surfboard : CommentActorBase {

	override public void OnInspect()
	{		
		DisplayComment ("That probably belongs to a really cool guy.");
	}

	override public void OnAction()
	{
		DisplayComment ("I'm not much of a surfer..");
	}

}
