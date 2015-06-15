using UnityEngine;
using System.Collections;


public class CommentActorBase : MonoBehaviour, IInspectInterface, IAction, IUseItem, IMouseCursor
{

	protected GameObject commentObject;
	protected CommentController comment;
	public string actorName;

	public EAnimationState animationOnAction;

	public int commentOffsetX;
	public int commentOffsetY;

	public MouseCursorInput mouseCursorOver;

	bool isOutlineEnabled = false;

	
	virtual public void OnInspect()
	{	

		DisplayComment ("I don't know what that is.");

	}

	virtual public MouseCursorInput OnMouseOverCursor()
	{
		EnableOutline (true);

		if (mouseCursorOver == MouseCursorInput.Default) 
		{
			return MouseCursorInput.Normal;
		} 
		else 
		{
			return mouseCursorOver;
		}
	}

	virtual public void OnMouseLeave()
	{
		EnableOutline (false);
		
		return;
	}

	void EnableOutline(bool enable)
	{
		
		if (enable == isOutlineEnabled)
		{
			return;
		}
		
		Transform[] allTrans = GetComponentsInChildren<Transform> ();
		
		if (enable) 
		{
			foreach (Transform comp in allTrans) 
			{
				comp.gameObject.layer = LayerMask.NameToLayer ("Outline");
			}

			isOutlineEnabled = true;
		} 
		else 
		{
			foreach (Transform comp in allTrans) 
			{
				comp.gameObject.layer = LayerMask.NameToLayer ("Default");
			}
			isOutlineEnabled = false;
		}
		
	}

	virtual public void OnAction()
	{	
		
		DisplayComment ("That didn't do anything.");
		
	}

	virtual public EAnimationState AnimationOnAction()
	{	

		return animationOnAction;
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
		comment.SetOffset (commentOffsetX, commentOffsetY);
		
		if (comment != null) 
		{
			comment.SetText(text);	
		}
	}

	virtual public bool UseItemOnObject(EItem itemType)
	{
		DisplayComment ("What is that supposed to do?");
		
		return false;
	}

	virtual public EAnimationState AnimationOnItem(EItem itemType)
	{

		return EAnimationState.Error;
	}

}
