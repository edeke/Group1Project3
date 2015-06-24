using UnityEngine;
using System.Collections;
using System.Collections.Generic;

public enum EPlayerState {
	WalkToLocation,
	WalkToObject,
	UseItem,
	Action,
	Talking,
	ForceWalkToLocation,
	Idle,
	ForceIdle
};

public enum EAnimationState {
	Idle,
	Walk,
	Running,
	Talk,
	PickupLow,
	Pickup,
	UseLow,
	Use,
	None,
	Error
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

	public int commentOffsetX;
	public int commentOffsetY = -1;
	public int sortOrder = 1;

	float rotationSpeed = 6.0f;

	ActionData currentState;
	private List<ActionData> actionList = new List<ActionData>();

	NavMeshAgent agent;

	GameObject commentObject;
	CommentController comment;

	Vector3 locationToReach;

	GameObject objectToUseAtionOn;
	bool objectToUseAtionOnReached;

	protected GameObject speechObject;
	protected SpeechBubbleScreen speech;

	Vector3 rotateTarget;

	bool spawning = false;
	Vector3 spawnLocation;

	bool dialogOpen = false;

	// Use this for initialization
	void Start () 
	{
		currentAnimationState = EAnimationState.Idle;

		currentState = new ActionData ();
		currentState.state = EPlayerState.Idle;

		agent = GetComponent<NavMeshAgent> ();

		if (GWorld.isInvEnabled)
		{
			EnableBackpack (true);
		} 
		else
		{
			EnableBackpack (false);
		}

		if (GWorld.currentZone == ZoneBase.Beach) 
		{
			//visar två speeach bubbles, en efter 1s, en efter 5s
			Invoke ("PlayerDisplayStartLine1", 1.0f);
			Invoke ("PlayerDisplayStartLine2", 5.0f);
		}

	}

	void OnLevelWasLoaded()
	{
		if (currentState != null)
		{
			currentState.state = EPlayerState.Idle;
		}
		actionList.Clear ();
	}

