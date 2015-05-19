using UnityEngine;
using System.Collections;

public class TestScene2 : MonoBehaviour {

	public GameObject SpawnFromTest1;
	
	
	void Awake()
	{
		Debug.Log ("Test2 : " + GWorld.currentZone);

		//check the last zone player was in
		switch (GWorld.currentZone) 
		{
		case ZoneBase.Testscene1 :
			GWorld.SpawnPlayer(  SpawnFromTest1.transform  );
			break;
			
		case ZoneBase.Testscene2  :
			//Leave the player at the same location if the same zone as we already are in
			break;
			
		default :
			GWorld.SpawnPlayer(  SpawnFromTest1.transform  );
			break;
			
		}
		
		GWorld.currentZone = ZoneBase.Testscene2;

		Debug.Log ("Test2 Post: " + GWorld.currentZone);
		
	}
	
	
}