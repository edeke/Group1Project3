using UnityEngine;
using System.Collections;

public class CoveDoor : CommentActorBase 
{

	override public void OnInspect()
	{		
		DisplayComment ("That's the way out.");
	}

	override public void OnAction()
	{
		GWorld.LoadScene (ZoneBase.Cove);
	}

}
