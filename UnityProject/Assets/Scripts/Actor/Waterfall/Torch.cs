using UnityEngine;
using System.Collections;

public class Torch : CommentActorBase {

	override public void OnInspect()
	{	
		if(GWorld.GetTimeOfTheDay() == TimeOfDay.Night || GWorld.GetTimeOfTheDay() == TimeOfDay.Dawn){
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
