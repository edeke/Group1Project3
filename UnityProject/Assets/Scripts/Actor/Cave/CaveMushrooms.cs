using UnityEngine;
using System.Collections;

public class CaveMushrooms : CommentActorBase {

	override public void OnInspect()
	{		
		DisplayComment ("Some strange looking mushrooms.");
	}

	override public void OnAction()
	{
		DisplayComment ("I should probably not touch them.");
	}

}
