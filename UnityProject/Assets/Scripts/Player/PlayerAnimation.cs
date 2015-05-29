using UnityEngine;
using System.Collections;

public class PlayerAnimation : MonoBehaviour {

	Animator anim;

	Vector3 posPrev;
	float maxSpeed = 6;
	PlayerMovement movement;

	//play idle
	float playIdleAfterTime = 1.0f;
	float currentIdleTime = 0.0f;

	// Use this for initialization
	void Start () {
		currentIdleTime = playIdleAfterTime;
		anim = GetComponentInChildren<Animator> ();
		movement = GetComponentInChildren<PlayerMovement> ();
		posPrev = transform.position;

	}
	
	// Update is called once per frame
	void Update () {

		//calculate speed
		float speed = (transform.position - posPrev).magnitude / Time.deltaTime / maxSpeed;
		//speed /= maxSpeed;
		anim.SetFloat("speed", speed);

		posPrev = transform.position;


		if ( movement.GetPlayerState() == EPlayerState.Idle ) 
		{
			currentIdleTime -= Time.deltaTime;

			if (currentIdleTime <= 0.0f) 
			{
				int randomNum = Random.Range(1, 3); //random from 1 to 2
				anim.SetInteger ("playIdle", randomNum);
				currentIdleTime = 0.0f;
			}
		} 
		else
		{
			currentIdleTime = playIdleAfterTime;
			anim.SetInteger("playIdle", 0);
		}

		if (movement.GetPlayerState () == EPlayerState.PickupObjectLow) 
		{
			anim.SetInteger ("Pickup", 1);
		} 
		else 
		{
			anim.SetInteger ("Pickup", 0);
		}

		if (movement.GetPlayerState () == EPlayerState.UsingItem) 
		{
			anim.SetInteger ("useingItem", 1);
		} 
		else 
		{
			anim.SetInteger ("useingItem", 0);
		}




	}
}
