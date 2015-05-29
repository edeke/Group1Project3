using UnityEngine;
using System.Collections;
using UnityEngine.EventSystems;

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

	void Start () 
	{
		movementScript = GetComponentInChildren<PlayerMovement>();
	}

	void Update () 
	{
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
					if( !TryTalkToObject( hitInfo.collider.gameObject ))
					{
						TryUseActionOnObject( hitInfo.collider.gameObject );
					}
				}
			}
			else
			{	
				if( traceHit && dragging == false )
				{
					if( !TryTalkToObject( hitInfo.collider.gameObject ))
					{
						TryUseActionOnObject( hitInfo.collider.gameObject );
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
			RaycastHit hitInfo = new RaycastHit ();
			Ray mouseRay = Camera.main.ScreenPointToRay (Input.mousePosition);
			
			bool traceHit = Physics.Raycast (mouseRay, out hitInfo);

			if(GWorld.isInvEnabled == true)
			{
				if ( Inventory.myInv.CurrentSelectedItem == -1 && traceHit)
				{
					//if no interface on object and pointer is not over a UI element
					if( EventSystem.current.IsPointerOverGameObject() == false )
					{	
						if(! TryInspectOnObject( hitInfo.collider.gameObject ) )
						{
							if( hitInfo.collider.gameObject.CompareTag("Actor") == false && hitInfo.collider.gameObject.CompareTag("Player") == false )
							{
								movementScript.TrySetMoveToLocationState(hitInfo.point);
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
						if(! TryInspectOnObject( hitInfo.collider.gameObject ) )
						{
							if( hitInfo.collider.gameObject.CompareTag("Actor") == false && hitInfo.collider.gameObject.CompareTag("Player") == false )
							{
								movementScript.TrySetMoveToLocationState(hitInfo.point);
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
								movementScript.TrySetMoveToLocationState(hitInfo.point);
							}

						}

					}

				}
				//try use item on actor
				else if( Inventory.myInv.CurrentSelectedItem != -1 && !EventSystem.current.IsPointerOverGameObject() && traceHit)
				{
					TryUseItemOnObject( hitInfo.collider.gameObject );
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
								movementScript.TrySetMoveToLocationState(hitInfo.point);
							}
							
						}
						
					}
					
				}
			}

			mouseClicked = false;

		}
	}

	bool TryUseActionOnObject(GameObject actionObject)
	{
		//store object for later
		selectedObject = actionObject;
		
		IAction onAction = actionObject.GetComponent<IAction> ();
		
		if(onAction != null)
		{
			movementScript.TrySetActionOnObject(actionObject);
			return true;
		}
		else
		{
			//movementScript.TrySetMoveToLocationState(hitInfo.point);
			return false;
		}
	}

	bool TryTalkToObject(GameObject actionObject)
	{
		//store object for later
		selectedObject = actionObject;
		
		ITalkTo onTalkTo = actionObject.GetComponent<ITalkTo> ();
		
		if(onTalkTo != null)
		{
			movementScript.TrySetTalking(actionObject);
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

	bool TryInspectOnObject(GameObject inspectObject)
	{
		//store object for later
		selectedObject = inspectObject;
		IInspectInterface canInspect = inspectObject.GetComponent<IInspectInterface> ();
		
		if (canInspect != null) 
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

	bool TryUseItemOnObject(GameObject actorToUseOn)
	{
		//store object for later
		selectedObject = actorToUseOn;
		IUseItem canUseItem = selectedObject.GetComponent<IUseItem> ();
		
		if ( canUseItem != null	)
		{
			
			movementScript.TrySetUseItemOnObject( Inventory.myInv.CurrentSelectedItem,  actorToUseOn );
			
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
