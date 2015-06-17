using UnityEngine;
using System.Collections;

public class Barrel : CommentActorBaseTest {

	override public void OnInspect()
	{		
		DisplayComment ("It's just a barrel!");
	}

	override public void OnAction()
	{
		DisplayComment ("I can't do anything with this.");
	}

}
