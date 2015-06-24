using UnityEngine;
using System.Collections;

public class SpecialChest : CommentActorBase
{
	
	override public void OnInspect()
	{		
		DisplayComment ("That's not mine!");
	}

	override public void OnAction()
	{

		FindObjectOfType<Shopkeeper> ().OnChest ();
		//DisplayComment ("I'm not a thief!");
	}

}
