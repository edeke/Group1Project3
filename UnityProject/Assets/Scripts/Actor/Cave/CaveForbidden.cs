using UnityEngine;
using System.Collections;

public class CaveForbidden : CommentActorBase {

	override public void OnInspect()
	{		
		DisplayComment ("The area looks closed.");
	}

	override public void OnAction()
	{
		DisplayComment ("No, it's to dangerous to go any further.");
	}

}
