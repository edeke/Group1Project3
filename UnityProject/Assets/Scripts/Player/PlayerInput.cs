using UnityEngine;
using System.Collections;
using UnityEngine.EventSystems;

public enum MouseCursorInput
{
	Default,
	Normal,
	Inspect,
	Talk,
	Pickup,
	AreaChange,
	Give
}

public class PlayerInput : MonoBehaviour 
{

	GameObject selectedObject;

	bool mouseClicked = false;
	Vector3 mouseLocationPrevFrame;
	Vector3 mouseLocationStartFrame;
	const float mouseDragDeadZone = 10.0f;
	bool dragging = false;
	bool ignoreFirstInput = false;

	PlayerMovement movementScript;

	Vector2 mouseHotSpot;

	IMouseCursor currentMouseObject;

	public Texture2D mouseTextureNormal;
	public Texture2D mouseTextureInspect;
	public Texture2D mouseTextureTalk;
	public Texture2D mouseTexturePickup;
	public Texture2D mouseTextureAreaChange;
	public Texture2D mouseTextureGiveItem;

	void Start () 
	{
		movementScript = GetComponentInChildren<PlayerMovement>();
		mouseHotSpot = new Vector2 ( 32.0f, 32.0f);
		//mouseHotSpot = new Vector2 (0.5f, 0.5f);

	}

	void OnLevelWasLoaded()
	{
		currentMouseObject = null;
	}

	void TraceAndChangeMouseCursor ()
	{
		if (GWorld.loadLevel == true) 
		{
			Cursor.SetCursor( mouseTextureNormal, mouseHotSpot, CursorMode.Auto );
			
			if(currentMouseObject != null)
			{
				currentMouseObject.OnMouseLeave();
				currentMouseObject = null;
			}

			return;
		}

		if (EventSystem.current.IsPointerOverGameObject () ) 
		{
			Cursor.SetCursor( mouseTextureNormal, mouseHotSpot, CursorMode.Auto );
			
			if(currentMouseObject != null)
			{
				currentMouseObject.OnMouseLeave();
				currentMouseObject = null;
			}

			return;
		}
			
		RaycastHit hitInfo = new RaycastHit ();
		Ray mouseRay = Camera.main.ScreenPointToRay (Input.mousePosition);
		bool traceHit = Physics.Raycast (mouseRay, out hitInfo);

		if( traceHit )
		{
			IMouseCursor mouseCursorInterface = hitInfo.collider.GetComponent<IMouseCursor>();


			if( mouseCursorInterface != null)
			{

				if(currentMouseObject != null && mouseCursorInterface != currentMouseObject)
				{
					currentMouseObject.OnMouseLeave();
					currentMouseObject = null;
				}

				currentMouseObject = mouseCursorInterface;
				MouseCursorInput newCursor = mouseCursorInterface.OnMouseOverCursor();

				if(!dragging)
				{
					switch(newCursor)
					{
						case MouseCursorInput.Inspect :
							Cursor.SetCursor( mouseTextureInspect, mouseHotSpot, CursorMode.Auto );
						break;

						case MouseCursorInput.Normal :
							Cursor.SetCursor( mouseTextureNormal, mouseHotSpot, CursorMode.Auto );
						break;

						case MouseCursorInput.Talk :
							Cursor.SetCursor( mouseTextureTalk, mouseHotSpot, CursorMode.Auto );
						break;

						case MouseCursorInput.Pickup :
							Cursor.SetCursor( mouseTexturePickup, mouseHotSpot, CursorMode.Auto );
						break;

						case MouseCursorInput.AreaChange :
							Cursor.SetCursor( mouseTextureAreaChange, mouseHotSpot, CursorMode.Auto );
						break;

						default :
							Cursor.SetCursor( mouseTextureNormal, mouseHotSpot, CursorMode.Auto );
						break;
					}
				}
				else
				{
					IUseItem itemInterface = hitInfo.collider.GetComponent<IUseItem>();

					if(itemInterface != null)
					{
						Cursor.SetCursor( mouseTextureGiveItem, mouseHotSpot, CursorMode.Auto );
					}
					else
					{
						Cursor.SetCursor( mouseTextureNormal, mouseHotSpot, CursorMode.Auto );
					}
				}

			}
			else
			{
				Cursor.SetCursor( mouseTextureNormal, mouseHotSpot, CursorMode.Auto );

				if(currentMouseObject != null)
				{
					currentMouseObject.OnMouseLeave();
					currentMouseObject = null;
				}
			}
		}

		/*//Ondragging item
		else if ( traceHit && dragging == true)
		{		
			IMouseCursor mouseCursorInterface = hitInfo.collider.GetComponent<IMouseCursor>();

			if( mouseCursorInterface != null)
			{
					
				if(currentMouseObject != null && mouseCursorInterface != currentMouseObject)
				{
					currentMouseObject.OnMouseLeave();
					currentMouseObject = null;
				}
					
				mouseCursorInterface.OnMouseOverCursor();

				Cursor.SetCursor( mouseTextureGiveItem, mouseHotSpot, CursorMode.Auto );

				}
				else
				{
					Cursor.SetCursor( mouseTextureNormal, mouseHotSpot, CursorMode.Auto );
					
					if(currentMouseObject != null)
					{
						currentMouseObject.OnMouseLeave();
						currentMouseObject = null;
					}
				}

			}
			else
			{
				Cursor.SetCursor( mouseTextureNormal, mouseHotSpot, CursorMode.Auto );
				
				if(currentMouseObject != null)
				{
					currentMouseObject.OnMouseLeave();
					currentMouseObject = null;
				}
			}*/

	}

