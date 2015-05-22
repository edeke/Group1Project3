using UnityEngine;
using System.Collections;

public enum SplineWalkerMode
{
	Once,
	Loop,
	PingPong
}

public class Splinewalker : MonoBehaviour {

	public BezierSpline spline;

	public float duration;
	private float progress;

	public bool lookForward;

	public bool goingForward = true;
	public SplineWalkerMode mode;

	private void Update ()
	{
		if (goingForward) {
			progress += Time.deltaTime / duration;
			if (progress > 1.0f) 
			{
				if (mode == SplineWalkerMode.Once) 
				{
					progress = 1.0f;
				} 
				else if (mode == SplineWalkerMode.Loop) 
				{
					progress -= 1.0f;
				} 
				else 
				{
					progress = 2.0f - progress;
					goingForward = false;
				}
			}
		}
		else 
		{
			progress -= Time.deltaTime / duration;
			if (progress < 0.0f) 
			{
				progress = -progress;
				goingForward = true;
			}
		}

		Vector3 position = spline.GetPoint (progress);
		transform.localPosition = position;
		if (lookForward) {
			transform.LookAt (position + spline.GetDirection (progress));
		}
	}


}
