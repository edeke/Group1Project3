using UnityEngine;
using System.Collections;

/*public enum EPlayerState {
	WalkToLocation,
	UseItemOnObject,
	UsingItemLow,
	UsingItemNormal,
	ActionOnObject,
	TalkToObject,
	Talking,
	PickupObjectLow,
	PickupObjectNormal,
	ForceWalkToLocation,
	Idle
};*/

public class PlayerMovementOld : MonoBehaviour {
	
	NavMeshAgent agent;

	float pickupTimeStart = 1.5f;
	float pickupTimeCurrent;

	protected GameObject commentObject;
	protected CommentController comment;

	EPlayerState currentPlayerState = EPlayerState.Idle;
	
	Vector3 locationToReach = Vector3.zero;

	//Use Item at Location
	int indexOfItem;
	float distanceItemCanBeUsed = 1.0f;
	float distanceTalkTo = 3.0f;
	GameObject objectToUseItemOn;
	bool objectReached = false;

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
			case EPlayerState.Talking :
			case EPlayerState.Idle :
				break;

			case EPlayerState.ForceWalkToLocation :
			case EPlayerState.WalkToLocation :
				agent.SetDestination (locationToReach);

				distanceToActor = (locationToReach - transform.position).magnitude;

				//Debug.Log ("Distance: " + distanceToActor);
				if( distanceToActor <= 0.2f )
				{
					TrySetIdleState();
				}

				break;

			case EPlayerState.UseItemOnObject :
				agent.SetDestination ( objectToUseItemOn.transform.position );
				//distanceToActor = (objectToUseItemOn.transform.position - transform.position).magnitude;

				TraceObject();
				
				if( objectReached )
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
				//distanceToActor = (objectToUseItemOn.transform.position - transform.position).magnitude;

				TraceObject();

				if( objectReached )
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

			case EPlayerState.TalkToObject :
				agent.SetDestination ( objectToTalkTo.transform.position );
				distanceToActor = (objectToTalkTo.transform.position - transform.position).magnitude;