	void Update () 
	{

		TraceAndChangeMouseCursor ();


		//dont do anything is dialog is open
		if (GWorld.dialogOpen)
		{
			//will make the first movement input after closing the dialog to be ignored
			ignoreFirstInput = true;
			return;
		}

		//right mouse click
		if (Input.GetMouseButtonUp (1)) 
		{			

			RaycastHit hitInfo = new RaycastHit ();
			Ray mouseRay = Camera.main.ScreenPointToRay (Input.mousePosition);
			bool traceHit = Physics.Raycast (mouseRay, out hitInfo);

			if( GWorld.isInvEnabled )
			{
				if( Inventory.myInv.CurrentSelectedItem == -1 && traceHit && dragging == false )
				{
					if( !TryTalkToObject( hitInfo.collider.gameObject, hitInfo.point ))
					{
						TryUseActionOnObject( hitInfo.collider.gameObject, hitInfo.point);
					}
				}
			}
			else
			{	
				if( traceHit && dragging == false )
				{
					if( !TryTalkToObject( hitInfo.collider.gameObject , hitInfo.point ))
					{
						TryUseActionOnObject( hitInfo.collider.gameObject, hitInfo.point );
					}
				}
			}

		}

		//on left mouse click
		if (Input.GetMouseButtonDown (0)) 
		{

			mouseClicked = true;
			mouseLocationPrevFrame = Input.mousePosition;
			mouseLocationStartFrame = Input.mousePosition;
			dragging = false;

		}
		//for dragging
		else if (Input.GetMouseButton (0) && mouseClicked) 
		{
			Vector3 deltaMousePosition = mouseLocationStartFrame - Input.mousePosition;
			if(deltaMousePosition.magnitude > mouseDragDeadZone)
			{
				dragging = true;
			}

			if(dragging == true)
			{

				RaycastHit hitInfo = new RaycastHit ();
				Ray mouseRay = Camera.main.ScreenPointToRay (Input.mousePosition);
				
				bool traceHit = Physics.Raycast (mouseRay, out hitInfo);

				if(GWorld.isInvEnabled == true )
				{
					if ( Inventory.myInv.CurrentSelectedItem == -1 && traceHit)
					{
						//if no interface on object and pointer is not over a UI element
						if( EventSystem.current.IsPointerOverGameObject() == false )
						{	
							if(! TryInspectOnObject( hitInfo.collider.gameObject, false ) )
							{
								if( hitInfo.collider.gameObject.CompareTag("Actor") == false && hitInfo.collider.gameObject.CompareTag("Player") == false )
								{
									movementScript.WalkToLocation(hitInfo.point);
								}	
							}
						}
					}
				}
				else
				{
					if ( traceHit )
					{
						//if no interface on object and pointer is not over a UI element
						if( EventSystem.current.IsPointerOverGameObject() == false )
						{
							if(! TryInspectOnObject( hitInfo.collider.gameObject, false ) )
							{
								if( hitInfo.collider.gameObject.CompareTag("Actor") == false && hitInfo.collider.gameObject.CompareTag("Player") == false )
								{
									movementScript.WalkToLocation(hitInfo.point);
								}	
							}
						}
					}
				}
			}
			/*RaycastHit hitInfo = new RaycastHit ();
			Ray mouseRay = Camera.main.ScreenPointToRay (Input.mousePosition);

			//check if we are dragging mouse by comparing to start location of mouse
			Vector3 deltaMousePosition = mouseLocationStartFrame - Input.mousePosition;
			
			if(deltaMousePosition.magnitude > mouseDragDeadZone)
			{
				dragging = true;
			}

			if(GWorld.isInvEnabled == true)
			{
				if (Inventory.myInv.CurrentSelectedItem == -1 && Physics.Raycast (mouseRay, out hitInfo))
				{
					TryDragOnObject( hitInfo.collider.gameObject );
				}
			}
			else
			{
				if (Physics.Raycast (mouseRay, out hitInfo))
				{
					TryDragOnObject( hitInfo.collider.gameObject );
				}
			}
			
			mouseClicked = true;
			mouseLocationPrevFrame = Input.mousePosition;

			*/

		}

		//when releasing mouse
		else if( Input.GetMouseButtonUp (0) )
		{
			if(ignoreFirstInput)
			{
				ignoreFirstInput = false;
				return;
			}

			RaycastHit hitInfo = new RaycastHit ();
			Ray mouseRay = Camera.main.ScreenPointToRay (Input.mousePosition);
			
			bool traceHit = Physics.Raycast (mouseRay, out hitInfo);

			//Debug.Log ("Hit : " + hitInfo.collider.name);

			//try talk or onclick funtions on hit actor
			if(GWorld.isInvEnabled == true)
			{
				if ( Inventory.myInv.CurrentSelectedItem == -1 && traceHit && dragging == false )
				{
					if(! TryInspectOnObject( hitInfo.collider.gameObject ))
					{
						//if no interface on object and pointer is not over a UI element
						if( EventSystem.current.IsPointerOverGameObject() == false )
						{
							if( hitInfo.collider.gameObject.CompareTag("Actor") == false && hitInfo.collider.gameObject.CompareTag("Player") == false )
							{
								movementScript.WalkToLocation(hitInfo.point);
							}

						}

					}

				}
				//try use item on actor
				else if( Inventory.myInv.CurrentSelectedItem != -1 && !EventSystem.current.IsPointerOverGameObject() && traceHit)
				{
					TryUseItemOnObject( hitInfo.collider.gameObject, hitInfo.point );
				}

				dragging = false;
			}
			else // No Inventory
			{
				if ( traceHit && dragging == false )
				{
					if(! TryInspectOnObject( hitInfo.collider.gameObject ))
					{
						//if no interface on object and pointer is not over a UI element
						if( EventSystem.current.IsPointerOverGameObject() == false )
						{
							if( hitInfo.collider.gameObject.CompareTag("Actor") == false && hitInfo.collider.gameObject.CompareTag("Player") == false )
							{
								movementScript.WalkToLocation(hitInfo.point);
							}
							
						}
						
					}
					
				}
			}

			mouseClicked = false;
			dragging = false;

		}
	}

