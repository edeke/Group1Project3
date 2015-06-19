using UnityEngine;
using System.Collections;

public class CellarDoor : CommentActorBase 
{

	override public void OnInspect()
	{		
		DisplayComment ("That's the way down.");
	}

	override public void OnAction()
	{
		GWorld.LoadScene (ZoneBase.Cave);
	}

}
