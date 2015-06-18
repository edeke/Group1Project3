using UnityEngine;
using System.Collections;

public class LadderToLookout : CommentActorBase 
{
	public Transform target;

	override public void OnInspect()
	{		
		DisplayComment ("That looks interesting.");
	}

	override public void OnAction()
	{
		GWorld.SpawnPlayer (target);
	}

}
