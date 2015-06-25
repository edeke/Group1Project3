using UnityEngine;
using System.Collections;

public class ShopDoor : CommentActorBase 
{
	public GameObject skyler;
	public GameObject oldCoot;

	void Start(){

		skyler = GameObject.Find ("pre_skyler");
		oldCoot = GameObject.Find ("pre_old_coot");

	}

	override public void OnInspect()
	{		
		DisplayComment ("Looks like a shop.");
	}

	override public void OnAction()
	{
		if (skyler.GetComponent<Skyler> ().gottenFireflies == true && Dialoguer.GetGlobalBoolean (12) == true) {
			GWorld.LoadScene (ZoneBase.AntiqueButique);
		} else {
			PlayerMovement movComp = GWorld.myPlayer.GetComponent<PlayerMovement> ();
			movComp.DisplaySpeechBubble ("It's closed for maintenance. I'll try again later.");
		}
	}

}
