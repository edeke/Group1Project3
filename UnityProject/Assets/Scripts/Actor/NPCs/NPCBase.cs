using UnityEngine;
using System.Collections;
using System;

public enum NPCState
{
	idle,
	walking,
	talking
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

	public NPCState currentNPCState;
	NPCState prevNPCState;
	public WalkMode currentWalkMode;

	public bool wayPointIdleTime;
	public float currentIdleTime;
	public float idleTimeMax;

	protected bool movingForward = true;
	protected int currentTargetIndex = 0;
	public Vector3[] walkToLocation;

	public bool disableAnimatons;
	protected Animator anim;

	public void Awake()
	{
		anim = GetComponentInChildren<Animator> ();
		agent = GetComponent<NavMeshAgent> ();

		if (disableAnimatons)
		{
			anim.enabled = false;
		}
		else
		{
			anim.enabled = true;
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
		prevNPCState = currentNPCState;
		currentNPCState = NPCState.talking;

		if (agent) 
		{
			agent.Stop ();
		}
	}

	void Update (){
		
		//calculate speed
		CalculateSpeed ();

		switch (currentNPCState) 
		{
			case NPCState.idle :
				OnIdleLogic();
			break;

			case NPCState.talking :
				OnTalkLogic();
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

	}

	public void WalkToWaypointLogic()
	{

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
		if (!disableAnimatons) 
		{
			transform.LookAt (GWorld.myPlayer.transform.position);
		}

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

			currentNPCState = prevNPCState;
		}

	}
	
}
