using UnityEngine;
using System.Collections;

public class ForbiddenAreaPirate : MonoBehaviour
{

	public Vector3 walkToTarget;
	public GameObject pirateObject;
	protected GameObject commentObject;
	protected CommentController comment;
	public ZoneBase LevelToLoad;
	string EventID = "RingGivenToPirate";

	void Start()
	{
		/*if (!GWorld.TryRegisterEvent (EventID, "Hello"))
		{
			EventData tempData = new EventData();
			GWorld.FindEvent(EventID,ref tempData);
			
			if(tempData.hasEventOccured)
			{
				Destroy(gameObject);
			}
			
		}*/
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
				GWorld.LoadScene(LevelToLoad);
				
			}
		}
		else
		{
			Pirate pirate = pirateObject.GetComponentInChildren<Pirate> ();
			pirate.GetAwayFromThere ();
			
			PlayerMovement movementComp = GWorld.myPlayer.GetComponentInChildren<PlayerMovement> ();
			movementComp.ForceMoveToLocation (transform.position + walkToTarget);

			Invoke ("DisplayYikes", 0.5f);
		}

	}

	void DisplayYikes()
	{
		PlayerMovement movComp = GWorld.myPlayer.GetComponent<PlayerMovement>();
		movComp.DisplaySpeechBubble("Yikes! I better not make him angry.");
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
