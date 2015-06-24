using UnityEngine;
using System.Collections;

public class OldCoot : NPCBase {

	string EventID = "GottenFirstBottle";
	string EventID2 = "GottenSecondBottle";
	string EventID3 = "GottenThirdBottle";

	int heldBottles = 0;
	
	// Use this for initialization
	void Start () {

	
	}

	public void DontTouchTheJar ()
	{
		DisplaySpeechBubble ("You can't take that!");
	}
	
	override public void OnInspect()
	{	
		DisplaySpeechBubble ( "I need something to drink!" );
		
	}

	override public bool UseItemOnObject(EItem itemType)
	{
		switch ( itemType )
		{
		case EItem.Bottle1 :
			heldBottles ++;
			GottenFirstBottle();
			return true;
			
		case EItem.Bottle2 :
			if(heldBottles == 1){
				GottenSecondBottle();
				heldBottles ++;
				return true;
			} else {
				DisplaySpeechBubble ( "I need something else first!" );
			}
			break;

		case EItem.Bottle3 :
			if(heldBottles == 2){
				GottenThirdBottle();
				heldBottles ++;
				return true;
				Dialoguer.SetGlobalBoolean(12, true);
			} else {
				DisplaySpeechBubble ( "I need something else first!" );
			}
			break;
		}
		
		return false;
	}

	override public EAnimationState AnimationOnItem(EItem itemType)
	{
		switch (itemType) 
		{
		case EItem.Bottle1 :
			return EAnimationState.Use;
			
		case EItem.Bottle2 :
			return EAnimationState.Use;

		case EItem.Bottle3 :
			return EAnimationState.Use;
			
		default :
			return EAnimationState.Error;
		}
	}
	
	void GottenFirstBottle(){
		Dialoguer.SetGlobalBoolean (6, true);
		OnTalkTo();
		PlayerMovement moveComp = GWorld.myPlayer.GetComponent<PlayerMovement>();
		moveComp.ForceSetTalkTo( gameObject, gameObject.transform.position);
		GWorld.MarkEventDone (EventID);
	}

	void GottenSecondBottle(){
		Dialoguer.SetGlobalBoolean (7, true);
		OnTalkTo();
		PlayerMovement moveComp = GWorld.myPlayer.GetComponent<PlayerMovement>();
		moveComp.ForceSetTalkTo( gameObject, gameObject.transform.position);
		GWorld.MarkEventDone (EventID2);
	}

	void GottenThirdBottle(){
		Dialoguer.SetGlobalBoolean (8, true);
		OnTalkTo();
		PlayerMovement moveComp = GWorld.myPlayer.GetComponent<PlayerMovement>();
		moveComp.ForceSetTalkTo( gameObject, gameObject.transform.position);
		GWorld.MarkEventDone (EventID3);
	}

}
