using UnityEngine;
using System.Collections;

public enum EPlayerState {
	WalkToLocation,
	UseItemOnObject,
	ActionOnObject,
	//TalkToObject,
	Idle
};

public class PlayerMovement : MonoBehaviour {
	
	NavMeshAgent agent;

	EPlayerState currentPlayerState = EPlayerState.Idle;
	
	Vector3 locationToReach = Vector3.zero;

	//Use Item at Location
	int indexOfItem;
	float distanceItemCanBeUsed = 3.0f;
	GameObject objectToUseItemOn;

	//talk to object
	GameObject objectToTalkTo;
	//float distanceItenCanBeTalkedTo = 4.0f;


	void Start () {
	
		agent = GetComponent<NavMeshAgent> ();

	}

	void OnLevelWasLoaded()
	{
		TrySetIdleState ();
	}
	
	void Update () 
	{

		float distanceToActor = 0.0f;

		switch (currentPlayerState)
		{
			case EPlayerState.Idle :

			break;
			case EPlayerState.WalkToLocation :
				agent.SetDestination (locationToReach);
				break;

			case EPlayerState.UseItemOnObject :
				agent.SetDestination ( objectToUseItemOn.transform.position );
				
				distanceToActor = (objectToUseItemOn.transform.position - transform.position).magnitude;

				if( distanceToActor <= distanceItemCanBeUsed )
				{
					Inventory.myInv.TryUseItemOnActor(objectToUseItemOn, indexOfItem);
					agent.ResetPath();
					TrySetIdleState();
					
				}
				break;

			case EPlayerState.ActionOnObject :
				agent.SetDestination ( objectToUseItemOn.transform.position );
				
				distanceToActor = (objectToUseItemOn.transform.position - transform.position).magnitude;
				
				if( distanceToActor <= distanceItemCanBeUsed )
				{
					IAction useAction = objectToUseItemOn.GetComponent<IAction>();

					if (useAction != null)
					{
						useAction.OnAction();
					}

					agent.ResetPath();
					TrySetIdleState();
					
				}
				break;

			/*case EPlayerState.TalkToObject :
				agent.SetDestination ( objectToTalkTo.transform.position );
				
				distanceToActor = (objectToTalkTo.transform.position - transform.position).magnitude;
			
				if( distanceToActor <= distanceItenCanBeTalkedTo )
				{
					ISpeech canTalk = objectToTalkTo.GetComponent<ISpeech> ();
					
					if (canTalk != null)
					{
						canTalk.OnTalkTo();
					}
					agent.ResetPath();
					TrySetIdleState();
					
				}
				break;*/


			default :
			break;
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
