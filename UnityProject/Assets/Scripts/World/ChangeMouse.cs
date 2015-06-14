using UnityEngine;
using System.Collections;

public class ChangeMouse : MonoBehaviour, IMouseCursor {


	virtual public MouseCursorInput OnMouseOverCursor()
	{

		return MouseCursorInput.AreaChange;

	}
	
	virtual public void OnMouseLeave()
	{

	}
}