				if(  distanceToActor <= distanceTalkTo)
				{
				
					ITalkTo onTalkTo = objectToTalkTo.GetComponent<ITalkTo> ();
					
					if(onTalkTo != null)
					{
						onTalkTo.OnTalkTo();
						currentPlayerState = EPlayerState.Talking;
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

	bool TraceObject()
	{
		if (objectToUseItemOn == null)
		{
			return false;
		}

		Collider[] allObjects = Physics.OverlapSphere (transform.position, 1.0f);

		foreach (Collider col in allObjects) 
		{
			if( col.gameObject == objectToUseItemOn)
			{
				objectReached = true;
				//Debug.Log ("Object reached");
				return true;
			}
		}

		return false;
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

		if (distanceToItem.y < distToDetermineItemAsLow) 
		{
			return 1;
		} 
		else 
		{
			return 2;
		}

	}
	
	public bool TrySetMoveToLocationState( Vector3 location )
	{
		switch (currentPlayerState)
		{
			case EPlayerState.Idle :
			case EPlayerState.Talking :
			case EPlayerState.UseItemOnObject :
			case EPlayerState.WalkToLocation :
			case EPlayerState.TalkToObject :
			case EPlayerState.ActionOnObject :
				NavMeshHit hitData;
				NavMesh.SamplePosition(location, out hitData, 100.0f, NavMesh.AllAreas);
				location = hitData.position;
				
				NavMeshPath path = new NavMeshPath();
				bool foundDest = NavMesh.CalculatePath(transform.position, location, NavMesh.AllAreas, path);
				if( foundDest )
				{
					currentPlayerState = EPlayerState.WalkToLocation;
					locationToReach = hitData.position;
					
					return true;
				}

				return false;

			default :
				return false;
		}
	}

	public bool ForceMoveToLocation( Vector3 location )
	{
		switch (currentPlayerState)
		{
			case EPlayerState.Idle :
			case EPlayerState.Talking :
			case EPlayerState.UseItemOnObject :
			case EPlayerState.WalkToLocation :
			case EPlayerState.TalkToObject :
			case EPlayerState.ActionOnObject :

				NavMeshHit hitData;
				NavMesh.SamplePosition(location, out hitData, 100.0f, NavMesh.AllAreas);
				location = hitData.position;

				NavMeshPath path = new NavMeshPath();
				bool foundDest = NavMesh.CalculatePath(transform.position, location, NavMesh.AllAreas, path);
				if( foundDest )
				{
					currentPlayerState = EPlayerState.ForceWalkToLocation;
					locationToReach = hitData.position;
					
					return true;
				}

				DisplayComment("I can't reach it");

				return false;

			default :
				return false;
		}
	}

	public void TrySetIdleState( )
	{
		switch (currentPlayerState)
		{
			case EPlayerState.Idle :
			case EPlayerState.Talking :
			case EPlayerState.UseItemOnObject :
			case EPlayerState.WalkToLocation :
			case EPlayerState.TalkToObject :
			case EPlayerState.ActionOnObject :
			case EPlayerState.ForceWalkToLocation :
				currentPlayerState = EPlayerState.Idle;
			break;
				
			default :
			break;
		}
	}

	public bool TrySetUseItemOnObject( int indexOfItem, GameObject actorToUseOn)
	{
		switch (currentPlayerState)
		{
			case EPlayerState.Idle :
			case EPlayerState.Talking :
			case EPlayerState.UseItemOnObject :
			case EPlayerState.WalkToLocation :
			case EPlayerState.TalkToObject :
			case EPlayerState.ActionOnObject :

				NavMeshPath path = new NavMeshPath();
				bool foundDest = NavMesh.CalculatePath(transform.position, actorToUseOn.transform.position, NavMesh.AllAreas, path);
				if( foundDest )
				{
					currentPlayerState = EPlayerState.UseItemOnObject;
					this.indexOfItem = indexOfItem;
					this.objectToUseItemOn = actorToUseOn;
					objectReached = false;
					
					return true;
				}
				
				DisplayComment("I can't reach it");

				return false;
			
			default :
				return false;

		}
	}

	public bool TrySetActionOnObject( GameObject actorToUseOn)
	{
		switch (currentPlayerState)
		{
			case EPlayerState.Idle :
			case EPlayerState.Talking :
			case EPlayerState.UseItemOnObject :
			case EPlayerState.WalkToLocation :
			case EPlayerState.TalkToObject :
			case EPlayerState.ActionOnObject :
				
				NavMeshPath path = new NavMeshPath();
				bool foundDest = NavMesh.CalculatePath(transform.position, actorToUseOn.transform.position, NavMesh.AllAreas, path);
				if( foundDest )
				{
					this.objectToUseItemOn = actorToUseOn;
					objectReached = false;
					currentPlayerState = EPlayerState.ActionOnObject;

					return true;
				}

				DisplayComment("I can't reach it");

				return false;
				
			default :
				return false;
		}
	}

	public bool TrySetTalking( GameObject actorToTalkTo )
	{
		switch (currentPlayerState)
		{
			case EPlayerState.Idle :
			case EPlayerState.Talking :
			case EPlayerState.UseItemOnObject :
			case EPlayerState.WalkToLocation :
			case EPlayerState.ActionOnObject :
			case EPlayerState.PickupObjectLow :
			case EPlayerState.PickupObjectNormal :
			case EPlayerState.UsingItemLow :
			case EPlayerState.TalkToObject :
			case EPlayerState.UsingItemNormal :

				NavMeshPath path = new NavMeshPath();
				bool foundDest = NavMesh.CalculatePath(transform.position, actorToTalkTo.transform.position, NavMesh.AllAreas, path);
				if( foundDest )
				{
					currentPlayerState = EPlayerState.TalkToObject;
					this.objectToTalkTo = actorToTalkTo;
					objectReached = false;

					return true;
				}

				DisplayComment("It's to far away");

				return false;
				
			default :
				return false;

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
		
		if (comment != null) 
		{
			comment.SetText(text);	
		}
	}
}
