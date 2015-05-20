using UnityEngine;
using System.Collections;


public class RockOnBeach : CommentActorBase
{
	void Start () 
	{
		
		//Debug.Log ("Hej");
	}

	override public void OnInspect()
	{	

		DisplayComment("A large rock, however I can't move it");

	}

	override public void OnAction()
	{	
		
		DisplayComment("This rock looks <b>suspicious</b> and <b>delicious</b> !");

		//Invoke ("DestroyObject", 1.0f);
		
	}
	
	void DestroyObject()
	{
		Destroy (gameObject);
	}

	override public bool UseItemOnObject(EItem itemType)
	{

		
		return false;
	}
}
