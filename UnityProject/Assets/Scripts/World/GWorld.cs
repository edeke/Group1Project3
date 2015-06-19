using UnityEngine;
using System.Collections;

public enum TimeOfDay
{
	//Dawn,
	Day,
	//Dusk,
	Night
}

public enum ZoneBase
{
	None,
	Beach,
	WaterFall,
	Cave,
	Cove,
	AntiqueButique,
	Testscene1,
	Testscene2,
	Testscene3
}

public struct EventData
{
	public string description;
	public bool hasEventOccured;
	public Vector3 position;
	public Quaternion rotation;
}


public class GWorld : MonoBehaviour
{
	private float currentTime;
	private const float SECONDS_PER_MIN = 60.0f;
	private const int MINUTE = 1;
	private const int HOUR = 60 * MINUTE;
	private const int DAY = 24 * HOUR;
	
	//private const int DAWN_START = HOUR * 21;
	private const int DAY_START = HOUR * 6;
	//private const int DUSK_START = HOUR * 6;
	private const int NIGHT_START = HOUR * 21;

	static int currentTimeInMin = HOUR * 10 + 1;
	public static TimeOfDay timeOfTheDay = 0;

	static public bool dialogOpen = false;

	//private const float DEGREES_PER_SECOND = 360 / DAY;

	static GWorld currentWorld;

	static GameObject myInv;
	public static GameObject mainDialog;
	public static GameObject mainUI;
	public static GameObject myPlayer;
	public static GameObject cameraFollow;
	public static GameObject outlineCanvas;
	public static GameObject pauseUI;

	static Hashtable eventTable = new Hashtable();
	static Hashtable sceneLoadTable = new Hashtable();

	static public ZoneBase currentZone;
	static public bool isInvEnabled = false;

	static bool sceneAlreadyLoaded = false;

	static string sceneToLoad;

	static public bool loadLevel = false;
	static float loadLevelCountdownCurrentTime;
	static float loadLevelCountdownTimerMax = 1.0f;


	void Start()
	{

	}

	void Awake()
	{
		BuildSceneLoadTable ();

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

		if (!mainDialog) 
		{
			string path = "Prefabs/UI/Dialog/NextGenRpgGui";
			mainDialog = (GameObject) Instantiate(Resources.Load(path));
			DontDestroyOnLoad(mainDialog);
			
			if(!mainUI)
			{
				Debug.Log ("mainDialog Failed to Load - " + path);
			}
			else
			{
				//Debug.Log ("mainDialog Loaded");
			}

		}

		if (!pauseUI) 
		{
			string path = "Prefabs/UI/PauseUI";
			pauseUI = (GameObject) Instantiate(Resources.Load(path));
			DontDestroyOnLoad(pauseUI);
			
			if(!pauseUI)
			{
				Debug.Log ("mainDialog Failed to Load - " + path);
			}
			else
			{
				//Debug.Log ("mainDialog Loaded");
			}
			
		}

		CalcTimeOfDay ();

		loadLevelCountdownCurrentTime = loadLevelCountdownTimerMax;

		//fade in when starting game
		mainUI.GetComponent<MainUI> ().GoBlack ( false );

	}

	static public void FadeToBlack( bool enable )
	{
		mainUI.GetComponent<MainUI> ().GoBlack ( enable );
	}

