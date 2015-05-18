using UnityEngine;
using System.Collections;

public class Item : MonoBehaviour, IAction, IInspectInterface {

	public EItem itemType;
	public Texture itemTexture;
	public AudioClip soundOnPickup;
	public AudioClip soundOnUse;
	public GameObject onDragParticle;
	public GameObject onUseParticle;
	public GameObject onPickupParticle;
	public int numberOfItemsInStack = 1;
	
	public string eventID;
	
	public ItemStruct itemData = new ItemStruct();


	// Use this for initialization
	public void Start () {

		itemData.itemTexture = itemTexture;
		itemData.itemType = itemType;
		itemData.soundOnPickup = soundOnPickup;
		itemData.soundOnUse = soundOnUse;
		itemData.numberOfItemsInStack = numberOfItemsInStack;
		itemData.onDragParticle = onDragParticle;
		itemData.onUseParticle = onUseParticle;
		itemData.onPickupParticle = onPickupParticle;

		GWorld.TryRegisterEvent (eventID, "Hello" );

	}

	public void OnInspect()
	{


	}


	public void OnDragOver( Vector3 deltaMousePosition )
	{

	}

	public void Awake()
	{
		EventData newData = new EventData();

		if (GWorld.FindEvent (eventID, ref newData)) 
		{
			if(newData.hasEventOccured)
			{
				Destroy(gameObject);
			}
		}
	}

	public void OnAction ( )
	{

		if (Inventory.myInv.AddItem (itemData, transform.position))
		{
			GWorld.MarkEventDone(eventID);
			Destroy (gameObject);
		} 
		else
		{
			//error message
		}
	}

}
