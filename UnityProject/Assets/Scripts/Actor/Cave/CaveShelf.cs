using UnityEngine;
using System.Collections;

public class CaveShelf : CommentActorBase {

	override public void OnInspect()
	{		
		DisplayComment ("It's a shelf with strange liquids on it.");
	}

	override public void OnAction()
	{
		DisplayComment ("I'm not thirsty right now.");
	}

}
