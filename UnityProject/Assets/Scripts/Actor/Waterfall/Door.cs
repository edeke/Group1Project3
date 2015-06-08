using UnityEngine;
using System.Collections;

public class Door : CommentActorBase {

	override public void OnInspect()
	{		
		DisplayComment ("It's a locked door");
	}

	override public void OnAction()
	{
		DisplayComment ("I can't open it without a key");
	}

}
