using UnityEngine;
using System.Collections;
using System;

public class NPCBase : ClickOnActorBase
{
	protected NavMeshAgent agent;

	protected Vector3 posPrev;
	protected float maxSpeed = 2.0f;

	protected bool isTalking;
	protected bool isWalking;

	public bool walking;
	public bool patrol;
	protected bool movingForward = true;
	protected int currentTargetIndex = 0;
	public Vector3[] walkToLocation;

	protected Animator anim;

	public void Awake()
	{
		anim = GetComponentInChildren<Animator> ();
		agent = GetComponent<NavMeshAgent> ();
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
		
		isTalking = true;
		agent.Stop ();
		
	}

	void Update (){
		
		//calculate speed
		float speed = (transform.position - posPrev).magnitude / Time.deltaTime / maxSpeed;
		//speed /= maxSpeed;
		if (anim)
		{
			anim.SetFloat ("speed", speed);
		}
		
		posPrev = transform.position;
		
		if (isTalking == true) {
			anim.SetBool ("Talk", true);
		} 
		
		if (isTalking == true && GWorld.dialogOpen == false) {
			anim.SetBool ("Talk", false);
			isTalking = false;
			
		}
		
		if (isTalking == true) 
		{
			//insert lerp thing
			transform.LookAt( GWorld.myPlayer.transform.position );
		}
		
		WalkToWaypointLogic ();
		
	}

	public void WalkToWaypointLogic()
	{
		
		if (walking && isTalking == false) 
		{
			if( walkToLocation.Length > 0 )
			{
				agent.SetDestination ( walkToLocation[currentTargetIndex] );
				agent.Resume();
			}
		}
		
		//Debug.Log ("currentTargetIndex : " + currentTargetIndex);
		//Debug.Log ("currentTargetDistance : " + Vector3.Distance( transform.position, walkToLocation[currentTargetIndex] ) );
		
		if (Vector3.Distance (transform.position, walkToLocation [currentTargetIndex]) < 2.0f)
		{
			if (patrol)
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
			else
			{
				
				currentTargetIndex++;
				
				if(currentTargetIndex == walkToLocation.Length)
				{
					currentTargetIndex = 0;
				}
			}
		}
	}
	
}
