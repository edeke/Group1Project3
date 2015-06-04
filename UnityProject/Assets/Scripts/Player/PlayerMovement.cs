using UnityEngine;
using System.Collections;
using System.Collections.Generic;

public enum EPlayerState {
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
};

public class PlayerMovement : MonoBehaviour {

	EPlayerState currentState;
	private List<EPlayerState> actionList = new List<EPlayerState>();

	NavMeshAgent agent;

	Vector3 locationToReach;

	// Use this for initialization
	void Start () {
		currentState = EPlayerState.Idle;
		agent = GetComponent<NavMeshAgent> ();
	}

	void OnLevelWasLoaded()
	{
		currentState = EPlayerState.Idle;
		actionList.Clear ();
	}

	public void ForceMoveToLocation(Vector3 location)
	{

	}

	public bool WalkToLocation(Vector3 location)
	{
		switch (currentState)
		{
			case EPlayerState.WalkToLocation :
			case EPlayerState.Idle :
				NavMeshHit hitData;
				NavMesh.SamplePosition(location, out hitData, 100.0f, NavMesh.AllAreas);
				location = hitData.position;
				
				NavMeshPath path = new NavMeshPath();
				bool foundDest = NavMesh.CalculatePath(transform.position, location, NavMesh.AllAreas, path);
				if( foundDest )
				{
					actionList.Clear();
					actionList.Add(EPlayerState.WalkToLocation);
					locationToReach = hitData.position;
					
					return true;
				}
				
				return false;
				
			default :
			return false;
		}
	}

	public void TrySetActionOnObject(GameObject objectToUseActionOn)
	{

	}

	public void TrySetTalking(GameObject objectToTalkTo)
	{

	}

	public void TrySetUseItemOnObject(int indexSelectedItem, GameObject objectToUseItemOn)
	{

	}

	public EPlayerState GetPlayerState()
	{
		return currentState;
	}
	
	// Update is called once per frame
	void Update () 
	{
		Debug.Log (currentState);
		Debug.Log (actionList.Count);

		float distanceToActor = 0.0f;

		switch (currentState) 
		{
			case EPlayerState.Idle :
				if(actionList.Count > 0)
				{
					currentState = actionList[0];
					actionList.RemoveAt(0);
				}
			break;

			case EPlayerState.ForceWalkToLocation :
			case EPlayerState.WalkToLocation :
				agent.SetDestination (locationToReach);
					
				distanceToActor = (locationToReach - transform.position).magnitude;

				if (distanceToActor <= 0.2f) 
				{
					currentState = EPlayerState.Idle;
				}
			break;

			default :
			break;


		}
	}
}
