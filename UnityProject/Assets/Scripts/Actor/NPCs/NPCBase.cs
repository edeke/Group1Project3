using UnityEngine;
using System.Collections;
using System;

public enum NPCState
{
	idle,
	walking,
	talking,
	itemGiven
}

public enum WalkMode 
{
	loop,
	patrol,
	random
}


public class NPCBase : ClickOnActorBase
{
	protected NavMeshAgent agent;

	protected Vector3 posPrev;
	protected float maxSpeed = 2.0f;
	protected float rotationSpeed = 6.0f;

	public NPCState currentNPCState;
	NPCState defaultNPCState;

	public WalkMode currentWalkMode;

	public bool wayPointIdleTime;
	float currentIdleTime;
	public float idleTimeMax;

	protected bool movingForward = true;
	protected int currentTargetIndex = 0;
	public Vector3[] walkToLocation;

	public bool disableAnimatons;
	protected Animator anim;

	public bool disableRotationWhenTalking;

	AudioClip stepSound1;
	AudioClip stepSound2;
	AudioClip stepSound3;
	AudioClip stepSound4;

	AudioClip dialog1;
	AudioClip dialog2;
	AudioClip dialog3;
	AudioClip dialog4;
	AudioClip dialog5;
	AudioClip dialog6;
	
	AudioSource currentSpeechAudio;

	public void Awake()
	{
		currentSpeechAudio = gameObject.AddComponent<AudioSource> ();
		anim = GetComponentInChildren<Animator> ();
		agent = GetComponent<NavMeshAgent> ();

		defaultNPCState = currentNPCState;

		currentSpeechAudio.volume = 0.5f;

		if (disableAnimatons)
		{
			anim.enabled = false;
		}
		else
		{
			anim.enabled = true;
		}

		string path = "SFX/Walking/Big Steps/big_step_01";
		stepSound1  = (AudioClip)Resources.Load(path,typeof(AudioClip));
		
		if (!stepSound1)
		{
			Debug.Log("Failed to Load Audio - " + path);
		}

		path = "SFX/Walking/Big Steps/big_step_02";
		stepSound2  = (AudioClip)Resources.Load(path,typeof(AudioClip));
		
		if (!stepSound2)
		{
			Debug.Log("Failed to Load Audio - " + path);
		}

		path = "SFX/Walking/Big Steps/big_step_03";
		stepSound3  = (AudioClip)Resources.Load(path,typeof(AudioClip));
		
		if (!stepSound3)
		{
			Debug.Log("Failed to Load Audio - " + path);
		}

		path = "SFX/Walking/Big Steps/big_step_04";
		stepSound4  = (AudioClip)Resources.Load(path,typeof(AudioClip));
		
		if (!stepSound4)
		{
			Debug.Log("Failed to Load Audio - " + path);
		}

		path = "SFX/NPC/Dialog1";
		dialog1  = (AudioClip)Resources.Load(path,typeof(AudioClip));
		
		if (!dialog1)
		{
			Debug.Log("Failed to Load Audio - " + path);
		}

		path = "SFX/NPC/Dialog2";
		dialog2  = (AudioClip)Resources.Load(path,typeof(AudioClip));
		
		if (!dialog2)
		{
			Debug.Log("Failed to Load Audio - " + path);
		}

		path = "SFX/NPC/Dialog3";
		dialog3  = (AudioClip)Resources.Load(path,typeof(AudioClip));
		
		if (!dialog3)
		{
			Debug.Log("Failed to Load Audio - " + path);
		}

		path = "SFX/NPC/Dialog4";
		dialog4  = (AudioClip)Resources.Load(path,typeof(AudioClip));
		
		if (!dialog4)
		{
			Debug.Log("Failed to Load Audio - " + path);
		}

		path = "SFX/NPC/Dialog5";
		dialog5  = (AudioClip)Resources.Load(path,typeof(AudioClip));
		
		if (!dialog5)
		{
			Debug.Log("Failed to Load Audio - " + path);
		}

		path = "SFX/NPC/Dialog6";
		dialog6  = (AudioClip)Resources.Load(path,typeof(AudioClip));
		
		if (!dialog6)
		{
			Debug.Log("Failed to Load Audio - " + path);
		}

	}

	void StepSound()
	{	
		int random = UnityEngine.Random.Range (0, 4);
		
		AudioSource audio;
		
		switch (random) 
		{
		case 0:
			audio = GWorld.PlayClipAt(stepSound1, transform.position, 0.1f);
			//AudioSource.PlayClipAtPoint (stepSound1, transform.position, 0.1f);
			break;
			
		case 1:
			audio = GWorld.PlayClipAt(stepSound2, transform.position, 0.1f);
			//AudioSource.PlayClipAtPoint (stepSound2, transform.position, 0.1f);
			break;
			
		case 2:
			audio = GWorld.PlayClipAt(stepSound3, transform.position, 0.1f);
			//AudioSource.PlayClipAtPoint (stepSound3, transform.position, 0.1f);
			break;
			
		case 3:
			audio = GWorld.PlayClipAt(stepSound4, transform.position, 0.1f);
			//AudioSource.PlayClipAtPoint (stepSound4, transform.position, 0.1f);
			break;
		}
		
	}

	public Vector3 GetWalkLocation(int index)
	{
		return walkToLocation [index];
	}
	
	public void SetWalkLocation(int index, Vector3 newLocation)
	{
		walkToLocation [index] = newLocation;
	}
	
	public int NumWalkLocations
	{
		get 
		{
			return walkToLocation.Length;
		}
	}
	
	public void Reset()
	{
		Vector3 newVector = transform.position;
		
		walkToLocation = new Vector3[] {
			new Vector3(0.0f,0.0f,0.0f)
		};

		walkToLocation[0] = newVector;
	}
	
