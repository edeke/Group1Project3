using UnityEngine;
using System.Collections;

public class CaveGrave : CommentActorBase {

	override public void OnInspect()
	{		
		DisplayComment ("It's some graves, they look old.");
	}

	override public void OnAction()
	{
		DisplayComment ("No.");
	}

}
