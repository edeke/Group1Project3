﻿using UnityEngine;
using UnityEngine.UI;
using System.Collections;


public class SpeechBubbleScreen : MonoBehaviour {

	RectTransform mainCanvasRect;
	Text textComp;
	Text nameComp;
	Image speechBubbleComp;
	Canvas mainCanvas;

	Camera mainCamera;
	GameObject objectToFollow;

	public AudioClip speechSound;

	Animator anim;

	float currentOpenTime;

	const float textOpenTimeBase = 3.0f;
	const float textOpenTimePerLetter = 0.1f;
	
	float fadeSpeed = 0.5f;
	Vector3 screenLocation;

	const int xSpacing = 10;
	const int ySpacing = 10;

	const int xPadding = 70;
	const int yPadding = 70;

	Vector2 sizeOfText;
	GUIStyle myStyle;


	// Use this for initialization
	void Awake () {

		mainCamera = FindObjectOfType<Camera> ();

		Canvas[] tempComp = gameObject.GetComponentsInChildren<Canvas> ();
		foreach (Canvas comp in tempComp)
		{
			if (comp.CompareTag ("SpeechMainCanvas")) {
				mainCanvas = comp;
			}
		}
		 
		anim = gameObject.GetComponentInChildren<Animator>();
		mainCanvasRect = mainCanvas.GetComponent<RectTransform> ();

		//background
		speechBubbleComp = gameObject.GetComponentInChildren<Image> ();

		//Text
		Text[] tmpNames = gameObject.GetComponentsInChildren<Text>();
		foreach (Text txt in tmpNames)
		{
			if( txt.CompareTag("SpeechName") )
			{
				nameComp = txt;
			}
			else
			{
				textComp = txt;
			}
		}

		myStyle = new GUIStyle ();
		myStyle.fontStyle = textComp.fontStyle;
		myStyle.fontSize = textComp.fontSize;
		myStyle.font = textComp.font;
	
	}
	
	// Update is called once per frame
	void Update () 
	{
		SetPositionAndSize ();
		
		currentOpenTime -= Time.deltaTime;

		if(currentOpenTime <= 0.75f)
		{
			
			anim.SetBool("close", true );
		}
		
		if(currentOpenTime <= 0.0f)
		{

			Destroy(gameObject);
		}

	}

	private void SetPositionAndSize()
	{
		//if object is deleted when  we pick it up then stop following but use same position
		if (objectToFollow == null) 
		{
			gameObject.transform.position = screenLocation;
			return;
		}
		
		screenLocation = mainCamera.WorldToScreenPoint (objectToFollow.transform.position);

		int offsetY = Mathf.FloorToInt( sizeOfText.y + (Screen.height * 0.1f) );
		int offsetX = Mathf.FloorToInt( (sizeOfText.x / 2) + (Screen.width * 0.02f));

		screenLocation.x += offsetX;
		//Clamp X location to within screen
		if ( screenLocation.x + ( (sizeOfText.x + xPadding) / 2) > Screen.width) 
		{
			int deltaX = Screen.width - Mathf.FloorToInt ( (sizeOfText.x + xPadding) / 2);
			screenLocation.x = deltaX;
		} 
		else if ( screenLocation.x - ((sizeOfText.x + xPadding) / 2) - 5 < 0.0f )
		{
			int deltaX = Mathf.FloorToInt ( (sizeOfText.x + xPadding) / 2);
			screenLocation.x = deltaX + 5;
		}
		
		screenLocation.y += offsetY + 5;
		//Clamp Y location to within screen
		if ( screenLocation.y + ( (sizeOfText.y + yPadding) / 2) + 5 > Screen.height) 
		{
			int deltaY = Screen.height - Mathf.FloorToInt ( (sizeOfText.y + yPadding) / 2);
			screenLocation.y = deltaY - 5;
		} 
		else if ( screenLocation.y - ((sizeOfText.y + yPadding) / 2) < 0.0f )
		{
			int deltaY = Mathf.FloorToInt ( (sizeOfText.y + yPadding) / 2);
			screenLocation.y = deltaY;
		}
		
		mainCanvas.transform.position = screenLocation;


		Vector2 size = new Vector2 (sizeOfText.x + xPadding, sizeOfText.y + yPadding);
		mainCanvasRect.sizeDelta = size;
		
	}


	public void SetText(string text, int length = -1)
	{
		
		if (length == -1)
		{
			length = text.Length;
		}
		
		if(string.Compare(text, "") != 0 )
		{
			PlaySpeechAudio();
			
			UpdateTextComp(text);
			
			currentOpenTime = textOpenTimeBase;
			currentOpenTime += (length * textOpenTimePerLetter);
			
		}
		else
		{
			UpdateTextComp("");
		}
		
	}
	
	void UpdateTextComp(string text)
	{
		
		Text tempComp = gameObject.GetComponentInChildren<Text>();
		
		tempComp.text = text;
		
	}

	public void SetName(string newName)
	{
		if (newName != null) 
		{
			nameComp.text = newName;
		} 
	}

	public void SetObjectFollow(GameObject worldObject)
	{
		objectToFollow = worldObject;
	}

	void PlaySpeechAudio()
	{
		if(speechSound != null)
		{
			AudioSource.PlayClipAtPoint( speechSound, transform.localPosition );
		}
	}

	void OnGUI()
	{
		sizeOfText = myStyle.CalcSize (new GUIContent (textComp.text));
	}

}
