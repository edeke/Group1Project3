﻿using UnityEngine;
using System.Collections;

public enum EPlayerState {
	WalkToLocation,
	UseItemOnObject,
	UsingItemLow,
	UsingItemNormal,
	ActionOnObject,
	PickupObjectLow,
	PickupObjectNormal,
	Idle
};

public class PlayerMovement : MonoBehaviour {
	
	NavMeshAgent agent;

	float pickupTimeStart = 1.0f;
	float pickupTimeCurrent;

	EPlayerState currentPlayerState = EPlayerState.Idle;
	
	Vector3 locationToReach = Vector3.zero;

	//Use Item at Location
	int indexOfItem;
	float distanceItemCanBeUsed = 3.0f;
	GameObject objectToUseItemOn;

	const float distToDetermineItemAsLow = 0.3f;

	//talk to object
	GameObject objectToTalkTo;
	//float distanceItenCanBeTalkedTo = 4.0f;


	void Start () {
	
		agent = GetComponent<NavMeshAgent> ();
		pickupTimeCurrent = pickupTimeStart;
	}

	void OnLevelWasLoaded()
	{
		TrySetIdleState ();
	}

	public EPlayerState GetPlayerState()
	{
		return currentPlayerState;
	}
	
	void Update () 
	{

		//Debug.Log (currentPlayerState);

		float distanceToActor = 0.0f;

		switch (currentPlayerState)
		{
			case EPlayerState.Idle :
				break;

			case EPlayerState.WalkToLocation :
				agent.SetDestination (locationToReach);

				distanceToActor = (locationToReach - transform.position).magnitude;
				if( distanceToActor <= 0.5f )
				{
					TrySetIdleState();
				}

				break;

			case EPlayerState.UseItemOnObject :
				agent.SetDestination ( objectToUseItemOn.transform.position );
				
				distanceToActor = (objectToUseItemOn.transform.position - transform.position).magnitude;

				if( distanceToActor <= distanceItemCanBeUsed )
				{
					int low = DetermineItemPosition();
					if(low == 1)
					{
						currentPlayerState = EPlayerState.UsingItemLow;
					}
					else
					{
						currentPlayerState = EPlayerState.UsingItemNormal;
					}
					agent.ResetPath();
					
				}
				break;

			case EPlayerState.ActionOnObject :
				agent.SetDestination ( objectToUseItemOn.transform.position );
				
				distanceToActor = (objectToUseItemOn.transform.position - transform.position).magnitude;
				
				if( distanceToActor <= distanceItemCanBeUsed )
				{
					int low = DetermineItemPosition();
					if(low == 1)
					{
						currentPlayerState = EPlayerState.PickupObjectLow;
					}
					else
					{
						currentPlayerState = EPlayerState.PickupObjectNormal;
					}

					agent.ResetPath();
				}
				break;

			case EPlayerState.PickupObjectLow :
			case EPlayerState.PickupObjectNormal :
				OnPickUpLogic();
				break;

			case EPlayerState.UsingItemLow :
			case EPlayerState.UsingItemNormal :
				OnUseItemLogic();
				break;

			default :
			break;
		}

	}

	void OnPickUpLogic()
	{

		RotateTowards (objectToUseItemOn.transform.position);
		pickupTimeCurrent -= Time.deltaTime;
		
		if (pickupTimeCurrent <= 0.0f) {
			IAction useAction = objectToUseItemOn.GetComponent<IAction> ();
			
			if (useAction != null) {
				useAction.OnAction ();
				pickupTimeCurrent = pickupTimeStart;
			}
			
			currentPlayerState = EPlayerState.Idle;
		}

	}
	
	void OnUseItemLogic()
	{
		RotateTowards (objectToUseItemOn.transform.position);
		pickupTimeCurrent -= Time.deltaTime;
		
		if(pickupTimeCurrent <= 0.0f)
		{
			Inventory.myInv.TryUseItemOnActor(objectToUseItemOn, indexOfItem);
			currentPlayerState = EPlayerState.Idle;
			pickupTimeCurrent = pickupTimeStart;
		}
	}

	void RotateTowards(Vector3 target)
	{
		Vector3 targetDir = target - transform.position;
		float step = 10.0f * Time.deltaTime;
		Vector3 newDir = Vector3.RotateTowards (transform.forward, targetDir, step, 0.0f);
		newDir.y = 0.0f;
		transform.rotation = Quaternion.LookRotation (newDir);
	}

	int DetermineItemPosition()
	{
		Vector3 distanceToItem = (objectToUseItemOn.transform.position - transform.position);

		//Debug.Log (distanceToItem.y);

		if (distanceToItem.y < distToDetermineItemAsLow) 
		{
			return 1;
		} 
		else 
		{
			return 2;
		}

	}
	
	public void TrySetMoveToLocationState( Vector3 location )
	{
		switch (currentPlayerState)
		{
			case EPlayerState.Idle :
			//case EPlayerState.TalkToObject :
			case EPlayerState.UseItemOnObject :
			case EPlayerState.WalkToLocation :
			case EPlayerState.ActionOnObject :
				currentPlayerState = EPlayerState.WalkToLocation;
				locationToReach = location;
			break;
				
			default :
			break;
		}
	}

	public void TrySetIdleState( )
	{
		switch (currentPlayerState)
		{
			case EPlayerState.Idle :
			//case EPlayerState.TalkToObject :
			case EPlayerState.UseItemOnObject :
			case EPlayerState.WalkToLocation :
			case EPlayerState.ActionOnObject :
				currentPlayerState = EPlayerState.Idle;
			break;
				
			default :
			break;
		}
	}

	public void TrySetUseItemOnObject( int indexOfItem, GameObject actorToUseOn)
	{
		switch (currentPlayerState)
		{
			case EPlayerState.Idle :
			//case EPlayerState.TalkToObject :
			case EPlayerState.UseItemOnObject :
			case EPlayerState.WalkToLocation :
			case EPlayerState.ActionOnObject :
				currentPlayerState = EPlayerState.UseItemOnObject;
				this.indexOfItem = indexOfItem;
				this.objectToUseItemOn = actorToUseOn;
				break;
			
			default :
				break;
		}
	}

	public void TrySetActionOnObject( GameObject actorToUseOn)
	{
		switch (currentPlayerState)
		{
			case EPlayerState.Idle :
			//case EPlayerState.TalkToObject :
			case EPlayerState.UseItemOnObject :
			case EPlayerState.WalkToLocation :
			case EPlayerState.ActionOnObject :
				currentPlayerState = EPlayerState.ActionOnObject;
				this.objectToUseItemOn = actorToUseOn;
				break;
				
			default :
				break;
		}
	}

	/*public void TrySetTalkToObject( GameObject actorToTalkTo)
	{
		switch (currentPlayerState)
		{
			case EPlayerState.Idle :
			//case EPlayerState.TalkToObject :
			case EPlayerState.UseItemOnObject :
			case EPlayerState.WalkToLocation :
			case EPlayerState.ActionOnObject :
				currentPlayerState = EPlayerState.TalkToObject;
				this.objectToTalkTo = actorToTalkTo;
				break;
				
			default :
				break;
			}
	}*/
}
