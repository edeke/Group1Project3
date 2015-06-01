using UnityEngine;
using System.Collections;

public class ForbiddenArea : MonoBehaviour
{

	public Vector3 walkToTarget;
	protected GameObject commentObject;
	protected CommentController comment;

	// Use this for initialization
	void OnTriggerEnter () 
	{
		DisplayComment ("Hej, du får inte vara här !");
		PlayerMovement movementComp = GWorld.myPlayer.GetComponentInChildren<PlayerMovement> ();
		movementComp.ForceMoveToLocation (transform.position + walkToTarget);
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
