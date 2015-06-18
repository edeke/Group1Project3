﻿using UnityEngine;
using System.Collections;

public class Ladder : CommentActorBase 
{

	override public void OnInspect()
	{		
		DisplayComment ("That's an odd placement for a ladder.");
	}

	override public void OnAction()
	{
		DisplayComment ("I don't want to climb this.");
	}

}
