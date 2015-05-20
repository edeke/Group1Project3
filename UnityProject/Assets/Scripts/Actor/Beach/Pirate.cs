using UnityEngine;
using System.Collections;


public class Pirate : ClickOnActorBase
{

	override public void OnAction()
	{

		Dialoguer.StartDialogue (dialog);

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
				speech.SetText("Yay, du hitta min ring =D");
				return true;

		}

		return false;
	}

}
