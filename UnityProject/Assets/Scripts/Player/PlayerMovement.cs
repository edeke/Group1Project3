using UnityEngine;
using System.Collections;
using System.Collections.Generic;

public enum EPlayerState {
	WalkToLocation,
	UseItemOnObject,
	UsingItemOnObject,
	ActionOnObject,
	Talking,
	ForceWalkToLocation,
	Idle
};

public enum EAnimationState {
	Idle,
	Walk,
	Running,
	Talk,
	PickupLow,
	Pickup,
	UseLow,
	Use
};

public class ActionData 
{
	public EPlayerState state;
	public Vector3 location;
	public GameObject objectToUse;
	public int inventoryIndex;
}

public class PlayerMovement : MonoBehaviour {

	EAnimationState currentAnimationState;

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
		currentAnimationState = EAnimationState.Idle;

		currentState = new ActionData ();
		currentState.state = EPlayerState.Idle;

		agent = GetComponent<NavMeshAgent> ();
	}

	void OnLevelWasLoaded()
	{
		currentState.state = EPlayerState.Idle;
		actionList.Clear ();
	}

	public bool ForceMoveToLocation(Vector3 location)
	{
		NavMeshHit hitData;
		NavMeshPath path = new NavMeshPath();
		bool foundDest = false;
		
		switch (currentState.state)
		{
			
		case EPlayerState.WalkToLocation :
			//just update the location for holding down the mouse button
			NavMesh.SamplePosition(location, out hitData, 100.0f, NavMesh.AllAreas);
			location = hitData.position;
			
			foundDest = NavMesh.CalculatePath(transform.position, location, NavMesh.AllAreas, path);
			if( foundDest )
			{
				currentState.state = EPlayerState.ForceWalkToLocation;
				currentState.location = hitData.position;
				actionList.Clear();
				
				return true;
			}
			
			DisplayComment("I can't reach it");
			return false;
			
		case EPlayerState.Idle :
		case EPlayerState.Talking :
		case EPlayerState.UseItemOnObject :
		case EPlayerState.ActionOnObject :
			
			NavMesh.SamplePosition(location, out hitData, 100.0f, NavMesh.AllAreas);
			location = hitData.position;
			
			foundDest = NavMesh.CalculatePath(transform.position, location, NavMesh.AllAreas, path);
			if( foundDest )
			{
				ActionData newAction = new ActionData();
				
				newAction.state = EPlayerState.ForceWalkToLocation;
				newAction.location = hitData.position;
				newAction.objectToUse = null;
				newAction.inventoryIndex = -1;
				
				actionList.Clear();
				actionList.Add(newAction);
				
				return true;
			}
			
			DisplayComment("I can't reach it");
			return false;
			
		default :
			return false;
		}
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
				location = hitData.position;
				
				foundDest = NavMesh.CalculatePath(transform.position, location, NavMesh.AllAreas, path);
				if( foundDest )
				{
					currentState.location = hitData.position;
					actionList.Clear();

					return true;
				}
				
				DisplayComment("I can't reach it");
				return false;

			case EPlayerState.Idle :
			case EPlayerState.Talking :
			case EPlayerState.UseItemOnObject :
			case EPlayerState.ActionOnObject :
				
				NavMesh.SamplePosition(location, out hitData, 100.0f, NavMesh.AllAreas);
				location = hitData.position;
				
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

					currentState.state = EPlayerState.Idle;
					
					return true;
				}
				
				DisplayComment("I can't reach it");
				return false;
				
			default :
			return false;
		}
	}

	public void ActionOnObject(GameObject objectToUseActionOn, Vector3 location)
	{
		switch (currentState.state)
		{
			case EPlayerState.Idle :
			case EPlayerState.Talking :
			case EPlayerState.UseItemOnObject :
			case EPlayerState.WalkToLocation :
			case EPlayerState.ActionOnObject :
				if( WalkToLocation(location)  )
				{
					ActionData newAction = new ActionData();

					newAction.state = EPlayerState.ActionOnObject;
					newAction.location = location;
					newAction.objectToUse = objectToUseActionOn;
					newAction.inventoryIndex = -1;

					actionList.Add(newAction);

					currentState.state = EPlayerState.Idle;
				}

				return;

				
			default :
				return;
		}
	}

	public void TrySetTalking( GameObject objectToTalkTo, Vector3 location )
	{
		switch (currentState.state)
		{
		case EPlayerState.Idle :
		case EPlayerState.Talking :
		case EPlayerState.UseItemOnObject :
		case EPlayerState.WalkToLocation :
		case EPlayerState.ActionOnObject :
			
			if( WalkToLocation(location)  )
			{
				ActionData newAction = new ActionData();
				
				newAction.state = EPlayerState.Talking;
				newAction.location = location;
				newAction.objectToUse = objectToTalkTo;
				newAction.inventoryIndex = -1;
				
				actionList.Add(newAction);

				currentState.state = EPlayerState.Idle;
			}
			
			return;
			
			
		default :
			return;
		}
	}

	public void TrySetUseItemOnObject(int indexSelectedItem, GameObject objectToUseItemOn)
	{

	}

	public EPlayerState GetPlayerState()
	{
		return currentState.state;
	}

	public EAnimationState GetPlayerAnimationState()
	{
		return currentAnimationState;
	}

	public void AnimationUseItem()
	{
		switch (currentState.state)
		{
			case EPlayerState.Idle :
			case EPlayerState.Talking :
			case EPlayerState.UseItemOnObject :
			case EPlayerState.WalkToLocation :
			case EPlayerState.ActionOnObject :
				IAction actionObject = null;

				if( currentState.objectToUse != null )
				{
					actionObject = currentState.objectToUse.GetComponent<IAction>();
				}
				
				if(actionObject != null)
				{
					actionObject.OnAction();
				}

				return;
				
				
			default :
				return;
		}
	}

	public void AnimationDonePlaying()
	{
		switch (currentState.state)
		{
			case EPlayerState.Idle :
			case EPlayerState.Talking :
			case EPlayerState.UseItemOnObject :
			case EPlayerState.WalkToLocation :
			case EPlayerState.ActionOnObject :

				currentAnimationState = EAnimationState.Idle;
				currentState.state = EPlayerState.Idle;
				
			return;
				
				
			default :
				return;
		}
	}
	
	// Update is called once per frame
	void Update () 
	{

		//Debug.Log (currentState.state);

		float distanceToActor = 0.0f;

		switch (currentState.state) 
		{
			case EPlayerState.Idle :
				currentAnimationState = EAnimationState.Idle;
				if(actionList.Count > 0)
				{
					currentState = actionList[0];
					actionList.RemoveAt(0);
				}
			break;

			case EPlayerState.ForceWalkToLocation :
			case EPlayerState.WalkToLocation :
				currentAnimationState = EAnimationState.Running;

				agent.SetDestination (currentState.location);
					
				distanceToActor = (currentState.location - transform.position).magnitude;

				if (distanceToActor <= 0.2f) 
				{
					currentState.state = EPlayerState.Idle;
				}
			break;

			case EPlayerState.ActionOnObject :
				IAction actionObject = null;

				if(currentState.objectToUse != null)
				{
					actionObject = currentState.objectToUse.GetComponent<IAction>();
				}

				if(actionObject != null)
				{
					//within range
					if( TraceObject(currentState.objectToUse) )
					{
						RotateTowards(currentState.objectToUse.transform.position);
						currentAnimationState = actionObject.AnimationOnAction();
					}
					else
					{
						DisplayComment("I can't reach it");
						currentState.state = EPlayerState.Idle;
						currentAnimationState = EAnimationState.Idle;
					}
				}
			break;

			case EPlayerState.Talking :
				ITalkTo talkObject = null;
				
				if(currentState.objectToUse != null)
				{
					talkObject = currentState.objectToUse.GetComponent<ITalkTo>();
				}
				
				if(talkObject != null)
				{
					//within range
					if( TraceObject(currentState.objectToUse) )
					{
						RotateTowards(currentState.objectToUse.transform.position);
						talkObject.OnTalkTo();
						
						//remove the state from the queue
						currentState.state = EPlayerState.Idle;
						currentAnimationState = EAnimationState.Talk;
					}
					else
					{
						DisplayComment("I can't reach it");
					}
				}
			break;

			default :
			break;


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

	bool TraceObject(GameObject objectToCheck)
	{
		if (objectToCheck == null)
		{
			return false;
		}
		
		Collider[] allObjects = Physics.OverlapSphere (transform.position, 1.5f);
		
		foreach (Collider col in allObjects) 
		{
			if( col.gameObject == objectToCheck)
			{
				return true;
			}
		}
		
		return false;
	}
}
