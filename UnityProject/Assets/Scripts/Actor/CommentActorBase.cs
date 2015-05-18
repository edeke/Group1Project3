using UnityEngine;
using System.Collections;


public class CommentActorBase : MonoBehaviour, IInspectInterface
{

	GameObject commentObject;
	CommentController comment;
	public string actorName;
	
	// Use this for initialization
	void Start () 
	{
	
		//comment = gameObject.GetComponentInChildren<CommentController> ();

	}
	
	public void OnInspect()
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
			comment.SetText("\"This rock looks <b>suspicious</b> and <color=#008000ff><b>delicious</b></color> !\"", 40);

		}

	}
	

	public void OnDragOver( Vector3 deltaMousePosition )
	{

	}

}
