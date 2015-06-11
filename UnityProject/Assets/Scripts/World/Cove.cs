using UnityEngine;
using System.Collections;

public class Cove : MonoBehaviour {
	
	public GameObject spawnFromWaterfall;
	public GameObject spawnFromCave;

	void Awake()
	{

		switch (GWorld.currentZone) 
		{
			case ZoneBase.Cove :
				//GWorld.SpawnPlayer(  spawnFromTest2.transform  );
			break;

			case ZoneBase.WaterFall :
				GWorld.SpawnPlayer(  spawnFromWaterfall.transform  );
			break;

			case ZoneBase.Cave :
				GWorld.SpawnPlayer(  spawnFromCave.transform  );
			break;

			default :
				GWorld.SpawnPlayer(  spawnFromCave.transform  );
			break;

		}

		GWorld.currentZone = ZoneBase.Cove;

	}


}
