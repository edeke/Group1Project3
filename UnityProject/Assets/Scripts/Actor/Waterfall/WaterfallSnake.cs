﻿using UnityEngine;
using System.Collections;


public class WaterfallSnake : ClickOnActorBase
{
	string EventID = "SnakeScaredAway";
	private bool snakeScared = false;

	void Start () 
	{
		
		if (!GWorld.TryRegisterEvent (EventID, "Hello"))
		{
			EventData tempData = new EventData();
			GWorld.FindEvent(EventID,ref tempData);
			
			if(tempData.hasEventOccured)
			{
				snakeScared = true;
			}
			
		}

		ClickOnActorBase tempComp = (ClickOnActorBase)this;
		tempComp.Start ();
		
	}

	override public void OnInspect()
	{

		//DisplaySpeechBubble ("Hello");

	}

	public void HissSound()
	{		

		DisplaySpeechBubble("Hiss...");

	}

	override public bool UseItemOnObject(EItem itemType)
	{
		switch ( itemType )
		{
			case EItem.LitTorch :
				SnakeScared();
			return true;
		}

		return false;
	}

	void SnakeScared()
	{
		DisplaySpeechBubble("Arrrgh... !");
		snakeScared = true;
		GWorld.MarkEventDone (EventID);
		//Destroy (gameObject);
	}

}
