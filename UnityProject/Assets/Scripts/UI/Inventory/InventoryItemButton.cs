using UnityEngine;
using UnityEngine.UI;
using System.Collections;
using UnityEngine.EventSystems;

public class InventoryItemButton : MonoBehaviour {

	public int index;
	RawImage imageComp;
	Text textComp;

	GraphicRaycaster UI;

	Animator anim;

	bool isDragged = false;
	int animMouseOverHash = Animator.StringToHash("isMouseOver");

	AudioClip clickSound;
	
	public void OnMouseUp()
	{
		if (Inventory.myInv.CurrentSelectedItem != -1) 
		{
			Inventory.myInv.CombineItems();

		}

	}

	public void OnMouseClick()
	{
		//On right click
		if (Input.GetMouseButtonUp (0)) 
		{
			Inventory.myInv.RunInventoryItemScript(index);
		}

	}

	//set index of button to link it to the inventory item array
	public void SetIndex(int newIndex)
	{
		index = newIndex;
	}
	
	//used for update textures on Icon
	public void Update()
	{

		ItemStruct itemData = new ItemStruct ();

		if (Inventory.myInv.CurrentSelectedItem == -1) 
		{
			UI.enabled = true;
		}
		
		if ( Inventory.myInv.GetItemFromIndex (index, ref itemData) ) 
		{
			//dont show picture if we are dragging the current item
			if(Inventory.myInv.CurrentSelectedItem != index)
			{
				imageComp.enabled = true;
			}

			imageComp.texture = itemData.itemTexture;

			if( itemData.numberOfItemsInStack > 1)
			{
				textComp.text = itemData.numberOfItemsInStack.ToString();
			}
			else
			{
				textComp.text = "";
			}
		} 
		else
		{
			imageComp.enabled = false;
			textComp.text = "";
		}

		if (isDragged && EventSystem.current.IsPointerOverGameObject () == false)
		{

			Image[] allImages = FindObjectsOfType<Image> ();
			
			foreach (Image comp in allImages)
			{
				if (comp.CompareTag ("InventoryButtons"))
				{
					Color newColor = comp.color;
					newColor.a = 0.0f;
					comp.color = newColor;
				} 
				else if (comp.CompareTag ("MainPanel")) 
				{
					Color newColor = comp.color;
					newColor.a = 0.0f;
					comp.color = newColor;
				}
			}

			RawImage[] allRawImages = FindObjectsOfType<RawImage> ();
			
			foreach (RawImage comp in allRawImages)
			{
				if (comp.CompareTag ("InventoryButtons"))
				{
					Color newColor = comp.color;
					newColor.a = 0.0f;
					comp.color = newColor;
				} 
			}

			UI.enabled = false;

		}

	}

	//draw texture next to the mouse cursor when item is being dragged
	void OnGUI()
	{
		
		if (isDragged && Inventory.myInv.itemArray [index] != null) 
		{
			
			float sizeX = 100.0f;
			float sizeY = 100.0f;
			
			float positionX = Input.mousePosition.x - (sizeX / 2);
			float postitonY = (Screen.height - Input.mousePosition.y) - (sizeY / 2);
			
			Rect dragRect = new Rect (positionX, postitonY, sizeX, sizeY); 

			GUI.DrawTexture (dragRect, Inventory.myInv.itemArray [index].itemTexture);
			
		}
		
	}
	
	void Awake()
	{

		imageComp = GetComponentInChildren<RawImage> ();
		textComp = GetComponentInChildren<Text> ();
		anim = GetComponentInChildren<Animator> ();


		GraphicRaycaster[] allComp = FindObjectsOfType<GraphicRaycaster> ();

		foreach (GraphicRaycaster comp in allComp) 
		{
			if( comp.CompareTag("MainUI") )
			{
				UI = comp;
			}
		}

		string path = "SFX/InventorySounds/click";
		clickSound = (AudioClip)Resources.Load(path,typeof(AudioClip));
		
		if ( !clickSound)
		{
			Debug.Log("Unable to load sound - " + path);
		}

	}

	public void OnMouseOver()
	{
		
		if (Inventory.myInv.CurrentSelectedItem != -1) 
		{
			ItemStruct itemData = new ItemStruct();

			if(Inventory.myInv.GetItemFromIndex(index, ref itemData))
			{
				Inventory.myInv.CombineItemIndex = index;
			}

		}

		if (Inventory.myInv.itemArray [index] != null) 
		{
			anim.SetBool (animMouseOverHash, true);

			ShowItemDescription(Inventory.myInv.itemArray [index].itemDescription);

		}
	}

	public void OnMouseLeaving()
	{
		Inventory.myInv.CombineItemIndex = -1;

		ShowItemDescription("");

		if (!isDragged) 
		{
			anim.SetBool (animMouseOverHash, false);
		}
	}

	public void ShowItemDescription(string newText)
	{
		Text[] allText = FindObjectsOfType<Text> ();

		foreach (Text comp in allText)
		{
			if( comp.CompareTag("ItemText") )
			{
				comp.text = newText;
			}
		}
	}

	public void OnBeginDrag()
	{

		if (Inventory.myInv.itemArray [index] != null) 
		{

			AudioSource.PlayClipAtPoint(clickSound, transform.position);

			anim.SetBool (animMouseOverHash, true);
			isDragged = true;
			Inventory.myInv.SelectItem (index);
			imageComp.enabled = false;

		}

	}

	public void OnEndDrag()
	{
		anim.SetBool (animMouseOverHash, false);
		isDragged = false;

		AudioSource.PlayClipAtPoint(clickSound, transform.position);

		//make sure we have an item before enable again
		if (Inventory.myInv.CheckIfItemExist (index)) 
		{
			imageComp.enabled = true;
			
		} 

		Image[] allImages = FindObjectsOfType<Image>();
		
		foreach(Image comp in allImages)
		{
			if( comp.CompareTag("InventoryButtons") )
			{
				Color newColor = comp.color;
				newColor.a = 1.0f;
				comp.color = newColor;
			}
			
			else if ( comp.CompareTag("MainPanel") )
			{
				Color newColor = comp.color;
				newColor.a = 0.3f;
				comp.color = newColor;
			}
		}

		RawImage[] allRawImages = FindObjectsOfType<RawImage> ();
		
		foreach (RawImage comp in allRawImages)
		{
			if (comp.CompareTag ("InventoryButtons"))
			{
				Color newColor = comp.color;
				newColor.a = 1.0f;
				comp.color = newColor;
			} 
		}

		UI.enabled = true;

	}




}
