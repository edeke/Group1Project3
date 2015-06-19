using UnityEngine;
using System.Collections;

public class ShopDoor : CommentActorBase 
{

	override public void OnInspect()
	{		
		DisplayComment ("Looks like the shop is open.");
	}

	override public void OnAction()
	{
		GWorld.LoadScene (ZoneBase.AntiqueButique);
	}

}
