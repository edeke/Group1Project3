using UnityEngine;
using System.Collections;

public class CaveTable : CommentActorBase {

	override public void OnInspect()
	{		
		DisplayComment ("It's a table, looks like people have been here.");
	}

	override public void OnAction()
	{
		DisplayComment ("I don't have anyone to play with.");
	}

}
