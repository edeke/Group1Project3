using UnityEngine;
using System.Collections;

public class Torch : CommentActorBaseTest {

	override public void OnInspect()
	{	
		if(GWorld.GetTimeOfTheDay() == TimeOfDay.Night ){
			DisplayComment ("I like fire!");
		} else {
			DisplayComment ("I wonder if it lights up during the night.");
		}
	}

	override public void OnAction()
	{
		DisplayComment ("It's stuck to the ground.");
	}

}
