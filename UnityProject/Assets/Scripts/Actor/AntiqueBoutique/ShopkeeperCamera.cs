using UnityEngine;
using System.Collections;

public class ShopkeeperCamera : MonoBehaviour 
{

	public Camera standardCamera;

	bool active = false;
	float activateTime = 0.0f;

	

	// Update is called once per frame
	void Update () 
	{
		if (active) 
		{
			activateTime -= Time.deltaTime;

			if(activateTime <= 0.0f)
			{
				gameObject.SetActive(false);
				standardCamera.gameObject.SetActive(true);
				active = false;
			}

		}
	}


	public void ActivateSeconds(float time)
	{
		activateTime = time;
		active = true;
	}

}
