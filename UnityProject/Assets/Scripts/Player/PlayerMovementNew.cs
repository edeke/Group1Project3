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

public class ActionData 
{
	public EPlayerState state;
	public Vector3 location;
	public GameObject objectToUse;
	public int inventoryIndex;
}

public class PlayerMovementNew : MonoBehaviour {

	ActionData currentState;
	private List<ActionData> actionList = new List<ActionData>();

	NavMeshAgent agent;

	GameObject commentObject;
	CommentController comment;

	Vector3 locationToReach;

	GameObject objectToUseAtionOn;
	bool objectToUseAtionOnReached;

	// Use this for initialization
	void Start () {
		currentState = new ActionData ();
		currentState.state = EPlayerState.Idle;

		agent = GetComponent<NavMeshAgent> ();
	}

	void OnLevelWasLoaded()
	{
		currentState.state = EPlayerState.Idle;
		actionList.Clear ();
	}

	public void ForceMoveToLocation(Vector3 location)
	{

	}

	public bool WalkToLocation(Vector3 location)
	{
		NavMeshHit hitData;
		NavMeshPath path = new NavMeshPath();
		bool foundDest = false;

		switch (currentState.state)
		{

			case EPlayerState.WalkToLocation :
				//just update the location for holding down the mouse button
				NavMesh.SamplePosition(location, out hitData, 100.0f, NavMesh.AllAreas);
				
				foundDest = NavMesh.CalculatePath(transform.position, location, NavMesh.AllAreas, path);
				if( foundDest )
				{
					currentState.location = hitData.position;
					
					return true;
				}
				
				return false;

			case EPlayerState.Idle :
			case EPlayerState.Talking :
			case EPlayerState.UseItemOnObject :
			case EPlayerState.TalkToObject :
			case EPlayerState.ActionOnObject :
				
				NavMesh.SamplePosition(location, out hitData, 100.0f, NavMesh.AllAreas);
				
				foundDest = NavMesh.CalculatePath(transform.position, location, NavMesh.AllAreas, path);
				if( foundDest )
				{
					ActionData newAction = new ActionData();
					
					newAction.state = EPlayerState.WalkToLocation;
					newAction.location = hitData.position;
					newAction.objectToUse = null;
					newAction.inventoryIndex = -1;

					actionList.Clear();
					actionList.Add(newAction);
					
					return true;
				}
				
				return false;
				
			default :
			return false;
		}
	}

	public void ActionOnObject(GameObject objectToUseActionOn)
	{
		/*switch (currentState)
		{
			case EPlayerState.Idle :
			case EPlayerState.Talking :
			case EPlayerState.UseItemOnObject :
			case EPlayerState.WalkToLocation :
			case EPlayerState.TalkToObject :
			case EPlayerState.ActionOnObject :
				
				NavMeshPath path = new NavMeshPath();
				bool foundDest = NavMesh.CalculatePath(transform.position, objectToUseActionOn.transform.position, NavMesh.AllAreas, path);
				if( foundDest )
				{
					locationToReach = 
					objectToUseAtionOn = objectToUseActionOn;
					objectToUseAtionOnReached = false;

					actionList.Clear();
					actionList.Add(EPlayerState.WalkToLocation);
					currentPlayerState = EPlayerState.ActionOnObject;
					
					return true;
				}
				
				DisplayComment("I can't reach it");
				return false;
				
			default :
				return false;
		}*/
	}

	public void TrySetTalking(GameObject objectToTalkTo)
	{

	}

	public void TrySetUseItemOnObject(int indexSelectedItem, GameObject objectToUseItemOn)
	{

	}

	public EPlayerState GetPlayerState()
	{
		return currentState.state;
	}
	
	// Update is called once per frame
	void Update () 
	{

		float distanceToActor = 0.0f;

		switch (currentState.state) 
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
				agent.SetDestination (currentState.location);
					
				distanceToActor = (currentState.location - transform.position).magnitude;

				if (distanceToActor <= 0.2f) 
				{
					currentState.state = EPlayerState.Idle;
				}
			break;

			default :
			break;


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
