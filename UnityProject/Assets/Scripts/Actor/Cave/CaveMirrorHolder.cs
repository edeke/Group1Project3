using UnityEngine;
using System.Collections;


public class CaveMirrorHolder : CommentActorBase
{
	public GameObject mirror;
	public Light lightToEnable;
	MeshRenderer mirrorRenderer;

	string EventID = "MirrorPlacedCave";

	void Start () 
	{
		mirrorRenderer = mirror.GetComponent<MeshRenderer> ();
		
		if (!GWorld.TryRegisterEvent (EventID, "Hello"))
		{
			EventData tempData = new EventData();
			GWorld.FindEvent(EventID,ref tempData);
			
			if(tempData.hasEventOccured)
			{
				mirrorRenderer.enabled = true;
				lightToEnable.GetComponent<CaveReflectedLight>().TurnOnLight();
			}
			else
			{
				mirrorRenderer.enabled = false;
			}
		}
		
	}


	override public void OnInspect()
	{	
		EventData tempData = new EventData();
		GWorld.FindEvent(EventID,ref tempData);
		
		if (tempData.hasEventOccured) 
		{
			DisplayComment ("It's reflecting the moonlight.");
		} 
		else 
		{
			DisplayComment ("Looks like something was supposed to be attached here.");
		}

	}

	override public void OnAction()
	{	
		EventData tempData = new EventData();
		GWorld.FindEvent(EventID,ref tempData);
		
		if (tempData.hasEventOccured) 
		{
			DisplayComment("I should leave it attached.");
		} 
		else 
		{
			DisplayComment("It's stuck to the wall");
		}
	}
	
	void DestroyObject()
	{
		Destroy (gameObject);
	}

	override public bool UseItemOnObject(EItem itemType)
	{
		switch (itemType) 
		{
			case EItem.OldMirror :
				GWorld.MarkEventDone(EventID);
				mirrorRenderer.enabled = true;
				lightToEnable.GetComponent<CaveReflectedLight>().TurnOnLight();
			return true;
		}
		
		return false;
	}

	override public EAnimationState AnimationOnItem(EItem itemType)
	{
		switch (itemType) 
		{
			case EItem.OldMirror :
				return EAnimationState.Use;
				
			default :
				return EAnimationState.Error;
		}
	}

}
