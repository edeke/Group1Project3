using UnityEngine;
using System.Collections;

public class TestScene2 : MonoBehaviour {


	public GameObject spawn1;
	public GameObject spawn2;


	void Awake()
	{

		switch (GWorld.lastZoneExit) 
		{
			case ZoneExit.TestsceneLeft :
				Debug.Log ("Scene Left");
				GWorld.SpawnPlayer(  spawn2.transform  );
			break;

			case ZoneExit.TestsceneRight :
				Debug.Log ("Scene Right");
				GWorld.SpawnPlayer(  spawn1.transform  );
			break;

			case ZoneExit.None :
				Debug.Log ("Scene None");
				//Used on sleep should remain empty to let the player keep his current location
			break;

			default :
				
				GWorld.SpawnPlayer(  spawn1.transform  );
			break;

		}

	}


}
