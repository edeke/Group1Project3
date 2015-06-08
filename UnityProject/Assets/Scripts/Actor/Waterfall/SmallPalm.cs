using UnityEngine;
using System.Collections;

public class SmallPalm : CommentActorBase {

	override public void OnInspect()
	{		
		DisplayComment ("That's one small palmtree.");
	}

	override public void OnAction()
	{
		DisplayComment ("It's to heavy to carry.");
	}

}
