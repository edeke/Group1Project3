using UnityEngine;
using System.Collections;


public class WaterfallSnake : ClickOnActorBase
{
	string EventID = "SnakeScaredAway";
	private bool snakeScared = false;

	public Transform startMarker;
	public Transform endMarker;

	private Transform targetTransform;

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
	
	void FixedUpdate (){

		targetTransform = snakeScared ? endMarker : startMarker;
		
	}

	void Update(){
		if (targetTransform != null) {
			transform.position = Vector3.Lerp (transform.position, targetTransform.position, 0.05f);
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

	public void Commentfromplayer2(){
		PlayerMovement movComp = GWorld.myPlayer.GetComponent<PlayerMovement> ();
		movComp.DisplaySpeechBubble ("The snake is gone!");
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
		DisplaySpeechBubble("Arrrgh...!");
		snakeScared = true;
		Invoke ("Commentfromplayer2", 3f);
		GWorld.MarkEventDone (EventID);
		//Destroy (gameObject);
	}

}
