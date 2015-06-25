using UnityEngine;
using System.Collections;

public class SurferDude : NPCBase 
{
	public AudioClip onTalkSound;

	override public void OnTalkTo()
	{
		GWorld.PlayClipAt (onTalkSound, transform.position);

		Dialoguer.StartDialogue (dialog, null);
		currentNPCState = NPCState.talking;
		
		if (agent) 
		{
			agent.Stop ();
		}
	}

	override public void OnInspect()
	{	
		DisplaySpeechBubble ( "Hey duuude!" );
		
	}

}
