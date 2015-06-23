﻿using UnityEngine;
using System.Collections;


public class Fireplace : CommentActorBase
{


	override public void OnInspect()
	{	

		DisplayComment("A warm fireplace.");

	}

	override public void OnAction()
	{	
		
		DisplayComment("I could use a hotdog at this moment!");
		
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
				PlayerMovement movComp = GWorld.myPlayer.GetComponent<PlayerMovement> ();
				movComp.DisplaySpeechBubble ("Now I have fire!");
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
