using UnityEngine;
using System.Collections;

public class Skyler : NPCBase {

	public bool gottenFireflies = false;
	
	// Use this for initialization

	public void DontTouchTheJar ()
	{
		DisplaySpeechBubble ("Don't touch that!");
	}
	
	override public void OnInspect()
	{	

		DisplaySpeechBubble ( "What am I supposed to do?" );
		
	}

	override public EAnimationState AnimationOnItem(EItem itemType)
	{
		switch (itemType) 
		{
		case EItem.JarWithFireflies :
			return EAnimationState.Use;
			
		default :
			return EAnimationState.Error;
		}
	}

	override public bool UseItemOnObject(EItem itemType)
	{
		switch ( itemType )
		{
		case EItem.JarWithFireflies :
			Dialoguer.SetGlobalBoolean(17, true);
			gottenFireflies = true;

			OnTalkTo();
			PlayerMovement moveComp = GWorld.myPlayer.GetComponent<PlayerMovement>();
			moveComp.ForceSetTalkTo( gameObject, gameObject.transform.position);


			return true;
		}
		
		return false;
	}

}
