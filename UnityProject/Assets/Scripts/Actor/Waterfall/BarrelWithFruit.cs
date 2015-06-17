using UnityEngine;
using System.Collections;

public class BarrelWithFruit : CommentActorBase {

	override public void OnInspect()
	{		
		DisplayComment ("Those barries look delicious!");
	}

	override public void OnAction()
	{
		DisplayComment ("I'm not hungry.");
	}

}
