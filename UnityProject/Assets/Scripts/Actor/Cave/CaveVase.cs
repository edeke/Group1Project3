using UnityEngine;
using System.Collections;

public class CaveVase : CommentActorBase {

	override public void OnInspect()
	{		
		DisplayComment ("It's an old vase.");
	}

	override public void OnAction()
	{
		DisplayComment ("It's filled with dirt and is to heavy to move.");
	}

}
