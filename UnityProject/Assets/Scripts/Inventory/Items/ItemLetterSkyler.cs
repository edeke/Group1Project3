using UnityEngine;
using System.Collections;

public class ItemLetterSkyler : Item {


	public GameObject skyler;
	
	void Start (){
		
		itemData.itemTexture = itemTexture;
		itemData.itemType = itemType;
		itemData.soundOnPickup = soundOnPickup;
		itemData.soundOnUse = soundOnUse;
		itemData.numberOfItemsInStack = numberOfItemsInStack;
		itemData.onDragParticle = onDragParticle;
		itemData.onUseParticle = onUseParticle;
		itemData.onPickupParticle = onPickupParticle;
		itemData.itemDescription = itemDescription;
		itemData.itemScriptName = this.GetType ();
		
		skyler = GameObject.Find ("pre_skyler");
		
	}
	
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
		if (skyler.GetComponent<Skyler>().gottenFireflies == true) {
			if (GWorld.isInvEnabled == true) {
				if (Inventory.myInv.AddItem (itemData, transform.position)) {
					GWorld.MarkEventDone (eventID);
					Destroy (gameObject);
				} 
			} 
		}
		else 
		{
			skyler.GetComponent<Skyler>().DontTouchTheJar();
		}
		
	}
}
