using UnityEngine;
using System.Collections;

public class Barrel : CommentActorBase 
{

	override public void OnInspect()
	{		
		DisplayComment ("It's just a barrel!");
	}

	override public void OnAction()
	{
		DisplayComment ("There is nothing of value inside.");
	}
}
