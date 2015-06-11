using UnityEngine;
using System.Collections;

public class CaveDay : MonoBehaviour {
	
	public GameObject spawnFromCove;
	public GameObject defaultSpawn;


	void Awake()
	{

		switch (GWorld.currentZone) 
		{
			case ZoneBase.Cove :
				GWorld.SpawnPlayer(  spawnFromCove.transform  );
			break;

			case ZoneBase.Cave :
				//GWorld.SpawnPlayer(  spawnFromCove.transform  );
			break;

			default :
				GWorld.SpawnPlayer(  defaultSpawn.transform  );
			break;

		}

		GWorld.currentZone = ZoneBase.Cave;

	}


}
