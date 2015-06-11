using UnityEngine;
using System.Collections;


public class Pirate : ClickOnActorBase
{
	string EventID = "RingGivenToPirate";
	bool ringGiven = false;

	Vector3 posPrev;
	float maxSpeed = 8;

	Animator anim;

	private bool isTalking;
	private bool isWalking;

	void Start () 
	{
		anim = GetComponentInChildren<Animator> ();
		
		if (!GWorld.TryRegisterEvent (EventID, "Hello"))
		{
			EventData tempData = new EventData();
			GWorld.FindEvent(EventID,ref tempData);
			
			if(tempData.hasEventOccured)
			{
				ringGiven = true;
			}
			
		}
		
	}

	void Update (){

		//calculate speed
		float speed = (transform.position - posPrev).magnitude / Time.deltaTime / maxSpeed;
		//speed /= maxSpeed;
		anim.SetFloat ("speed", speed);
		
		posPrev = transform.position;

		if (isTalking == true) {
			anim.SetBool ("Talk", true);
		} 

		if (isTalking == true && GWorld.dialogOpen == false) {
			anim.SetBool ("Talk", false);
			isTalking = false;

		}

	}

	override public void OnTalkTo()
	{

		Dialoguer.StartDialogue (dialog, null);

		isTalking = true;

	}

	override public void OnInspect()
	{	
		//DisplaySpeechBubble ( "Hello" );
		DisplaySpeechBubble ( "How could I loose it..." );

	}

	override public bool UseItemOnObject(EItem itemType)
	{
		switch ( itemType )
		{
			case EItem.MetalPipe :
				DisplaySpeechBubble("I don't want that.");
				return false;

			case EItem.PirateRing :
				RingGivenToPirate();
				return true;
		}

		return false;
	}

	void RingGivenToPirate()
	{
		DisplaySpeechBubble("Okey, you can enter now.");
		ringGiven = true;
		GWorld.MarkEventDone (EventID);
	}

	public void GetAwayFromThere()
	{
		DisplaySpeechBubble("Stop right there!");
	}

	override public EAnimationState AnimationOnItem(EItem itemType)
	{
		switch (itemType) 
		{
			case EItem.MetalPipe :
			return EAnimationState.Use;

			case EItem.PirateRing :
				return EAnimationState.Use;
				
			default :
				return EAnimationState.Error;
		}
	}
}
