using UnityEngine;
using System.Collections;


public class ClickOnActorBase : MonoBehaviour, IUseItem, IInspectInterface, ITalkTo
{
	
	public DialoguerDialogues dialog;
	public string speechBubbleText;
	public string actorName;

	protected GameObject commentObject;
	protected CommentController comment;

	protected GameObject speechObject;
	protected SpeechBubbleScreen speech;

	public void Awake()
	{
		Dialoguer.Initialize ();


	}

	// Use this for initialization
	public void Start () {
	
		/*speech = gameObject.GetComponentInChildren<SpeechBubbleController> ();

		if (speech != null)
		{
			speech.SetName (actorName);
		}*/

	}

	virtual public void OnTalkTo()
	{

	}

	virtual public void OnInspect()
	{		

	}

	/*virtual public void OnDragOver( Vector3 deltaMousePosition )
	{

	}*/

	public void DisplayComment ( string text )
	{
		
		if (commentObject == null) 
		{
			string path = "Prefabs/UI/CommentBubble/Comment";
			GameObject tmpHndl = (GameObject) Resources.Load (path);
			commentObject = (GameObject)Instantiate (tmpHndl, Vector3.zero, Quaternion.identity);
		}
		
		comment = commentObject.GetComponentInChildren<CommentController> ();
		comment.SetObjectFollow (gameObject);
		
		if (comment != null) 
		{
			comment.SetText(text);	
		}
	}

	public void DisplaySpeechBubble ( string text )
	{
		
		if (speechObject == null) 
		{
			string path = "Prefabs/UI/SpeechBubble/SpeechBubbleScreen";
			GameObject tmpHndl = (GameObject) Resources.Load (path);
			speechObject = (GameObject)Instantiate (tmpHndl, Vector3.zero, Quaternion.identity);
		}
		
		speech = speechObject.GetComponentInChildren<SpeechBubbleScreen> ();
		speech.SetName (actorName);
		speech.SetObjectFollow (gameObject);

		
		if (speech != null) 
		{
			speech.SetText(text);	
		}

	}
	
	virtual public bool UseItemOnObject(EItem itemType)
	{
		switch ( itemType )
		{
			case EItem.Apple :
				DisplaySpeechBubble("Tack för Äpplet!!");
				return true;

			case EItem.Pear :
				DisplaySpeechBubble("Usch! Vill inte ha Lakrits!!");
				return false;

		}

		return false;
	}

	virtual public EAnimationState AnimationOnItem(EItem itemType)
	{

		return EAnimationState.Use;
	}

}
