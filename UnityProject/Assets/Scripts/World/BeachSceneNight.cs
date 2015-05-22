using UnityEngine;
using System.Collections;

public class BeachSceneNight : MonoBehaviour {
	
	public GameObject spawnFromCove;
	public GameObject defaultSpawn;


	void Awake()
	{

		switch (GWorld.currentZone) 
		{
			case ZoneBase.Beach :
				//GWorld.SpawnPlayer(  spawnFromTest2.transform  );
			break;

			default :
				GWorld.SpawnPlayer(  defaultSpawn.transform  );
			break;

		}

		GWorld.currentZone = ZoneBase.Beach;

	}


}
