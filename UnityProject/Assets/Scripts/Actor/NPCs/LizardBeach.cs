using UnityEngine;
using System.Collections;

public class LizardBeach : NPCBase {

	float currentTime;
	float timeBetweenZZ = 6.0f;



	void Update()
	{
		currentTime -= Time.deltaTime;

		if (currentTime <= 0.0f) 
		{
			DisplaySpeechBubble ( "Zzzz..." );

			currentTime = timeBetweenZZ;
		}

	}

	override public void OnInspect()
	{	
		DisplayComment ("Looks like he is sleeping");
		//DisplaySpeechBubble ( "Zzzz..." );
		
	}
	
}