	public void AddWalkPoint()
	{
		Vector3 newVector = transform.position;
		
		Array.Resize (ref walkToLocation, walkToLocation.Length + 1);
		SetWalkLocation (walkToLocation.Length - 1, newVector);
		
	}

	override public void OnTalkTo()
	{
		Dialoguer.StartDialogue (dialog, null);
		currentNPCState = NPCState.talking;

		if (agent) 
		{
			agent.Stop ();
		}
	}

	public void RotateTowards(Vector3 location)
	{
		if (disableRotationWhenTalking)
		{
			return;
		}

		if (!disableAnimatons) 
		{

			Vector3 targetDir = location - transform.position;
			float step = rotationSpeed * Time.deltaTime;
			Vector3 newDir = Vector3.RotateTowards (transform.forward, targetDir, step, 0.0F);
			Debug.DrawRay (transform.position, newDir, Color.red);
			transform.rotation = Quaternion.LookRotation (newDir);
		}
	}


	public void Update (){
		
		//calculate speed
		CalculateSpeed ();

		switch (currentNPCState) 
		{
			case NPCState.idle :
				OnIdleLogic();
			break;

			case NPCState.itemGiven :
				ItemGivenLogic();
				RotateTowards(GWorld.myPlayer.transform.position);
			break;

			case NPCState.talking :
				OnTalkLogic();
				RotateTowards(GWorld.myPlayer.transform.position);
			break;

			case NPCState.walking :
				WalkToWaypointLogic ();
			break;
		}
	}

	public void OnIdleLogic()
	{
		if (wayPointIdleTime) 
		{
			currentIdleTime -= Time.deltaTime;

			if( currentIdleTime <= 0.0f )
			{
				currentNPCState = NPCState.walking;
			}
		}

		if (currentSpeechAudio.isPlaying == true)
		{
			currentSpeechAudio.Stop();
		}

	}

	public void ItemGivenLogic()
	{

		currentIdleTime -= Time.deltaTime;
			
		if( currentIdleTime <= 0.0f )
		{
			currentNPCState = defaultNPCState;
			agent.Resume();
		}

	}

	public void WalkToWaypointLogic()
	{
		if (currentSpeechAudio.isPlaying == true)
		{
			currentSpeechAudio.Stop();
		}

		if( walkToLocation.Length > 0 && agent)
		{
			agent.SetDestination ( walkToLocation[currentTargetIndex] );
			agent.Resume();
		}

		//Debug.Log ("currentTargetIndex : " + currentTargetIndex);
		//Debug.Log ("currentTargetDistance : " + Vector3.Distance( transform.position, walkToLocation[currentTargetIndex] ) );

		if (Vector3.Distance (transform.position, walkToLocation [currentTargetIndex]) < 2.0f)
		{
			switch(currentWalkMode)
			{
				case WalkMode.patrol :
					PatrolNextWayPoint();
					IdleOnWayPoint();
				break;

				case WalkMode.loop :
					LoopNextWayPoint();
					IdleOnWayPoint();
				break;

				case WalkMode.random :
					RandomNextWayPoint();
					IdleOnWayPoint();
				break;
			}
		}
	}

	void PatrolNextWayPoint()
	{
		if (movingForward) 
		{
			currentTargetIndex++;
			
			if (currentTargetIndex == walkToLocation.Length) 
			{
				currentTargetIndex--;
				movingForward = false;
			}
			
		} 
		else 
		{
			currentTargetIndex--;
			
			if (currentTargetIndex < 0) 
			{
				currentTargetIndex++;
				movingForward = true;
			}
		}
	}

	void LoopNextWayPoint()
	{
		currentTargetIndex++;
		
		if(currentTargetIndex == walkToLocation.Length)
		{
			currentTargetIndex = 0;
		}
	}

	void RandomNextWayPoint()
	{
		currentTargetIndex = UnityEngine.Random.Range (0, walkToLocation.Length);
	}

	void IdleOnWayPoint()
	{
		if (wayPointIdleTime) 
		{
			currentNPCState = NPCState.idle;
			currentIdleTime = UnityEngine.Random.Range( idleTimeMax / 2 , idleTimeMax );
		}
	}

	void CalculateSpeed()
	{
		float speed = (transform.position - posPrev).magnitude / Time.deltaTime / maxSpeed;
		//speed /= maxSpeed;
		if (anim && !disableAnimatons)
		{
			anim.SetFloat ("speed", speed);
		}
		
		posPrev = transform.position;
	}

	void OnTalkLogic()
	{
		if (anim && !disableAnimatons)
		{
			anim.SetBool ("Talk", true);
		}
		
		if ( GWorld.dialogOpen == false ) 
		{
			if (anim && !disableAnimatons)
			{
				anim.SetBool ("Talk", false);
			}

			currentNPCState = defaultNPCState;
		}

		if (currentSpeechAudio.isPlaying == false) 
		{
			int random = UnityEngine.Random.Range (0, 6);
			
			AudioSource audio;
			
			switch (random) 
			{
				case 0:
					currentSpeechAudio.clip = dialog1;
				break;
					
				case 1:
					currentSpeechAudio.clip = dialog2;
				break;
					
				case 2:
					currentSpeechAudio.clip = dialog3;
				break;
					
				case 3:
					currentSpeechAudio.clip = dialog4;
				break;

				case 4:
					currentSpeechAudio.clip = dialog5;
				break;

				case 5:
					currentSpeechAudio.clip = dialog6;
				break;
			}


			currentSpeechAudio.Play ();
		}

	}

	virtual public void GiveItem()
	{
		currentIdleTime = 2.0f;
		currentNPCState = NPCState.itemGiven;
		agent.Stop (); 
	}

}
