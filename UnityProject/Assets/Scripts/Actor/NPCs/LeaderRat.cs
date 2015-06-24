using UnityEngine;
using System.Collections;

public class LeaderRat : NPCBase 
{

	string EventID = "LeaderSpeak";

	// Use this for initialization
	void Start () 
	{
		if (!GWorld.TryRegisterEvent (EventID, "Hello"))
		{
			EventData tempData = new EventData();
			GWorld.FindEvent(EventID,ref tempData);
			
			if(tempData.hasEventOccured)
			{
				Destroy(gameObject);
			}
			
		}

	}

	virtual public void OnTalkTo()
	{
		DisplayComment ("I don't think he wants to talk to me.");
	}

	override public void OnInspect()
	{	
		DisplayComment ("Looks like he is the leader");
		
	}

	public void StartSpeech()
	{
		Invoke ("Speech1", 0.1f);
		Invoke ("Speech2", 5.1f);
		Invoke ("Speech3", 10.1f);
		Invoke ("Speech4", 15.1f);
		Invoke ("Speech5", 20.1f);
		Invoke ("Speech6", 25.1f);
		Invoke ("ThugsActivate", 27.1f);
		Invoke ("Walkaway", 30.0f);

	}

	void Speech1()
	{
		DisplaySpeechBubble ("<b>Greetings, free folk of the Southern Islands! We have entered this land to offer you our help.</b>");
		Hurray ();
	}

	void Speech2()
	{
		DisplaySpeechBubble ("<b>We come from a foreign land which is far more advanced than your own.</b>");
		Hurray ();
	}

	void Speech3()
	{
		DisplaySpeechBubble ("<b>We can help you rebuild this society to become more civilized and well functioned.</b>");
		Hurray ();
	}

	void Speech4()
	{
		DisplaySpeechBubble ("<b>We are offering this in exchange for your complete co-operation in our dig up in the mountains.</b>");
		Hurray ();
	}

	void Speech5()
	{
		DisplaySpeechBubble ("<b>We have set up camp there and do not wish to be disturbed.</b>");
		Hurray ();
	}

	void Speech6()
	{
		DisplaySpeechBubble ("<b>We will see to it that this will be a prosperous land with better housing conditions and a blooming economy.</b>");
		Hurray ();

	}

	void Walkaway()
	{
		agent.SetDestination (walkToLocation [0]);
	}

	void ThugsActivate()
	{
		ThugRat[] allRats = FindObjectsOfType<ThugRat> ();

		foreach (ThugRat rat in allRats) 
		{

			rat.ActivateThug( Random.Range( 0.5f, 3.0f) );
		}
	}

	void Hurray()
	{
		ThugRat[] allRats = FindObjectsOfType<ThugRat> ();
		
		foreach (ThugRat rat in allRats) 
		{
			rat.Hurray( Random.Range( 0, 5) );
		}
	}


}
