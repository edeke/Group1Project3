using UnityEngine;
using System.Collections;


public class CampFireNight : CommentActorBase
{


	override public void OnInspect()
	{	

		DisplayComment("A cozy campfire.");

	}

	override public void OnAction()
	{	
		
		DisplayComment("Ouch! That's hot!");
		
	}
	
	void DestroyObject()
	{
		Destroy (gameObject);
	}

	override public bool UseItemOnObject(EItem itemType)
	{
		switch (itemType) 
		{
			case EItem.UnlitTorch :
				Inventory.myInv.AddItem( ItemDatabase.GetItem("LitTorch"), Vector3.zero, false);
			return true;
		}
		
		return false;
	}

	override public EAnimationState AnimationOnItem(EItem itemType)
	{
		switch (itemType) 
		{
			case EItem.UnlitTorch :
				return EAnimationState.Use;
				
			default :
				return EAnimationState.Error;
		}
	}

}
