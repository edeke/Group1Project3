using UnityEngine;
using System.Collections;

public class ChangeLevel : MonoBehaviour, IMouseCursor {

	public ZoneBase LevelToLoad;


	void OnTriggerEnter(Collider other)
	{
		//Debug.Log ("Hej");

		if( other.CompareTag("Player") )
 		{
			GWorld.LoadScene(LevelToLoad);

		}
	}

	/*void OnCollisionEnter(Collision other)
	{
		Debug.Log ("Hej");

		if( other.collider.CompareTag("Player") )
 		{
			GWorld.LoadScene(LevelToLoad);

		}
	}*/

	virtual public MouseCursorInput OnMouseOverCursor()
	{

		return MouseCursorInput.AreaChange;

	}
	
	virtual public void OnMouseLeave()
	{

	}
}
