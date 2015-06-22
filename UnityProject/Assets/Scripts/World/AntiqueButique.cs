using UnityEngine;
using System.Collections;

public class AntiqueButique : MonoBehaviour {
	
	public GameObject spawnFromCove;
	public GameObject spawnFromCave;

	void Awake()
	{

		switch (GWorld.currentZone) 
		{
			case ZoneBase.AntiqueButique :
				//GWorld.SpawnPlayer(  spawnFromTest2.transform  );
			break;

			case ZoneBase.Cove :
			GWorld.SpawnPlayer(  spawnFromCove.transform  );
			break;

			case ZoneBase.Cave :
				GWorld.SpawnPlayer(  spawnFromCave.transform  );
			break;

			default :
				GWorld.SpawnPlayer(  spawnFromCove.transform  );
			break;

		}

		GWorld.currentZone = ZoneBase.AntiqueButique;

	}


}
