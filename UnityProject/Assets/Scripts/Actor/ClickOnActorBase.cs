﻿using UnityEngine;
using System.Collections;


public class ClickOnActorBase : MonoBehaviour, IUseItem, IInspectInterface, IAction
{

	protected SpeechBubbleController speech;
	public DialoguerDialogues dialog;
	public string actorName;

	public void Awake()
	{
		Dialoguer.Initialize ();


	}

	// Use this for initialization
	public void Start () {
	
		speech = gameObject.GetComponentInChildren<SpeechBubbleController> ();

		if (speech != null)
		{
			speech.SetName (actorName);
		}

	}

	virtual public void OnAction()
	{

		Dialoguer.StartDialogue (dialog);

		/*if (speech != null)
		{
			speech.SetText ("Jag vill ha Äpple !");
		}*/

	}

	virtual public void OnInspect()
	{		
		if (speech != null) 
		{
			//speech.SetSymbol(test);
			//speech.SetText("Hej på dig! Du är bäst ! Hej på dig! Du är bäst ! Hej på dig! Du är bäst ! Hej på dig! Du är bäst ! Hej på dig! Du är bäst ! Hej på dig! Du är bäst ! Mooooooooooo");
			//speech.SetText("Mooo på <color=#008000ff>" + actorName + "!</color> Hej Hej", 21);
			speech.SetText("Hej, kom hit !");

		}
	}

	virtual public void OnDragOver( Vector3 deltaMousePosition )
	{

	}
	
	virtual public bool UseItemOnObject(EItem itemType)
	{
		switch ( itemType )
		{
			case EItem.Apple :
				speech.SetText("Tack för <color=#008000ff>Äpplet!!</color>", 17);
				return true;

			case EItem.Pear :
				speech.SetText("Usch! Vill inte ha <color=#ff0000ff>Lakrits!!</color>", 26);
				return false;

		}

		return false;
	}

}
