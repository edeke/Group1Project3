using UnityEngine;
using System.Collections;

public class ForbiddenAreaCave : MonoBehaviour
{

	public Vector3 walkToTarget;
	protected GameObject commentObject;
	protected CommentController comment;
	string EventID = "MirrorPlacedCave";

	void Start()
	{

	}
	
	// Use this for initialization
	void OnTriggerEnter (Collider other) 
	{

		EventData tempData = new EventData();
		GWorld.FindEvent(EventID,ref tempData);
			
		if(tempData.hasEventOccured)
		{
			if( other.CompareTag("Player") )
			{
				if( GWorld.GetTimeOfTheDay() == TimeOfDay.Night )
				{
					//GWorld.LoadScene(LevelToLoad);
				}
				else
				{

					PlayerMovement movementComp = GWorld.myPlayer.GetComponentInChildren<PlayerMovement> ();
					movementComp.ForceMoveToLocation (transform.position + walkToTarget);
					movementComp.DisplaySpeechBubble("It's too dangerous in the darkness.");
				}
			}
		}
		else
		{
			PlayerMovement movementComp = GWorld.myPlayer.GetComponentInChildren<PlayerMovement> ();
			movementComp.ForceMoveToLocation (transform.position + walkToTarget);
			movementComp.DisplaySpeechBubble("It's too dangerous in the darkness.");
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
