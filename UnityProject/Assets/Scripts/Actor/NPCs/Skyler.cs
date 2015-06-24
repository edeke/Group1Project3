using UnityEngine;
using System.Collections;

public class Skyler : NPCBase {

	string EventID = "FinishedWithSkyler";

	public bool gottenFireflies = false;
	
	void Start (){

		if (!GWorld.TryRegisterEvent (EventID, "Hello")) 
		{
			EventData tempData = new EventData();
			GWorld.FindEvent(EventID,ref tempData);
			
			if(tempData.hasEventOccured)
			{
				gottenFireflies = true;
			}
		}

	}

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
			Dialoguer.SetGlobalBoolean(13, true);
			gottenFireflies = true;
			GWorld.MarkEventDone (EventID);
			OnTalkTo();
			PlayerMovement moveComp = GWorld.myPlayer.GetComponent<PlayerMovement>();
			moveComp.ForceSetTalkTo( gameObject, gameObject.transform.position);


			return true;
		}
		
		return false;
	}

}
