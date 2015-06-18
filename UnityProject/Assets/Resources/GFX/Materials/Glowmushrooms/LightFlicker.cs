using UnityEngine;
//using System.Collections;

public class LightFlicker : MonoBehaviour {
	public float MoveDistance =1f;
	public float MoveSpeed = 2.2f;
	public float Timer =0.04f;
	private float lastTime=0f;
	private Vector3 startPos,oldPos,newPos;
	private float lerper =0;

	// Use this for initialization
	void Start () 
	{
		startPos = transform.localPosition;
		newPos=startPos+RandomVector ()*MoveDistance;
	}
	
	// Update is called once per frame
	void Update () 
	{
		if (MoveDistance>0)
		{
			if (Time.time>lastTime+Timer)
			{
				lastTime=Time.time;
				newPos=startPos+RandomVector ()*MoveDistance;
			}

			transform.localPosition=Vector3.Lerp (transform.localPosition,newPos,Time.deltaTime*MoveSpeed);
		}
	}

	Vector3 RandomVector ()
	{
		return new Vector3 (Random.Range (-1f,1f),Random.Range (-1f,1f),Random.Range (-1f,1f));
	}
}
