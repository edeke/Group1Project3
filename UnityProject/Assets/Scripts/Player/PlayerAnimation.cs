using UnityEngine;
using System.Collections;

public class PlayerAnimation : MonoBehaviour {

	Animator anim;

	Vector3 posPrev;
	float maxSpeed = 8;
	PlayerMovement movement;

	//play idle
	float playIdleAfterTime = 5.0f;
	float currentIdleTime = 0.0f;

	public AudioClip stepSound1;
	public AudioClip stepSound2;
	public AudioClip stepSound3;
	public AudioClip stepSound4;

	// Use this for initialization
	void Start () {
		currentIdleTime = playIdleAfterTime;
		anim = GetComponentInChildren<Animator> ();
		movement = GetComponentInParent<PlayerMovement> ();
		posPrev = transform.position;

	}

	void StepSound()
	{	
		int random = Random.Range (0, 4);

		switch (random) 
		{
			case 0:
				AudioSource.PlayClipAtPoint (stepSound1, transform.position, 0.1f);
			break;

			case 1:
				AudioSource.PlayClipAtPoint (stepSound2, transform.position, 0.1f);
			break;

			case 2:
				AudioSource.PlayClipAtPoint (stepSound3, transform.position, 0.1f);
			break;

			case 3:
				AudioSource.PlayClipAtPoint (stepSound4, transform.position, 0.1f);
			break;
		}

	}
	
	void AnimationUseItem()
	{
		movement.AnimationUseItem ();
	}

	void AnimationDonePlaying()
	{
		movement.AnimationDonePlaying ();
	}
	
	// Update is called once per frame
	void Update () {

		//calculate speed
		float speed = (transform.position - posPrev).magnitude / Time.deltaTime / maxSpeed;
		//speed /= maxSpeed;
		anim.SetFloat ("speed", speed);

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

		//Pickup Item
		if (movement.GetPlayerAnimationState () == EAnimationState.PickupLow) 
		{
			anim.SetInteger ("Pickup", 1);
		} 
		else if (movement.GetPlayerAnimationState () == EAnimationState.Pickup) 
		{
			anim.SetInteger ("Pickup", 2);
		} 
		else 
		{
			anim.SetInteger ("Pickup", 0);
		}

		//using Item
		if (movement.GetPlayerAnimationState () == EAnimationState.UseLow) 
		{
			anim.SetInteger ("useingItem", 1);
		} 
		else if (movement.GetPlayerAnimationState () == EAnimationState.Use) 
		{
			anim.SetInteger ("useingItem", 2);
		} 
		else 
		{
			anim.SetInteger ("useingItem", 0);
		}

		if (movement.GetPlayerAnimationState () == EAnimationState.Error) 
		{
			anim.SetBool ("shakehead", true);
		}
		else
		{
			anim.SetBool ("shakehead", false);
		}

		if (movement.GetPlayerAnimationState () == EAnimationState.Talk) 
		{
			anim.SetBool ("talking", true);
		}
		else
		{
			anim.SetBool ("talking", false);
		}





	}
}
