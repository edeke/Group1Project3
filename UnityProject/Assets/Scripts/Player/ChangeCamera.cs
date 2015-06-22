using UnityEngine;
using System.Collections;

public class ChangeCamera : MonoBehaviour {

	public Camera standardCamera;
	public Camera newCamera;

	void Start(){


	}

	void OnTriggerEnter(Collider other){

		if (other.tag == "Player") {

			standardCamera.gameObject.SetActive (false);
			newCamera.gameObject.SetActive (true);

		} 
	}

	void OnTriggerExit(Collider other){

		if (other.tag == "Player") {
			
			standardCamera.gameObject.SetActive (true);
			newCamera.gameObject.SetActive (false);
			
		} 

	}

}
