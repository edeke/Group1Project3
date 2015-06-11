using UnityEngine;
using System.Collections;


public class TreeOnBeach : CommentActorBase
{
	public GameObject rucksack;
	string EventID = "RucksackFallDown";
	private Quaternion rotation;
	private bool shaking = false;
	private float timeShaking = 1.0f;
	private float currentTimeShaking;

	private ParticleSystem part;

	void Start () 
	{

		if (!GWorld.TryRegisterEvent (EventID, "Hello"))
		{
			EventData tempData = new EventData();
			GWorld.FindEvent(EventID,ref tempData);

			if(tempData.hasEventOccured)
			{
				rucksack.AddComponent<Rigidbody> ();
			}

		}

		rotation = transform.rotation;

		part = GetComponentInChildren<ParticleSystem> ();
	}

	override public void OnInspect()
	{	
		EventData tempData = new EventData();
		GWorld.FindEvent(EventID,ref tempData);
		
		if (!tempData.hasEventOccured) 
		{
			DisplayComment ("It's a small palm tree.");
		} 
		else 
		{
			DisplayComment ("It's a small palm tree.");
		}
	}

	void Update()
	{
		if (shaking) 
		{
			currentTimeShaking -= Time.deltaTime;

			float shakingIntensity = currentTimeShaking / timeShaking;


			Vector3 newRot = new Vector3( Random.Range(-shakingIntensity,shakingIntensity), 0.0f, Random.Range(-shakingIntensity,shakingIntensity) );
			transform.rotation = rotation * Quaternion.Euler(newRot);

			if(currentTimeShaking <= 0.0f)
			{
				shaking = false;
			}
		}
	}

	override public void OnAction()
	{	
		EventData tempData = new EventData();
		GWorld.FindEvent(EventID,ref tempData);
		
		if(!tempData.hasEventOccured)
		{
			GWorld.MarkEventDone (EventID);
			rucksack.AddComponent<Rigidbody> ();
		}

		part.Play ();
		currentTimeShaking = timeShaking;
		shaking = true;
	}

}
