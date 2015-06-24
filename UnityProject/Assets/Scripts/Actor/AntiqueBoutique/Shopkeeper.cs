using UnityEngine;
using System.Collections;

public class Shopkeeper : NPCBase 
{

	bool atStart = true;

	float currentTime = 0.0f;
	float timeBeforeWalkBack = 10.0f;

	
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
			}
		}

	}
	
	override public void OnInspect()
	{	

		DisplaySpeechBubble ( "Hey, please don't touch anything" );
		
	}


	public void OnChest()
	{

		DisplaySpeechBubble ( "Hey! Don't touch that" );
		agent.SetDestination ( walkToLocation[0] );

		atStart = false;

		currentTime = timeBeforeWalkBack;

	}

}
