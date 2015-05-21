using UnityEngine;
using System.Collections;


public class Pirate : ClickOnActorBase
{
	string EventID = "RingGivenToPirate";
	bool ringGiven = false;
	public GameObject wreck;

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

	override public void OnAction()
	{

		Dialoguer.StartDialogue (dialog, null);

		/*if (speech != null)
		{
			speech.SetText ("Jag vill ha Äpple !");
		}*/

	}

	override public void OnInspect()
	{		
		if (speech != null) 
		{
			speech.SetText("Jag vill ha min ring !!");
		}
	}

	override public bool UseItemOnObject(EItem itemType)
	{
		switch ( itemType )
		{
			case EItem.Apple :
				speech.SetText("Blää vill inte ha äpple");
				return false;

			case EItem.Pear :
				speech.SetText("Usch, Tvi ! ");
				return false;

			case EItem.MetalPipe :
				speech.SetText("Vad ska jag med den till ?");
				return false;

			case EItem.PirateRing :
				RingGivenToPirate();
				return true;
		}

		return false;
	}

	void RingGivenToPirate()
	{
		wreck.GetComponent<BoatWreck> ().OpenPassage ();
		speech.SetText("Yay, du hitta min ring =D");
		ringGiven = true;
		GWorld.MarkEventDone (EventID);
	}

}
