using UnityEngine;
using System.Collections;

public class ChangeLevel : MonoBehaviour {

	public ZoneBase LevelToLoad;


	void OnTriggerEnter (Collider other)
	{
		if( other.CompareTag("Player") )
 		{
			GWorld.LoadScene(LevelToLoad);

		}
	}
}
