﻿using UnityEngine;
using System.Collections;


public class ClickOnActorBase : MonoBehaviour, IUseItem, IInspectInterface, ITalkTo, IMouseCursor
{
	
	public DialoguerDialogues dialog;
	public string actorName;

	protected GameObject commentObject;
	protected CommentController comment;

	protected GameObject speechObject;
	protected SpeechBubbleScreen speech;

	public int commentOffsetX;
	public int commentOffsetY;

	public MouseCursorInput mouseCursorOver;

	bool isOutlineEnabled = false;

	public void Awake()
	{
		Dialoguer.Initialize ();

	}

	virtual public MouseCursorInput OnMouseOverCursor()
	{
		EnableOutline (true);

		if (mouseCursorOver == MouseCursorInput.Default) 
		{
			return MouseCursorInput.Normal;
		} 
		else 
		{
			return mouseCursorOver;
		}
	}

	virtual public void OnMouseLeave()
	{
		EnableOutline (false);

		return;
	}


	void EnableOutline (bool enable) 
	{
		
		if (enable == isOutlineEnabled)
		{
			
			return;
			
		}
		
		MeshRenderer[] allMesh = GetComponentsInChildren<MeshRenderer> ();
		
		float outlineWidth = enable ? 1 : 0;
		Color highlightColor = enable ? Color.red * 0.7f : Color.black;
		
		foreach (MeshRenderer rnd in allMesh) 
		{
			//			rnd.material.SetColor("_OutlineColor", Color.red);
			//			rnd.material.SetFloat("_Outline", outlineWidth);
			rnd.material.SetColor("_Highlight", highlightColor);
			
		}
		isOutlineEnabled = enable;
		
	}


	virtual public void OnTalkTo()
	{
		DisplayComment ("I don't think he wants to talk to me.");
	}

	virtual public void OnInspect()
	{	
		
		DisplayComment ("I don't know what that is.");
		
	}

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
		comment.SetOffset (commentOffsetX, commentOffsetY);
		
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
		speech.SetOffset (commentOffsetX, commentOffsetY);
		
		if (speech != null) 
		{
			speech.SetText(text);	
		}

	}
	
	virtual public bool UseItemOnObject(EItem itemType)
	{
		DisplayComment ("What is that supposed to do?");
		
		return false;
	}

	virtual public EAnimationState AnimationOnItem(EItem itemType)
	{
		
		return EAnimationState.Error;
	}

}
