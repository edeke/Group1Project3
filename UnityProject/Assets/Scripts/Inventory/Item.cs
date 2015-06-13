﻿using UnityEngine;
using System.Collections;

public class Item : MonoBehaviour, IAction, IInspectInterface, IMouseCursor
{

	protected GameObject commentObject;
	protected CommentController comment;

	public EItem itemType;
	public Texture itemTexture;
	public AudioClip soundOnPickup;
	public AudioClip soundOnUse;
	public GameObject onDragParticle;
	public GameObject onUseParticle;
	public GameObject onPickupParticle;
	public int numberOfItemsInStack = 1;

	public EAnimationState animationOnAction;
	
	protected string eventID;
	
	public ItemStruct itemData = new ItemStruct();

	public int commentOffsetX;
	public int commentOffsetY;

	public MouseCursorInput mouseCursorOver;


	// Use this for initialization
	public void Start () {

		mouseCursorOver = MouseCursorInput.Pickup;

		itemData.itemTexture = itemTexture;
		itemData.itemType = itemType;
		itemData.soundOnPickup = soundOnPickup;
		itemData.soundOnUse = soundOnUse;
		itemData.numberOfItemsInStack = numberOfItemsInStack;
		itemData.onDragParticle = onDragParticle;
		itemData.onUseParticle = onUseParticle;
		itemData.onPickupParticle = onPickupParticle;


	}

	virtual public MouseCursorInput OnMouseOverCursor()
	{
		if (mouseCursorOver == MouseCursorInput.Default) 
		{
			return MouseCursorInput.Pickup;
		} 
		else 
		{
			return mouseCursorOver;
		}
	}

	virtual public void OnInspect()
	{	
		
		DisplayComment ("I don't know what that is.");
		
	}

	public void Awake()
	{
		eventID = this.gameObject.name;
		GWorld.TryRegisterEvent (eventID, "Hello!" );


		EventData newData = new EventData();

		if (GWorld.FindEvent (eventID, ref newData)) 
		{
			if(newData.hasEventOccured)
			{
				Destroy(gameObject);
			}
		}

	}

	virtual public void OnAction ( )
	{

		if (GWorld.isInvEnabled == true) 
		{
			if (Inventory.myInv.AddItem (itemData, transform.position)) 
			{
				GWorld.MarkEventDone (eventID);
				Destroy (gameObject);
			} 
		} 
		else 
		{
			DisplayComment("Need inventory to pickup item");
		}

	}

	virtual public EAnimationState AnimationOnAction()
	{	
		if (GWorld.isInvEnabled) 
		{
			return animationOnAction;
		}
		else 
		{
			return EAnimationState.Error;
		}
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

}
