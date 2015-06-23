using UnityEngine;
using System.Collections;

public class ItemLetter : Item {


	override public void OnInventoryInspect()
	{
		//Make sure there is no other letters open
		UILetter[] letter = FindObjectsOfType<UILetter> ();

		if( letter.Length == 0 )
		{

			string path = "Prefabs/UI/Letter/Letter1";
			GameObject letter1 = (GameObject) Instantiate(Resources.Load(path));
			
			if(!letter1)
			{
				Debug.Log ("Failed to Load Letter1 - " + path);
			}

		}
	}


	override public void OnInspect()
	{

		DisplayComment ("A bottle, it looks like it contains a letter.");
	}

	override public void OnAction( ) 
	{

		if (GWorld.isInvEnabled == true) 
		{
			if (Inventory.myInv.AddItem (itemData, transform.position)) 
			{
				GWorld.MarkEventDone (eventID);
				Destroy (gameObject);
			} 
		} 
		else 
		{
			DisplayComment("Need inventory to pickup item");
		}

	}

}
