using UnityEngine;
using System.Collections;

public class InspectBase : MonoBehaviour, IInspectInterface {

	protected GameObject commentObject;
	protected CommentController comment;
	public string actorName;
	
	public EAnimationState animationOnAction;

	virtual public void OnInspect()
	{	
		
		DisplayComment ("I don't know what that is");
		
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
