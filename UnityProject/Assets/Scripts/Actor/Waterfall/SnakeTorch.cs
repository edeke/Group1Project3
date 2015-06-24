using UnityEngine;
using System.Collections;


public class SnakeTorch : ClickOnActorBase
{
	string EventIDLit = "TorchLit";

	public GameObject light;
	public GameObject particle;
	public GameObject waterFallSnake;

	void Start () 
	{

		if (!GWorld.TryRegisterEvent (EventIDLit, "Hello"))
		{
			EventData tempData = new EventData();
			GWorld.FindEvent(EventIDLit,ref tempData);
			
			if(tempData.hasEventOccured)
			{
				light.SetActive(true);
				particle.SetActive(true);
			}
			
		}
		
	}

	override public void OnInspect()
	{

		DisplayComment ("If I light this, it could scare the snake away.");

	}

	override public bool UseItemOnObject(EItem itemType)
	{
		switch ( itemType )
		{
			case EItem.LitTorch :
				SnakeScared();
				light.SetActive(true);
				particle.SetActive(true);
				GWorld.MarkEventDone(EventIDLit);
				return true;

			case EItem.UnlitTorch :
				DisplayComment("I need to light the torch first");
				return false;
		}

		return false;
	}

	void SnakeScared()
	{
		WaterfallSnake snake = waterFallSnake.GetComponentInChildren<WaterfallSnake> ();
		snake.SnakeScared ();
		//Destroy (gameObject);
	}

	override public EAnimationState AnimationOnItem(EItem itemType)
	{
		switch (itemType) 
		{
			case EItem.LitTorch :
				return EAnimationState.Use;
				
			default :
				return EAnimationState.Error;
		}
	}

}
