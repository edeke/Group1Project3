using UnityEngine;
using System.Collections;

public class ClosedShopDoor : CommentActorBase {

	public GameObject oldCoot;

	// Use this for initialization
	void Start () {
	
		oldCoot = GameObject.Find ("pre_old_coot");

	}
	
	// Update is called once per frame
	void Update () {
	
		if(oldCoot.GetComponent<OldCoot>().heldBottles == 3){

			Destroy(gameObject);

		}

	}

	override public void OnAction()
	{

		PlayerMovement movComp = GWorld.myPlayer.GetComponent<PlayerMovement> ();
		movComp.DisplaySpeechBubble ("The shop is closed. I should probably explore more.");
		
	}

	override public void OnInspect()
	{
		
		DisplayComment ("It's closed for maintenance.");
		
	}
}
