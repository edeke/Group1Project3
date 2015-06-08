using UnityEngine;
using System.Collections;


public class Pirate : ClickOnActorBase
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

		ClickOnActorBase tempComp = (ClickOnActorBase)this;
		tempComp.Start ();
		
	}

	override public void OnTalkTo()
	{

		Dialoguer.StartDialogue (dialog, null);

	}

	override public void OnInspect()
	{	
		//DisplaySpeechBubble ( "Hello" );
		DisplaySpeechBubble ( "It's a pirate... Hello Weee oosog ooasdgfads" );

	}

	override public bool UseItemOnObject(EItem itemType)
	{
		switch ( itemType )
		{
			case EItem.Apple :
				DisplaySpeechBubble("Blää vill inte ha äpple");
				return false;

			case EItem.Pear :
				DisplaySpeechBubble("Usch, Tvi ! ");
				return false;

			case EItem.MetalPipe :
				DisplaySpeechBubble("Vad ska jag med den till ?");
				return false;

			case EItem.PirateRing :
				RingGivenToPirate();
				return true;
		}

		return false;
	}

	void RingGivenToPirate()
	{
		DisplaySpeechBubble("Yay, du hitta min ring =D");
		ringGiven = true;
		GWorld.MarkEventDone (EventID);
	}

	public void GetAwayFromThere()
	{
		DisplaySpeechBubble("Get away from there !!");
	}
}
