using UnityEngine;
using System.Collections;


public class CommentActorBase : MonoBehaviour, IInspectInterface, IAction, IUseItem
{

	protected GameObject commentObject;
	protected CommentController comment;
	public string actorName;
	
	// Use this for initialization
	void Start () 
	{
	

	}
	
	virtual public void OnInspect()
	{	



	}

	virtual public void OnAction()
	{	
		
		
		
	}
	

	virtual public void OnDragOver( Vector3 deltaMousePosition )
	{

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

	virtual public bool UseItemOnObject(EItem itemType)
	{
		
		return false;
	}

}
