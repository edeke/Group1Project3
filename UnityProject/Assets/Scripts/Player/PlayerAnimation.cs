using UnityEngine;
using System.Collections;

public class PlayerAnimation : MonoBehaviour {

	Animator anim;
	//Rigidbody body;

	Vector3 posPrev;
	float maxSpeed = 4;

	// Use this for initialization
	void Start () {
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
	}
}
