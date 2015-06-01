using UnityEngine;
using System.Collections;

public class ForbiddenAreaSnake : MonoBehaviour
{

	public Vector3 walkToTarget;
	public GameObject waterFallSnake;
	protected GameObject commentObject;
	protected CommentController comment;
	string EventID = "SnakeScaredAway";

	void Start()
	{
		if (!GWorld.TryRegisterEvent (EventID, "Hello"))
		{
			EventData tempData = new EventData();
			GWorld.FindEvent(EventID,ref tempData);
			
			if(tempData.hasEventOccured)
			{
				Destroy(gameObject);
			}
			
		}
	}
	
	// Use this for initialization
	void OnTriggerEnter () 
	{

		EventData tempData = new EventData();
		GWorld.FindEvent(EventID,ref tempData);
			
		if(tempData.hasEventOccured)
		{
			Destroy(gameObject);
		}
		else
		{
			WaterfallSnake snake = waterFallSnake.GetComponentInChildren<WaterfallSnake> ();
			snake.HissSound ();
			
			PlayerMovement movementComp = GWorld.myPlayer.GetComponentInChildren<PlayerMovement> ();
			movementComp.ForceMoveToLocation (transform.position + walkToTarget);
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
		
		//comment = commentObject.GetComponentInChildren<CommentController> ();
		//comment.SetObjectFollow (waterFallSnake);
		
		if (comment != null) 
		{
			comment.SetText(text);	
		}

	}


}
