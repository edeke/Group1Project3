using UnityEngine;
using System.Collections;

public class UnlitFireplace : CommentActorBaseTest {

	override public void OnInspect()
	{		
		DisplayComment ("It would be stupid to light this during the day.");
	}

	override public void OnAction()
	{
		DisplayComment ("It's stone cold!");
	}

}
