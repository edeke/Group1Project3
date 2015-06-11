using UnityEngine;
using System.Collections;

public class CaveBottles : CommentActorBase {

	override public void OnInspect()
	{		
		DisplayComment ("Some empty bottles.");
	}

	override public void OnAction()
	{
		DisplayComment ("No, they are not very clean.");
	}

}
