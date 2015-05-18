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

	PlayerMovement movementScript;

	void Start () 
	{
		movementScript = GetComponentInChildren<PlayerMovement>();
	}

	void Update () 
	{
		//right mouse click
		if (Input.GetMouseButtonUp (1)) 
		{
			RaycastHit hitInfo = new RaycastHit ();
			Ray mouseRay = Camera.main.ScreenPointToRay (Input.mousePosition);
			bool traceHit = Physics.Raycast (mouseRay, out hitInfo);


			if( Inventory.myInv.CurrentSelectedItem == -1 && traceHit && dragging == false )
			{
				selectedObject = hitInfo.collider.gameObject;

				IAction onAction = selectedObject.GetComponent<IAction> ();

				if(onAction != null)
				{
					movementScript.TrySetActionOnObject(selectedObject);
				}
				else
				{

					//movementScript.TrySetMoveToLocationState(hitInfo.point);
				}

			}
			else if (traceHit)
			{
	
				//movementScript.TrySetMoveToLocationState(hitInfo.point);

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

			//check if we are dragging mouse by comparing to start location of mouse
			Vector3 deltaMousePosition = mouseLocationStartFrame - Input.mousePosition;
			
			if(deltaMousePosition.magnitude > mouseDragDeadZone)
			{
				dragging = true;
			}
			
			if (Inventory.myInv.CurrentSelectedItem == -1 && Physics.Raycast (mouseRay, out hitInfo)) {
				selectedObject = hitInfo.collider.gameObject;
				IInspectInterface canClick = selectedObject.GetComponent<IInspectInterface> ();
				
				if (canClick != null) {

					Vector3 mouseLocation = Input.mousePosition;
					Vector3 deltaMouseLocation = mouseLocation - mouseLocationPrevFrame;

					canClick.OnDragOver( deltaMouseLocation );
				}
			}
			
			mouseClicked = true;
			mouseLocationPrevFrame = Input.mousePosition;

		}

		//when releasing mouse
		else if( Input.GetMouseButtonUp (0) )
		{

			RaycastHit hitInfo = new RaycastHit ();
			Ray mouseRay = Camera.main.ScreenPointToRay (Input.mousePosition);
			
			bool traceHit = Physics.Raycast (mouseRay, out hitInfo);

			//try talk or onclick funtions on hit actor
			if ( Inventory.myInv.CurrentSelectedItem == -1 && traceHit && dragging == false )
			{
				selectedObject = hitInfo.collider.gameObject;
				IInspectInterface canClick = selectedObject.GetComponent<IInspectInterface> ();

				
				if (canClick != null)
				{
					canClick.OnInspect ();
				}

				//if no interface on object and pointer is not over a UI element
				else if ( !EventSystem.current.IsPointerOverGameObject())
				{

					if( hitInfo.collider.gameObject.CompareTag("Actor") == false && hitInfo.collider.gameObject.CompareTag("Player") == false )
					{
						movementScript.TrySetMoveToLocationState(hitInfo.point);
					}

				}

			}

			//try use item on actor
			else if( Inventory.myInv.CurrentSelectedItem != -1 && !EventSystem.current.IsPointerOverGameObject() && traceHit)
			{

				selectedObject = hitInfo.collider.gameObject;
				IUseItem canUseItem = selectedObject.GetComponent<IUseItem> ();

				if ( traceHit && canUseItem != null)
				{
					
					GameObject hitActor = hitInfo.collider.gameObject;

					movementScript.TrySetUseItemOnObject( Inventory.myInv.CurrentSelectedItem,  hitActor );
					
					Inventory.myInv.DeselectItem();
				}
				else
				{
					Inventory.myInv.DeselectItem();
				}
				
			}

			mouseClicked = false;

		}
	}
}
