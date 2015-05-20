using UnityEngine;
using System.Collections;


public class Rucksack : CommentActorBase
{
	void Start () 
	{
		
		//Debug.Log ("Hej");
	}

	override public void OnInspect()
	{	

		DisplayComment("Looks like a Backpack, but I can't reach it");

	}

	override public void OnAction()
	{	
		GWorld.EnableInventory();

		Invoke ("DestroyObject", 1.0f);
		
	}
	
	void DestroyObject()
	{
		Destroy (gameObject);
	}

}
