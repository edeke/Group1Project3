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

		GWorld.FadeToBlack (true);
		Invoke ("RemoveBlack", 1.0f);

	}

	private void RemoveBlack()
	{

		GWorld.SpawnPlayer (target);
		GWorld.FadeToBlack (false);

	}

}
