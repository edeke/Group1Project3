using UnityEngine;
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
		
	}

	override public void OnInspect()
	{

		DisplayComment ("I think it's a snake.");

	}

	public void HissSound()
	{		

		DisplaySpeechBubble("Hiss...");

		Invoke ("Commentfromplayer", 2f);
	}

	public void Commentfromplayer(){
		PlayerMovement movComp = GWorld.myPlayer.GetComponent<PlayerMovement> ();
		movComp.DisplaySpeechBubble ("Maybe I should go talk to the surfer dude.");
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

	public void SnakeScared()
	{
		DisplaySpeechBubble("Arrrgh... !");
		snakeScared = true;
		GWorld.MarkEventDone (EventID);
		//Destroy (gameObject);
	}

}
