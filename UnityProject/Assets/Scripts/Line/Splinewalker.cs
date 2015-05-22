using UnityEngine;
using System.Collections;

public class Splinewalker : MonoBehaviour {

	public BezierSpline spline;

	public float duration;

	private float progress;

	public bool lookForward;

	private void Update ()
	{
		progress += Time.deltaTime / duration;
		if (progress > 1.0f)
		{
			progress = 0.0f;
		}
		transform.localPosition = spline.GetPoint (progress);
		Vector3 position = spline.GetPoint (progress);
		transform.localPosition = position;
		if (lookForward) 
		{
			transform.LookAt(position + spline.GetDirection(progress));
		}
	}

}
