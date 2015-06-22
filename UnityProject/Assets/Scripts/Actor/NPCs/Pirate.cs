using UnityEngine;
using System.Collections;
using System;


public class Pirate : NPCBase
{
	string EventID = "RingGivenToPirate";
	bool ringGiven = false;
	
	void Start () 
	{

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
	
	override public void OnInspect()
	{	
		EventData tempData = new EventData();
		GWorld.FindEvent(EventID,ref tempData);
		
		if(tempData.hasEventOccured)
		{
			DisplaySpeechBubble ( "Thank you for finding my ring." );
		}
		else
		{
			DisplaySpeechBubble ( "How could I loose it..." );
		}
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
