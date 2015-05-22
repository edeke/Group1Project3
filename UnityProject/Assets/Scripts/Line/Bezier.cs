using UnityEngine;

static public class Bezier {

	public static Vector3 GetPoint (Vector3 p0, Vector3 p1, Vector3 p2, float t)
	{
		t = Mathf.Clamp01 (t);
		float oneMinusT = 1f - t;

		return oneMinusT * oneMinusT * p0 + 2.0f * oneMinusT * t * p1 + t * t * p2;
	}

	public static Vector3 GetPoint (Vector3 p0, Vector3 p1, Vector3 p2, Vector3 p3, float t) {
		t = Mathf.Clamp01(t);
		float oneMinusT = 1f - t;
		return
			oneMinusT * oneMinusT * oneMinusT * p0 +
				3f * oneMinusT * oneMinusT * t * p1 +
				3f * oneMinusT * t * t * p2 +
				t * t * t * p3;
	}

	public static Vector3 GetFirstDerivative ( Vector3 p0, Vector3 p1, Vector3 p2, float t)
	{
		return 2.0f * (1.0f - t ) * (p1 - p0) + 2.0f * t * (p2 - p1);
	}

	static public Vector3 GetFirstDerivative (Vector3 p0, Vector3 p1, Vector3 p2, Vector3 p3, float t) {
		t = Mathf.Clamp01(t);
		float oneMinusT = 1f - t;
		return
			3f * oneMinusT * oneMinusT * (p1 - p0) +
				6f * oneMinusT * t * (p2 - p1) +
				3f * t * t * (p3 - p2);
	}


}
