using UnityEngine;
using System.Collections;

public class WaterFallDay : MonoBehaviour 
{

	string EventID = "Chapter1Seen";
	
	public GameObject spawnFromCove;
	public GameObject spawnFromBeach;

	void Awake()
	{

		GWorld.TryRegisterEvent (EventID, "Hello");

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

	void Start()
	{
		EventData tempData = new EventData();
		GWorld.FindEvent(EventID,ref tempData);
			
		if(!tempData.hasEventOccured)
		{
			Invoke ("DisplayChapter1", 1.0f);
			GWorld.MarkEventDone(EventID);
		}

	}

	void DisplayChapter1()
	{

		string path = "Prefabs/UI/Chapters/Chapter1UI";
		GameObject comp = (GameObject) Instantiate(Resources.Load(path));
		
		if(!comp)
		{
			Debug.Log ("Failed to Load Letter1 - " + path);
		}
	}
	
}
