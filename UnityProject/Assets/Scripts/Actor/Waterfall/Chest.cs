using UnityEngine;
using System.Collections;

public class Chest : CommentActorBase {

	override public void OnInspect()
	{		
		DisplayComment ("That's not mine!");
	}

	override public void OnAction()
	{
		DisplayComment ("I'm not a thief!");
	}

}
