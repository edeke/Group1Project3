using UnityEngine;
using System.Collections;


public class Fireflies : CommentActorBase
{


	override public void OnInspect()
	{	

		DisplayComment("These fireflies look different from the other ones.");

	}

	override public void OnAction()
	{	
		
		DisplayComment("If only I had something to catch them with!");
		
	}
	
	void DestroyObject()
	{
		Destroy (gameObject);
	}

	override public bool UseItemOnObject(EItem itemType)
	{
		switch (itemType) 
		{
			case EItem.GlassJar :
				Inventory.myInv.AddItem( ItemDatabase.GetItem("JarWithFireflies"), Vector3.zero, false);
				Destroy(gameObject);
			return true;
		}
		
		return false;
	}

	override public EAnimationState AnimationOnItem(EItem itemType)
	{
		switch (itemType) {
				
		case EItem.GlassJar:
			return EAnimationState.Use;
			
		default :
			return EAnimationState.Error;
		}
	}
}