	static public bool LoadingLevel( )
	{
		return loadLevel;
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

				myPlayer.GetComponent<PlayerMovement>().EnableBackpack(true);

			}
			
		}
	}

	void Update () 
	{
		/*currentTime += Time.deltaTime;

		if ( currentTime >= SECONDS_PER_MIN ) 
		{
			currentTimeInMin++;
			currentTime -= SECONDS_PER_MIN;
			CalcTimeOfDay();

			if( currentTimeInMin >= DAY )
			{
				currentTimeInMin -= DAY;
			}
		}*/

		if (loadLevel) 
		{
			loadLevelCountdownCurrentTime -= Time.deltaTime;

			if( loadLevelCountdownCurrentTime <= 0.0f )
			{
				Application.LoadLevel(sceneToLoad);
				loadLevelCountdownCurrentTime = loadLevelCountdownTimerMax;
				loadLevel = false;
			}
		}
	}

	static void CalcTimeOfDay()
	{

		if (currentTimeInMin >= NIGHT_START) 
		{
			timeOfTheDay = TimeOfDay.Night;
		} 
		/*else if (currentTimeInMin >= DUSK_START) 
		{
			timeOfTheDay = TimeOfDay.Dusk;
		} */
		else if (currentTimeInMin >= DAY_START) 
		{
			timeOfTheDay = TimeOfDay.Day;
		}
		/*else if (currentTimeInMin >= DAWN_START) 
		{
			timeOfTheDay = TimeOfDay.Dawn;
		}*/
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

		if (!myPlayer) {
			string path = "Prefabs/Player/MainPlayer";
			myPlayer = (GameObject)Instantiate (Resources.Load (path), location.position, location.rotation);
			DontDestroyOnLoad (myPlayer);

			//check it exist after creating
			if (!myPlayer) 
			{
				Debug.Log ("GWorld Failed to Load Player - " + path);
			}
		} 
		else 
		{

			PlayerMovement movComp = myPlayer.GetComponent<PlayerMovement>();
			movComp.PlayerSetLocationOnSpawn(location.position);

			//myPlayer.transform.position = location.position;
		}
			//Camera player follow

		if (!cameraFollow) {
			string path = "Prefabs/Player/SmoothFollow";
			cameraFollow = (GameObject)Instantiate (Resources.Load (path), location.position, location.rotation);
			DontDestroyOnLoad (cameraFollow);
			
			//check it exist after creating
			if (!cameraFollow) 
			{
				Debug.Log ("GWorld Failed to Load Camera Follow - " + path);
			}
		} 
		else 
		{
			
			cameraFollow.transform.position = location.position;
		}

	}

	public static bool TryRegisterEvent(string eventHash, string description)
	{

		if (eventTable [eventHash] == null) {
			//Debug.Log ("No event found  - Creating Event for Hash : " + eventHash);

			EventData newData = new EventData();

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

	public static bool StorePositionForEvent( string eventHash , Vector3 newPosition, Quaternion newRotation )
	{
		
		
		if (eventTable [eventHash] == null) 
		{
			//Debug.Log ("No event found  - for Hash : " + eventHash);
			
			return false;
		} 
		else 
		{
			EventData newData = (EventData)eventTable[eventHash];
			newData.position = newPosition;
			newData.rotation = newRotation;

			eventTable.Remove(eventHash);
			eventTable.Add(eventHash, newData);
			
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
		if (sceneAlreadyLoaded)
		{
			return;
		}


		ZoneBase scene = ZoneBase.Testscene1;
		string[] sceneArray = {
			//"TestSceneNight",	//Dawn
			"TestSceneDay",		//Day
			//"TestSceneDay",		//Dusk
			"TestSceneNight"	//Night
		};
		sceneLoadTable.Add (scene, sceneArray);

		ZoneBase scene2 = ZoneBase.Testscene2;
		string[] sceneArray2 = {
			//"TestScene2Night",	//Dawn
			"TestScene2Day",	//Day
			//"TestScene2Day",	//Dusk
			"TestScene2Night"	//Night
		};
		sceneLoadTable.Add (scene2, sceneArray2);

		ZoneBase scene3 = ZoneBase.Beach;
		string[] sceneArray3 = {
			//"BeachSceneNight",	//Dawn
			"BeachSceneDay",	//Day
			//"BeachSceneDay",	//Dusk
			"BeachSceneNight"	//Night
		};
		sceneLoadTable.Add (scene3, sceneArray3);

		ZoneBase scene4 = ZoneBase.WaterFall;
		string[] sceneArray4 = {
			//"WaterfallAreaNight",	//Dawn
			"WaterfallAreaDay",	//Day
			//"WaterfallAreaDay",	//Dusk
			"WaterfallAreaNight"	//Night
		};
		sceneLoadTable.Add (scene4, sceneArray4);

		ZoneBase scene5 = ZoneBase.Cave;
		string[] sceneArray5 = {
			//"CaveNight",	//Dawn
			"CaveDay",	//Day
			//"CaveDay",	//Dusk
			"CaveNight"	//Night
		};
		sceneLoadTable.Add (scene5, sceneArray5);

		ZoneBase scene6 = ZoneBase.Cove;
		string[] sceneArray6 = {
			//"CoveAreaNight",	//Dawn
			"CoveAreaDay",	//Day
			//"CoveAreaDay",	//Dusk
			"CoveAreaNight"	//Night
		};
		sceneLoadTable.Add (scene6, sceneArray6);

		ZoneBase scene7 = ZoneBase.AntiqueButique;
		string[] sceneArray7 = {
			//"CoveAreaNight",	//Dawn
			"AntiqueBoutiqueDay",	//Day
			//"CoveAreaDay",	//Dusk
			"AntiqueBoutiqueNight"	//Night
		};
		sceneLoadTable.Add (scene7, sceneArray7);

		sceneAlreadyLoaded = true;
	
	}

	public static void LoadScene( ZoneBase scene )
	{
		mainUI.GetComponent<MainUI> ().GoBlack ( true );

		string[] sceneArray = (string[]) sceneLoadTable[scene];
		sceneToLoad = sceneArray [(int) timeOfTheDay];

		//Invoke("InternalLoadScene", 1);
		loadLevel = true;
		//Application.LoadLevel (sceneToLoad)

	}

}


