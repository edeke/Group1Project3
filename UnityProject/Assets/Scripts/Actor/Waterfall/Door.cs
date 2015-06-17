using UnityEngine;
using System.Collections;

public class Door : CommentActorBaseTest {

	override public void OnInspect()
	{		
		DisplayComment ("It's a locked door.");
	}

	override public void OnAction()
	{
		DisplayComment ("I can't open it without a key.");
	}

}
