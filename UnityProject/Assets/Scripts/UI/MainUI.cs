using UnityEngine;
using UnityEngine.UI;
using System.Collections;


public class MainUI : MonoBehaviour {

	static MainUI mainUI;
	static RawImage blackScreen;

	static GameObject invOpenButton; 

	const float fadeTime = 0.3f;
	bool increaseAlpha = false;

	void Awake ()
	{

		if (!mainUI) 
		{
			mainUI = this;
		} 
		else 
		{
			Destroy(gameObject);
		}

		Canvas[] allCanvas = GetComponentsInChildren<Canvas> ();
		foreach (Canvas comp in allCanvas) 
		{
			if( comp.CompareTag("Blackscreen") )
			{
				blackScreen = comp.GetComponent<RawImage>();
			}
		}
	}

	public void GoBlack( bool enable )
	{
		if( enable )
		{
			increaseAlpha = true;
			//blackScreen.color = Color.red;
		}
		else
		{
			increaseAlpha = false;
			//blackScreen.color = Color.blue;
		}
	}


	void Update()
	{
		Color currentColor = blackScreen.color;

		Debug.Log (blackScreen.color.a);

		if (increaseAlpha && currentColor.a < 1 )
		{
			currentColor.a += (fadeTime * Time.deltaTime);
			blackScreen.color = currentColor;

		}
		else if (!increaseAlpha && currentColor.a > 0 )
		{
			currentColor.a -= (fadeTime * Time.deltaTime);
			blackScreen.color = currentColor;
		}

	}

}
