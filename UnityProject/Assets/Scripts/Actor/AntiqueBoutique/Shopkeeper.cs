using UnityEngine;
using System.Collections;

public class Shopkeeper : NPCBase 
{

	public bool atStart = true;

	float currentTime = 0.0f;
	float timeBeforeWalkBack = 10.0f;

	bool rugGone = false;

	public AudioClip huhClip;

	
	// Use this for initialization
	void Start () {

	
	}


	void Update()
	{
		NPCBase baseScript = (NPCBase)this;
		baseScript.Update ();


		if (!atStart) 
		{
			currentTime -= Time.deltaTime;

			if(currentTime <= 0.0f)
			{
				agent.SetDestination ( walkToLocation[2] );
				atStart = true;
			}

			float distance = (transform.position - walkToLocation [0]).magnitude;
			if (distance < 0.5f && !atStart)
			{
				RotateTowards (walkToLocation [1]);
			}
		}
		else
		{

			float distance = (transform.position - walkToLocation[2]).magnitude;
			if(distance < 0.5f && atStart)
			{
				RotateTowards( walkToLocation[3] );

				string eventID = "ShopRug";
				EventData newData = new EventData();
				
				if (GWorld.FindEvent (eventID, ref newData)) 
				{
					if(newData.hasEventOccured && rugGone == false)
					{
						Invoke ("Speech2", 1.0f);
						rugGone = true;
					}
				}
			}
		}

	}
	
	override public void OnInspect()
	{	

		DisplaySpeechBubble ( "Please don't touch anything!" );
		
	}


	public void OnChest()
	{

		DisplaySpeechBubble ( "Hey! Don't touch that!" );
		agent.SetDestination ( walkToLocation[0] );

		atStart = false;

		currentTime = timeBeforeWalkBack;

		Invoke ("Speech1", 5.0f);

	}

	void Speech1()
	{
		DisplaySpeechBubble ( "Mumble... Filty Paws... Mumble..." );
	}

	void Speech2()
	{
		AudioSource.PlayClipAtPoint (huhClip, transform.position);
		DisplaySpeechBubble("Huh?! Where did my carpet go...?"); 
	}
}
