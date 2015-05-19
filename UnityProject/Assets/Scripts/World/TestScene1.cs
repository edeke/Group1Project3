using UnityEngine;
using System.Collections;

public class TestScene1 : MonoBehaviour {
	
	public GameObject spawnFromTest2;
	public GameObject defaultSpawn;


	void Awake()
	{
		Debug.Log ("Test1 : " + GWorld.currentZone);

		switch (GWorld.currentZone) 
		{
			case ZoneBase.Testscene2 :
				GWorld.SpawnPlayer(  spawnFromTest2.transform  );
			break;

			case ZoneBase.Testscene1  :
				//Leave the player at the same location if the same zone as we already are in
			break;

			default :
				GWorld.SpawnPlayer(  defaultSpawn.transform  );
			break;

		}

		GWorld.currentZone = ZoneBase.Testscene1;

		Debug.Log ("Test1 Post: " + GWorld.currentZone);

	}


}
