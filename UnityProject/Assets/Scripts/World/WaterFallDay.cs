using UnityEngine;
using System.Collections;

public class WaterFallDay : MonoBehaviour {
	
	public GameObject spawnFromCove;
	public GameObject spawnFromBeach;

	void Awake()
	{

		switch (GWorld.currentZone) 
		{
			case ZoneBase.WaterFall :
				//GWorld.SpawnPlayer(  spawnFromTest2.transform  );
			break;

			case ZoneBase.Beach :
				GWorld.SpawnPlayer(  spawnFromBeach.transform  );
			break;

			case ZoneBase.Cove :
				GWorld.SpawnPlayer(  spawnFromCove.transform  );
			break;

			default :
				GWorld.SpawnPlayer(  spawnFromBeach.transform  );
			break;

		}

		GWorld.currentZone = ZoneBase.WaterFall;

	}


}
