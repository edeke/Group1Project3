using UnityEngine;
using System.Collections;

public class CaveCrack : InspectBase {

	override public void OnInspect()
	{	
		if (GWorld.GetTimeOfTheDay () == TimeOfDay.Night || GWorld.GetTimeOfTheDay () == TimeOfDay.Dawn)
		{
			DisplayComment ("It's a small opening in the cave, with some moonlight shining through. ");
		} 
		else 
		{
			DisplayComment ("It's a small opening in the cave.");
		}
	}

	/*override public void OnAction()
	{
		//LoadLevel
	}*/

}
