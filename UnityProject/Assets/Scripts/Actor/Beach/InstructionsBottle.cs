using UnityEngine;
using System.Collections;

public class InstructionsBottle : CommentActorBase {

	override public void OnInspect()
	{		
		DisplayComment ("A letter. I should read it!");
	}

	override public void OnAction()
	{
//		UILetter[] letter = FindObjectsOfType<UILetter> ();
//		
//		if( letter.Length == 0 )
//		{
//			
			string path = "Prefabs/UI/Letter/Letter4";
			GameObject letter4 = (GameObject) Instantiate(Resources.Load(path));
			
//			if(!letter1)
//			{
//				Debug.Log ("Failed to Load Letter4 - " + path);
//			}
//			
//		}
	}

	/*override public void OnTalkTo()
	{

	}*/

}
