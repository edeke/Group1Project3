using UnityEngine;
using System.Collections;

public class SpecialChest : CommentActorBase
{

	public Shopkeeper shopkeeper;

	override public void OnInspect()
	{		
		DisplayComment ("That's not mine!");
	}

	override public void OnAction()
	{

		shopkeeper.OnChest ();

		//DisplayComment ("I'm not a thief!");
	}

}
