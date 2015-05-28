using UnityEngine;
using System.Collections;

public class PlayerAnimation : MonoBehaviour {

	Animator anim;
	//Rigidbody body;

	Vector3 posPrev;
	float maxSpeed = 4;

	//play idle
	float playIdleAfterTime = 1.0f;
	float currentIdleTime = 0.0f;

	// Use this for initialization
	void Start () {
		currentIdleTime = playIdleAfterTime;
		anim = GetComponentInChildren<Animator> ();
		//body = GetComponentInChildren<Rigidbody> ();
		posPrev = transform.position;
		//maxSpeed = body.maxAngularVelocity;
	}
	
	// Update is called once per frame
	void Update () {

		//calculate speed
		float speed = (transform.position - posPrev).magnitude / Time.deltaTime / maxSpeed;
		//speed /= maxSpeed;
		anim.SetFloat("speed", speed);

		posPrev = transform.position;

		if (speed > 0) 
		{
			currentIdleTime = playIdleAfterTime;
		} 
		else
		{
			currentIdleTime -= Time.deltaTime;
		}

		if (currentIdleTime <= 0.0f) 
		{
			int randomNum = Random.Range(1, 3); //random from 1 to 2
			anim.SetInteger ("playIdle", randomNum);
			currentIdleTime = 0.0f;
		}
		else 
		{
			anim.SetInteger("playIdle", 0);
		}

	}
}
