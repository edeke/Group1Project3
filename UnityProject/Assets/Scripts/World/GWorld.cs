using UnityEngine;
using System.Collections;

public enum TimeOfDay
{
	Dawn,
	Day,
	Dusk,
	Night
}

public enum ZoneBase
{
	None,
	Testscene1,
	Testscene2,
	Testscene3
}

public struct EventData
{
	public string description;
	public bool hasEventOccured;
}


public class GWorld : MonoBehaviour
{
	private float currentTime;
	private const float SECONDS_PER_MIN = 60.0f;
	private const int MINUTE = 1;
	private const int HOUR = 60 * MINUTE;
	private const int DAY = 24 * HOUR;
	
	private const int DAWN_START = HOUR * 4;
	private const int DAY_START = HOUR * 8;
	private const int DUSK_START = HOUR * 20;
	private const int NIGHT_START = HOUR * 22;

	static int currentTimeInMin = HOUR * 10 + 22;
	public static TimeOfDay timeOfTheDay = 0;


	//private const float DEGREES_PER_SECOND = 360 / DAY;

	static GWorld currentWorld;

	static GameObject myInv;
	public static GameObject mainUI;
	static GameObject myPlayer;

	static Hashtable eventTable = new Hashtable();
	static Hashtable sceneLoadTable = new Hashtable();

	static public ZoneBase currentZone;
	static public bool isInvEnabled = false;


	void Start()
	{
		BuildSceneLoadTable ();
	}


	void Awake()
	{

		if (!currentWorld) 
		{
			currentWorld = this;
			DontDestroyOnLoad (gameObject);
		}
		else
		{
			//Debug.Log ("GW Destroyed");
			Destroy(gameObject);
		}

		if (!mainUI) 
		{
			string path = "Prefabs/UI/MainUI";
			mainUI = (GameObject) Instantiate(Resources.Load(path));
			DontDestroyOnLoad(mainUI);

			if(!mainUI)
			{
				Debug.Log ("GWorld Failed to Load MainUI - " + path);
			}
			else
			{
				//Debug.Log ("MainUI Loaded");
			}

		}

		CalcTimeOfDay ();
	}

	static public void EnableInventory()
	{
		if (!myInv) 
		{
			string path = "Prefabs/Inventory/InventoryController";
			myInv = (GameObject) Instantiate(Resources.Load(path));
			
			if(!myInv)
			{
				Debug.Log ("GWorld Failed to Load Inventory - " + path);
			}
			else
			{
				isInvEnabled = true;

				InventoryOpenButton button = mainUI.GetComponentInChildren<InventoryOpenButton>();
				button.ShowButton();

			}
			
		}
	}

	void Update () 
	{
		currentTime += Time.deltaTime;

		if ( currentTime >= SECONDS_PER_MIN ) 
		{
			currentTimeInMin++;
			currentTime -= SECONDS_PER_MIN;
			CalcTimeOfDay();

			if( currentTimeInMin >= DAY )
			{
				currentTimeInMin -= DAY;
			}
		}

	}

	static void CalcTimeOfDay()
	{

		if (currentTimeInMin >= NIGHT_START) 
		{
			timeOfTheDay = TimeOfDay.Night;
		} 
		else if (currentTimeInMin >= DUSK_START) 
		{
			timeOfTheDay = TimeOfDay.Dusk;
		} 
		else if (currentTimeInMin >= DAY_START) 
		{
			timeOfTheDay = TimeOfDay.Day;
		}
		else if (currentTimeInMin >= DAWN_START) 
		{
			timeOfTheDay = TimeOfDay.Dawn;
		}
		else 
		{
			timeOfTheDay = TimeOfDay.Night;
		}

	}

	static public void FastForwardTime(int timeInHours)
	{
		currentTimeInMin += timeInHours * 60;

		if( currentTimeInMin >= DAY )
		{
			currentTimeInMin -= DAY;
		}

		CalcTimeOfDay ();
		LoadScene (currentZone);
	}

	static public int GetTimeInMin()
	{
		return currentTimeInMin;
	}

	static public string GetTimeInMinAsString()
	{
		int hours = currentTimeInMin / 60;
		int min = currentTimeInMin % 60;

		return hours.ToString() + " h " + min.ToString()+ " min";

	}

	static public TimeOfDay GetTimeOfTheDay()
	{
		return timeOfTheDay;
	}

	public static void SpawnPlayer(Transform location)
	{
		//Debug.Log ("Spawning Player");

		if (!myPlayer) 
		{
			string path = "Prefabs/Player/MainPlayer";
			myPlayer = (GameObject)Instantiate (Resources.Load (path));
			DontDestroyOnLoad (myPlayer);

			//check it exist after creating
			if(!myPlayer)
			{
				Debug.Log ("GWorld Failed to Load Player - " + path);
			}
		}


		myPlayer.transform.position = location.position;

	}

	public static bool TryRegisterEvent(string eventHash, string description)
	{

		if (eventTable [eventHash] == null) {
			//Debug.Log ("No event found  - Creating Event for Hash : " + eventHash);

			EventData newData;

			newData.description = description;
			newData.hasEventOccured = false;

			eventTable.Add (eventHash, newData);

			return true;
		} 
		else 
		{
			//Debug.Log ("Event already found for hash : " + eventHash);

			return false;
		}
	}

	/*public static void SetCurrentZone( ZoneBase newZone )
	{
		currentZone = newZone;
	}*/

	public static bool MarkEventDone( string eventHash )
	{

		
		if (eventTable [eventHash] == null) 
		{
			//Debug.Log ("No event found  - for Hash : " + eventHash);
						
			return false;
		} 
		else 
		{
			EventData newData = (EventData)eventTable[eventHash];
			newData.hasEventOccured = true;

			eventTable.Remove(eventHash);
			eventTable.Add(eventHash, newData);

			//Debug.Log ("Event found settings event to occured : " + eventHash);
			
			return true;
		}
	}

	public static bool FindEvent( string eventHash, ref EventData outData)
	{
		
		
		if (eventTable [eventHash] == null) 
		{
			//Debug.Log ("No event found  - for Hash : " + eventHash);
			
			return false;
		} 
		else 
		{
			outData = (EventData)eventTable[eventHash];
			
			//Debug.Log ("Event found : " + eventHash);
			
			return true;
		}
	}

	static void BuildSceneLoadTable()
	{
		ZoneBase scene = ZoneBase.Testscene1;
		string[] sceneArray = {
			"TestSceneNight",	//Dawn
			"TestSceneDay",		//Day
			"TestSceneDay",		//Dusk
			"TestSceneNight"	//Night
		};
		sceneLoadTable.Add (scene, sceneArray);

		ZoneBase scene2 = ZoneBase.Testscene2;
		string[] sceneArray2 = {
			"TestScene2Night",	//Dawn
			"TestScene2Day",	//Day
			"TestScene2Day",	//Dusk
			"TestScene2Night"	//Night
		};

		sceneLoadTable.Add (scene2, sceneArray2);
	
	}

	public static void LoadScene( ZoneBase scene )
	{

		string[] sceneArray = (string[]) sceneLoadTable[scene];
		string sceneToLoad = sceneArray [(int) timeOfTheDay];

		Application.LoadLevel (sceneToLoad);

	}

}


