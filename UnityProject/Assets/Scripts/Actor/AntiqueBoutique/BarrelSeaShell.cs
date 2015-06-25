using UnityEngine;
using System.Collections;

public class BarrelSeaShell : CommentActorBase 
{

	override public void OnInspect()
	{		
		DisplayComment ("It's a barrel full of sea shells.");
	}

	override public void OnAction()
	{
		DisplayComment ("There is only a bunch of sea shells.");
	}

}