	public void PlayerSetLocationOnSpawn(Vector3 location)
	{

		NavMeshHit hitData;
		NavMeshPath path = new NavMeshPath();

		NavMesh.SamplePosition(location, out hitData, 100.0f, NavMesh.AllAreas);
		location = hitData.position;

		//Debug.Log ("SetPosition : " + location);
		transform.position = location;

		spawnLocation = location;
		spawning = true;

		agent.enabled = false;
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
			
			DisplayComment("I can't reach it.");
			return false;
			
		case EPlayerState.Idle :
		case EPlayerState.Talking :
		case EPlayerState.UseItem :
		case EPlayerState.WalkToObject :
		case EPlayerState.Action :
			
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
			
			DisplayComment("I can't reach it.");
			return false;
			
		default :
			return false;
		}
	}

	public void ForceIdle(bool enable)
	{
		if (enable) 
		{
			currentState.state = EPlayerState.ForceIdle;
			actionList.Clear();
		}
		else
		{
			currentState.state = EPlayerState.Idle;
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
				
				DisplayComment("I can't reach it.");
				return false;

			case EPlayerState.WalkToObject :
			case EPlayerState.Idle :
			case EPlayerState.Talking :
			//case EPlayerState.UseItem :
			//case EPlayerState.Action :
				
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
				
				DisplayComment("I can't reach it.");
				return false;
				
			default :
			return false;
		}
	}

	public bool WalkToObject(GameObject objectToFollow)
	{
		NavMeshHit hitData;
		NavMeshPath path = new NavMeshPath();
		bool foundDest = false;
		
		switch (currentState.state)
		{
			case EPlayerState.WalkToObject :
			case EPlayerState.Idle :
			case EPlayerState.Talking :
			case EPlayerState.WalkToLocation :
				
				NavMesh.SamplePosition(objectToFollow.transform.position, out hitData, 100.0f, NavMesh.AllAreas);
				Vector3 location = hitData.position;
				
				foundDest = NavMesh.CalculatePath(transform.position, location, NavMesh.AllAreas, path);
				if( foundDest )
				{
					ActionData newAction = new ActionData();
					
					newAction.state = EPlayerState.WalkToObject;
					newAction.location = hitData.position;
					newAction.objectToUse = objectToFollow;
					newAction.inventoryIndex = -1;
					
					actionList.Clear();
					actionList.Add(newAction);
					
					currentState.state = EPlayerState.Idle;
					
					return true;
				}
				
				DisplayComment("I can't reach it.");
				return false;
				
			default :
				return false;
		}

	}

	public void ActionOnObject(GameObject objectToUseActionOn, Vector3 location)
	{

		switch (currentState.state)
		{
			case EPlayerState.WalkToObject :
			case EPlayerState.Idle :
			case EPlayerState.Talking :
			case EPlayerState.UseItem :
			case EPlayerState.WalkToLocation :
			case EPlayerState.Action :
				if( WalkToLocation(location)  )
				{
					ActionData newAction = new ActionData();

					newAction.state = EPlayerState.Action;
					newAction.location = location;
					newAction.objectToUse = objectToUseActionOn;
					newAction.inventoryIndex = -1;

					actionList.Add(newAction);

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
			case EPlayerState.WalkToObject :
			case EPlayerState.Idle :
			case EPlayerState.Talking :
			case EPlayerState.UseItem :
			case EPlayerState.WalkToLocation :
			case EPlayerState.Action :
				

				if( WalkToObject( objectToTalkTo )  )
				{
					ActionData newAction = new ActionData();
					
					newAction.state = EPlayerState.Talking;
					newAction.location = location;
					newAction.objectToUse = objectToTalkTo;
					newAction.inventoryIndex = -1;
					
					actionList.Add(newAction);

				}
				
				return;
				
				
			default :
				return;
		}
	}

	public void ForceSetTalkTo( GameObject objectToTalkTo, Vector3 location )
	{
		switch (currentState.state)
		{
		case EPlayerState.WalkToObject :
		case EPlayerState.Idle :
		case EPlayerState.Talking :
		case EPlayerState.UseItem :
		case EPlayerState.WalkToLocation :
		case EPlayerState.Action :

				actionList.Clear();

				ActionData newAction = new ActionData();
				
				newAction.state = EPlayerState.Talking;
				newAction.location = location;
				newAction.objectToUse = objectToTalkTo;
				newAction.inventoryIndex = -1;
				
				actionList.Add(newAction);

				currentState.state = EPlayerState.Idle;

			
			return;
			
			
		default :
			return;
		}
	}

	public void UseItem(int indexSelectedItem, GameObject objectToUseItemOn, Vector3 location)
	{
		switch (currentState.state)
		{
			case EPlayerState.Idle :
			case EPlayerState.Talking :
			case EPlayerState.UseItem :
			case EPlayerState.WalkToObject :
			case EPlayerState.WalkToLocation :
			case EPlayerState.Action :
				if( WalkToObject(objectToUseItemOn)  )
				{
					ActionData newAction = new ActionData();
					
					newAction.state = EPlayerState.UseItem;
					newAction.location = location;
					newAction.objectToUse = objectToUseItemOn;
					newAction.inventoryIndex = indexSelectedItem;
					
					actionList.Add(newAction);
					
				}
				return;
				
				
			default :
				return;
		}
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
			case EPlayerState.UseItem :
				IUseItem useObject = null;
				
				Inventory.myInv.TryUseItemOnActor(currentState.objectToUse, currentState.inventoryIndex);
			
				return;

			case EPlayerState.Action :
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
			case EPlayerState.WalkToObject :
			case EPlayerState.Idle :
			case EPlayerState.Talking :
			case EPlayerState.UseItem :
			case EPlayerState.WalkToLocation :
			case EPlayerState.Action:

				currentAnimationState = EAnimationState.Idle;
				currentState.state = EPlayerState.Idle;
				
			return;
				
				
			default :
				return;
		}
	}

	void LateUpdate()
	{
		//Debug.Log ("Test1");
		if (spawning)
		{
			if( (transform.position.x != spawnLocation.x) || (transform.position.z != spawnLocation.z) )
			{
				//Debug.Log ("Test2");
				transform.position = spawnLocation;
			}
			else
			{
				agent.enabled = true;
				spawning = false;
			}
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
				dialogOpen = false;
				//currentAnimationState = EAnimationState.Idle;
				if(actionList.Count > 0)
				{
					currentState = actionList[0];
					actionList.RemoveAt(0);
				}
			break;

			case EPlayerState.WalkToObject :
				currentAnimationState = EAnimationState.Running;
				
				agent.SetDestination (currentState.objectToUse.transform.position);
				
				distanceToActor = (currentState.objectToUse.transform.position - transform.position).magnitude;
				
				NPCBase npcObject = currentState.objectToUse.GetComponent<NPCBase>();
				if( npcObject != null)
				{
					if (distanceToActor <= 4.0f) 
					{
						currentState.state = EPlayerState.Idle;
						agent.ResetPath(); 
					}
				}
				else
				{
					if (distanceToActor <= 2.0f) 
					{
						currentState.state = EPlayerState.Idle;
						agent.ResetPath(); 
					}
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
					agent.ResetPath(); 
				}
			break;

			case EPlayerState.Action :

				agent.ResetPath();

				IAction actionObject = null;
				
				if(currentState.objectToUse != null)
				{
					actionObject = currentState.objectToUse.GetComponent<IAction>();
					rotateTarget = currentState.objectToUse.transform.position;
				}

				
				RotateTowards();

				if(actionObject != null)
				{
					//within range
					if( TraceObject(currentState.objectToUse, 1.5f) )
					{
						currentAnimationState = actionObject.AnimationOnAction();

						if( currentAnimationState == EAnimationState.None || 
					   		currentAnimationState == EAnimationState.Idle ||
					   		currentAnimationState == EAnimationState.Running ||
					  		currentAnimationState == EAnimationState.Talk ||
					   		currentAnimationState == EAnimationState.Walk )
						{
							currentAnimationState = EAnimationState.Idle;
							currentState.state = EPlayerState.Idle;

							//use action without animation	
							if( currentState.objectToUse != null )
							{
								actionObject = currentState.objectToUse.GetComponent<IAction>();
							}
							
							if(actionObject != null)
							{
								actionObject.OnAction();
							}
							
							break;
						}

						currentAnimationState = actionObject.AnimationOnAction();
					}
					else
					{
						DisplayComment("I can't reach it.");
						currentState.state = EPlayerState.Idle;
						currentAnimationState = EAnimationState.Idle;
					}
				}
			break;

			case EPlayerState.UseItem :
				
				IUseItem useItem = null;
				NPCBase npcBase = null;

				agent.ResetPath();

				if(currentState.objectToUse != null)
				{
					useItem = currentState.objectToUse.GetComponent<IUseItem>();
					npcBase = currentState.objectToUse.GetComponent<NPCBase>();
					rotateTarget = currentState.objectToUse.transform.position;
				}

				RotateTowards();
				//make sure npc dont walk away when giving them items
				if( npcBase != null)
				{
					npcBase.GiveItem();
				}
				
				if(useItem != null)
				{
					//within range
					if( TraceObject(currentState.objectToUse, 4.0f) )
					{
						
						ItemStruct itemToUse = new ItemStruct();
						if( Inventory.myInv.GetItemFromIndex(currentState.inventoryIndex, ref itemToUse) )
						{
							
							if(currentAnimationState == EAnimationState.Idle || currentAnimationState == EAnimationState.Running || currentAnimationState == EAnimationState.Talk)
							{
								currentAnimationState = useItem.AnimationOnItem( itemToUse.itemType );
							}

							if( currentAnimationState == EAnimationState.None || 
							   	currentAnimationState == EAnimationState.Idle ||
							   	currentAnimationState == EAnimationState.Running ||
							   	currentAnimationState == EAnimationState.Talk ||
							   	currentAnimationState == EAnimationState.Walk )
							{
								currentAnimationState = EAnimationState.Idle;
								currentState.state = EPlayerState.Idle;
								
								//use item without animation
								IUseItem useObject = null;
								Inventory.myInv.TryUseItemOnActor(currentState.objectToUse, currentState.inventoryIndex);

								break;
							}
						}

						//currentState.state = EPlayerState.Idle;
					}
					else
					{
						DisplayComment("I can't reach it.");
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
					rotateTarget = currentState.objectToUse.transform.position;
				}

				RotateTowards();
				
				if(talkObject != null)
				{
					
					//within range
					if( TraceObject(currentState.objectToUse, 4.0f) )
					{

						//remove the state from the queue
						currentAnimationState = EAnimationState.Talk;

						if(dialogOpen == false)
						{
							dialogOpen = true;
							talkObject.OnTalkTo();
						}


						if(GWorld.dialogOpen == false)
						{
							currentAnimationState = EAnimationState.Idle;
						}

					}

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

	bool TraceObject(GameObject objectToCheck, float distance)
	{
		if (objectToCheck == null)
		{
			return false;
		}
		
		Collider[] allObjects = Physics.OverlapSphere (transform.position, distance);
		
		foreach (Collider col in allObjects) 
		{
			if( col.gameObject == objectToCheck)
			{
				return true;
			}
		}
		
		return false;
	}

	public void EnableBackpack(bool enable)
	{
		MeshRenderer[] allMeshes = GetComponentsInChildren<MeshRenderer> ();

		foreach (MeshRenderer comp in allMeshes) 
		{
			if( comp.CompareTag("PlayerBackpack") )
			{
				comp.enabled = enable;
			}
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
		speech.SetName ("Player");
		speech.SetObjectFollow (gameObject);
		speech.SetOffset (commentOffsetX, commentOffsetY);
		speech.SetSortOrder (sortOrder);
		
		if (speech != null) 
		{
			speech.SetText(text);	
		}
		
	}

	void RotateTowards()
	{
			Vector3 location = new Vector3 (rotateTarget.x, transform.position.y, rotateTarget.z);
			Vector3 position = new Vector3 (transform.position.x, transform.position.y , transform.position.z);

			Vector3 targetDir = location - position;
			float step = rotationSpeed * Time.deltaTime;
			Vector3 newDir = Vector3.RotateTowards (transform.forward, targetDir, step, 0.0F);
			Debug.DrawRay (transform.position, newDir, Color.red);
			transform.rotation = Quaternion.LookRotation (newDir);

	}

	void PlayerDisplayStartLine1()
	{
		PlayerMovement movComp = GetComponent<PlayerMovement>();
		movComp.DisplaySpeechBubble("Whoa! What a crash!");
	}

	void PlayerDisplayStartLine2()
	{
		PlayerMovement movComp = GetComponent<PlayerMovement>();
		movComp.DisplaySpeechBubble("Where'd my backpack go?");
	}

}
