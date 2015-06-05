using UnityEngine;
using System.Collections;


public class ClickOnActorBase : MonoBehaviour, IUseItem, IInspectInterface, IAction, ITalkTo
{

	protected SpeechBubbleController speech;
	public DialoguerDialogues dialog;
	public string speechBubbleText;
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

	virtual public void OnTalkTo()
	{

	}

	virtual public void OnAction()
	{

	}

	virtual public EAnimationState AnimationOnAction()
	{	
		
		
		return EAnimationState.Idle;
	}

	virtual public void OnInspect()
	{		

	}

	/*virtual public void OnDragOver( Vector3 deltaMousePosition )
	{

	}*/
	
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
