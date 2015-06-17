using UnityEngine;
using System.Collections;

public class Chest : CommentActorBaseTest {

	override public void OnInspect()
	{		
		DisplayComment ("That's not mine!");
	}

	override public void OnAction()
	{
		DisplayComment ("I'm not a thief!");
	}

}
