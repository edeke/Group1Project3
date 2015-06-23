using UnityEngine;
using System.Collections;

public class ItemJar : Item {

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

	override public void OnInspect()
	{
		DisplayComment("A nice looking jar.");

	}

	override public void OnAction( ) 
	{	
		if(Dialoguer.GetGlobalBoolean(4) == true){
			if (GWorld.isInvEnabled == true) 
			{
				if (Inventory.myInv.AddItem (itemData, transform.position)) 
				{
					GWorld.MarkEventDone (eventID);
					Destroy (gameObject);
					//DisplayComment("Into my pocket you go little jar-y jar.");
				} 
			} 
		}
		else 
		{
			skyler.GetComponent<Skyler>().DontTouchTheJar();
		}

	}

}
