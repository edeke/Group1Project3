using UnityEngine;
using System.Collections;

public class BarrelWithFruit : CommentActorBaseTest {

	override public void OnInspect()
	{		
		DisplayComment ("Those barries look delicious!");
	}

	override public void OnAction()
	{
		DisplayComment ("I'm not hungry.");
	}

}
