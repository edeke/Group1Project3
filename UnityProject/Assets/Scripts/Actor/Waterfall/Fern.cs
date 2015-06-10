using UnityEngine;
using System.Collections;

public class Fern : CommentActorBase {

	override public void OnInspect()
	{		
		DisplayComment ("That's a nice looking fern.");
	}

	override public void OnAction()
	{
		DisplayComment ("I don't like ferns..");
	}

}
