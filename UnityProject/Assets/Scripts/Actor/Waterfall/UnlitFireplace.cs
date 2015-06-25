using UnityEngine;
using System.Collections;

public class UnlitFireplace : CommentActorBase
{

	override public void OnInspect()
	{		
		DisplayComment ("It's stone cold!");
	}

	override public void OnAction()
	{
		DisplayComment ("It would be stupid to light this during the day.");
	}

	override public bool UseItemOnObject(EItem itemType)
	{
		switch ( itemType )
		{
			
			case EItem.UnlitTorch :
				DisplayComment("There is something missing here. Fire..");
				return false;

		default :
			DisplayComment("That wont work.");
			return false;
		 
		}
		
		return false;
	}

	override public EAnimationState AnimationOnItem(EItem itemType)
	{
		switch (itemType) 
		{
		case EItem.UnlitTorch :
			return EAnimationState.Use;
			
		default :
			return EAnimationState.Error;
		}
	}

}
