using UnityEngine;
using UnityEngine.UI;
using System.Collections;

public class SleepMenuController : MonoBehaviour {

	public int sleepHours = 0;

	private Slider sleepSlider;
	private Text sleepText;
	private Text currentTimeText;

	public AudioClip click;


	// Use this for initialization
	void Awake () {
		sleepSlider = GetComponentInChildren<Slider> ();

		Text[] tempArray = GetComponentsInChildren<Text> ();

		foreach (Text txtComp in tempArray) 
		{
			if( txtComp.CompareTag("SleepText") )
			{
				sleepText = txtComp;

			}
			else if ( txtComp.CompareTag("CurrentTimeText") )
			{
				currentTimeText = txtComp;
	
			}
		}

	}
	
	// Update is called once per frame
	void Update () 
	{
		currentTimeText.text = "Time Of Day :  " + GWorld.GetTimeOfTheDay().ToString();
	}

	public void OnSleepClick()
	{
		//int value = Mathf.RoundToInt(sleepSlider.value);
		//GWorld.FastForwardTime (value);

		if (GWorld.LoadingLevel () == false) 
		{
			AudioSource.PlayClipAtPoint(click, transform.position);
			GWorld.FastForwardTime (12);
			Destroy (gameObject);
		} 
		else 
		{
			Destroy (gameObject);
		}
	}

	public void OnCancelClick()
	{
		AudioSource.PlayClipAtPoint(click, transform.position);
		Destroy (gameObject);
	}

	/*public void OnSliderChange()
	{
		int value = Mathf.RoundToInt(sleepSlider.value);

		sleepText.text = value.ToString() + " h";
		
	}*/

}
