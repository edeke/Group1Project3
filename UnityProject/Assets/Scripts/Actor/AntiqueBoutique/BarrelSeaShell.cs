using UnityEngine;
using System.Collections;

public class BarrelSeaShell : CommentActorBase 
{

	override public void OnInspect()
	{		
		DisplayComment ("It's a barrel of sea shells.");
	}

	override public void OnAction()
	{
		DisplayComment ("Na, it's only sea shells.");
	}

}
