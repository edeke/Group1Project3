using UnityEngine;
using System.Collections;

public class TestScene1 : MonoBehaviour {


	public GameObject spawn1;
	public GameObject spawn2;


	void Awake()
	{

		switch (GWorld.lastZoneExit) 
		{
			case ZoneExit.Testscene2Left :
				GWorld.SpawnPlayer(  spawn2.transform  );
			break;

			case ZoneExit.Testscene2Right :
				GWorld.SpawnPlayer(  spawn1.transform  );
			break;

			case ZoneExit.None :
				//Used on sleep should remain empty to let the player keep his current location
			break;

			default :
				GWorld.SpawnPlayer(  spawn1.transform  );
			break;

		}

	}


}
