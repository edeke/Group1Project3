﻿using UnityEngine;
using System.Collections;

public class LittleHole : CommentActorBase {

	override public void OnInspect()
	{		
		DisplayComment ("It's a small hole.");
	}

	override public void OnAction()
	{
		DisplayComment ("There is nothing in there.");
	}

}