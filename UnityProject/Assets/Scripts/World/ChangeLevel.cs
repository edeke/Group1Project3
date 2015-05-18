using UnityEngine;
using System.Collections;

public class ChangeLevel : MonoBehaviour {

	public ZoneBase LevelToLoad;
	public ZoneExit zoneExit;


	void OnTriggerEnter (Collider other)
	{
		if( other.CompareTag("Player") )
 		{
			GWorld.SetLastUsedExit(zoneExit);
			GWorld.LoadScene(LevelToLoad);

		}
	}
}
