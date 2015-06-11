using UnityEngine;
using System.Collections;

public class BeachSceneDay : MonoBehaviour {
	
	public GameObject spawnFromWaterfall;
	public GameObject defaultSpawn;


	void Awake()
	{

		switch (GWorld.currentZone) 
		{
			case ZoneBase.Beach :
				//GWorld.SpawnPlayer(  spawnFromTest2.transform  );
			break;

			case ZoneBase.WaterFall :
				GWorld.SpawnPlayer(  spawnFromWaterfall.transform  );
			break;

			default :
				GWorld.SpawnPlayer(  defaultSpawn.transform  );
			break;

		}

		GWorld.currentZone = ZoneBase.Beach;

	}


}
