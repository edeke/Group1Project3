using UnityEngine;
using System.Collections;

public class WaterFallNight : MonoBehaviour {
	
	public GameObject spawnFromCove;
	public GameObject defaultSpawn;


	void Awake()
	{

		switch (GWorld.currentZone) 
		{
			case ZoneBase.WaterFall :
				//GWorld.SpawnPlayer(  spawnFromTest2.transform  );
			break;

			default :
				GWorld.SpawnPlayer(  defaultSpawn.transform  );
			break;

		}

		GWorld.currentZone = ZoneBase.WaterFall;

	}


}
