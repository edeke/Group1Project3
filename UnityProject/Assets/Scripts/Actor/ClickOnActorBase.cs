using UnityEngine;
using System.Collections;


public class ClickOnActorBase : MonoBehaviour, IUseItem, IInspectInterface, IAction
{

	SpeechBubbleController speech;
	public DialoguerDialogues dialog;
	public string actorName;

	void Awake()
	{
		Dialoguer.Initialize ();


	}

	// Use this for initialization
	void Start () {
	
		speech = gameObject.GetComponentInChildren<SpeechBubbleController> ();

		if (speech != null)
		{
			speech.SetName (actorName);
		}

	}

	public void OnAction()
	{

		Dialoguer.StartDialogue (dialog);

		/*if (speech != null)
		{
			speech.SetText ("Jag vill ha Äpple !");
		}*/

	}

	public void OnInspect()
	{		
		if (speech != null) 
		{
			//speech.SetSymbol(test);
			//speech.SetText("Hej på dig! Du är bäst ! Hej på dig! Du är bäst ! Hej på dig! Du är bäst ! Hej på dig! Du är bäst ! Hej på dig! Du är bäst ! Hej på dig! Du är bäst ! Mooooooooooo");
			//speech.SetText("Mooo på <color=#008000ff>" + actorName + "!</color> Hej Hej", 21);
			speech.SetText("Hej, kom hit !");

		}
	}

	public void OnDragOver( Vector3 deltaMousePosition )
	{

	}
	
	public bool UseItemOnObject(EItem itemType)
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
