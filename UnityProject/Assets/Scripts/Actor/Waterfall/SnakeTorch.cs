﻿using UnityEngine;
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

		ClickOnActorBase tempComp = (ClickOnActorBase)this;
		tempComp.Start ();
		
	}

	override public void OnInspect()
	{

		DisplayComment ("I need fire to light this.");

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
		}

		return false;
	}

	void SnakeScared()
	{
		WaterfallSnake snake = waterFallSnake.GetComponentInChildren<WaterfallSnake> ();
		snake.SnakeScared ();
		//Destroy (gameObject);
	}

}
