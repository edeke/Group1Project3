using UnityEngine;
using System.Collections;

public class CaveButton : CommentActorBase {

	override public void OnInspect()
	{		
		DisplayComment ("I don't know what that is.");
	}

	override public void OnAction()
	{
		DisplayComment ("I have no idea what to use it for.");
	}

}
