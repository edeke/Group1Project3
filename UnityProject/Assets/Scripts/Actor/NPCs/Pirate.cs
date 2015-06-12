using UnityEngine;
using System.Collections;
using System;


public class Pirate : ClickOnActorBase
{
	string EventID = "RingGivenToPirate";
	bool ringGiven = false;

	Vector3 posPrev;
	float maxSpeed = 2.0f;

	Animator anim;

	private bool isTalking;
	private bool isWalking;

	NavMeshAgent agent;
	public bool walking;
	private int currentTargetIndex = 0;

	public Vector3[] walkToLocation;
	
	public Vector3 GetWalkLocation(int index)
	{
		return walkToLocation [index];
	}
	
	public void SetWalkLocation(int index, Vector3 newLocation)
	{
		walkToLocation [index] = newLocation;
	}
	
	public int NumWalkLocations
	{
		get 
		{
			return walkToLocation.Length;
		}
	}
	
	public void Reset()
	{
		Vector3 newVector = transform.position;
		
		walkToLocation = new Vector3[] {
			newVector
		};
	}
	
	public void AddWalkPoint()
	{
		Vector3 newVector = transform.position;
		
		Array.Resize (ref walkToLocation, walkToLocation.Length + 1);
		SetWalkLocation (walkToLocation.Length - 1, newVector);
		
	}

	
	void Start () 
	{


		if (!GWorld.TryRegisterEvent (EventID, "Hello"))
		{
			EventData tempData = new EventData();
			GWorld.FindEvent(EventID,ref tempData);
			
			if(tempData.hasEventOccured)
			{
				ringGiven = true;
			}
			
		}

		anim = GetComponentInChildren<Animator> ();
		agent = GetComponent<NavMeshAgent> ();
	}

	void Update (){

		//calculate speed
		float speed = (transform.position - posPrev).magnitude / Time.deltaTime / maxSpeed;
		//speed /= maxSpeed;
		if (anim)
		{
			anim.SetFloat ("speed", speed);
		}
		
		posPrev = transform.position;

		if (isTalking == true) {
			anim.SetBool ("Talk", true);
		} 

		if (isTalking == true && GWorld.dialogOpen == false) {
			anim.SetBool ("Talk", false);
			isTalking = false;

		}

		if (walking && isTalking == false) 
		{
			if( walkToLocation.Length > 0 )
			{
				agent.SetDestination ( walkToLocation[currentTargetIndex] );
				agent.Resume();
			}
		}

		if (isTalking == true) 
		{
			//insert lerp thing
			transform.LookAt( GWorld.myPlayer.transform.position );
		}

		Debug.Log ("currentTargetIndex : " + currentTargetIndex);
		Debug.Log ("currentTargetDistance : " + Vector3.Distance( transform.position, walkToLocation[currentTargetIndex] ) );

		if( Vector3.Distance( transform.position, walkToLocation[currentTargetIndex] ) < 2.0f )
		{
			currentTargetIndex++;

			if(currentTargetIndex == walkToLocation.Length)
			{
				currentTargetIndex = 0;
			}
		}


	}

	override public void OnTalkTo()
	{

		Dialoguer.StartDialogue (dialog, null);

		isTalking = true;

		agent.Stop ();

	}

	override public void OnInspect()
	{	
		//DisplaySpeechBubble ( "Hello" );
		DisplaySpeechBubble ( "How could I loose it..." );

	}

	override public bool UseItemOnObject(EItem itemType)
	{
		switch ( itemType )
		{
			case EItem.MetalPipe :
				DisplaySpeechBubble("I don't want that.");
				return false;

			case EItem.PirateRing :
				RingGivenToPirate();
				return true;
		}

		return false;
	}

	void RingGivenToPirate()
	{
		DisplaySpeechBubble("Okey, you can enter now.");
		ringGiven = true;
		GWorld.MarkEventDone (EventID);
	}

	public void GetAwayFromThere()
	{
		DisplaySpeechBubble("Stop right there!");
	}

	override public EAnimationState AnimationOnItem(EItem itemType)
	{
		switch (itemType) 
		{
			case EItem.MetalPipe :
			return EAnimationState.Use;

			case EItem.PirateRing :
				return EAnimationState.Use;
				
			default :
				return EAnimationState.Error;
		}
	}
}
