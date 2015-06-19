using UnityEngine;
using System.Collections;

public class CaveLadder : CommentActorBase {

	override public void OnInspect()
	{		
		DisplayComment ("It's a ladder leading up.");
	}

	override public void OnAction()
	{
		GWorld.LoadScene (ZoneBase.AntiqueButique);
	}

}