	bool TryUseActionOnObject(GameObject actionObject, Vector3 location,  bool useInterface = true)
	{
		//store object for later
		selectedObject = actionObject;
		
		IAction onAction = actionObject.GetComponent<IAction> ();
		
		if(onAction != null && useInterface == true)
		{
			movementScript.ActionOnObject(actionObject, location);
			return true;
		}
		else
		{
			//movementScript.TrySetMoveToLocationState(hitInfo.point);
			return false;
		}
	}

	bool TryTalkToObject(GameObject actionObject, Vector3 location)
	{
		//store object for later
		selectedObject = actionObject;
		
		ITalkTo onTalkTo = actionObject.GetComponent<ITalkTo> ();
		
		if(onTalkTo != null)
		{
			movementScript.TrySetTalking(actionObject, location);
			return true;
		}
		else
		{
			//movementScript.TrySetMoveToLocationState(hitInfo.point);
			return false;
		}
	}

	/*bool TryDragOnObject(GameObject inspectObject)
	{
		//store object for later
		selectedObject = inspectObject;
		IInspectInterface canClick = inspectObject.GetComponent<IInspectInterface> ();
		
		if (canClick != null) 
		{
			Vector3 mouseLocation = Input.mousePosition;
			Vector3 deltaMouseLocation = mouseLocation - mouseLocationPrevFrame;
			
			canClick.OnDragOver (deltaMouseLocation);

			return true;
		}
		else 
		{
			return false;
		}

	}*/

	bool TryInspectOnObject(GameObject inspectObject, bool useInterface = true)
	{
		//store object for later
		selectedObject = inspectObject;
		IInspectInterface canInspect = inspectObject.GetComponent<IInspectInterface> ();
		
		if (canInspect != null && useInterface == true) 
		{
			Vector3 mouseLocation = Input.mousePosition;
			Vector3 deltaMouseLocation = mouseLocation - mouseLocationPrevFrame;
			
			canInspect.OnInspect();
			
			return true;
		}
		else 
		{
			return false;
		}
		
	}

	bool TryUseItemOnObject(GameObject actorToUseOn, Vector3 location, bool useInterface = true)
	{
		//store object for later
		selectedObject = actorToUseOn;
		IUseItem canUseItem = selectedObject.GetComponent<IUseItem> ();
		
		if ( canUseItem != null && useInterface == true	)
		{
			
			movementScript.UseItem( Inventory.myInv.CurrentSelectedItem,  actorToUseOn , location);
			
			Inventory.myInv.DeselectItem();

			return true;
		}
		else
		{
			Inventory.myInv.DeselectItem();

			return false;
		}
	}
}
