using UnityEngine;
using System.Collections;

public class CaveForbidden : CommentActorBase {

	override public void OnInspect()
	{		
		DisplayComment ("The area looks to be closed");
	}

	override public void OnAction()
	{
		DisplayComment ("No, It's to dangerous to go any further");
	}

}
