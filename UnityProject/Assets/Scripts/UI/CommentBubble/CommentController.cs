using UnityEngine;
using UnityEngine.UI;
using System.Collections;


public class CommentController : MonoBehaviour {

	Canvas mainCanvas;
	RectTransform mainCanvasRect;
	
	public AudioClip speechSound;

	const int xSpacing = 10;
	const int ySpacing = 10;

	float currentOpenTime;

	float fadeSpeed = 0.5f;

	const float textOpenTimeBase = 3.0f;
	const float textOpenTimePerLetter = 0.1f;

	Camera mainCamera;
	GameObject objectToFollow;

	Vector2 sizeOfText;
	GUIStyle myStyle;

	Vector3 screenLocation;

	int objectSetOffset_x = 0;
	int objectSetOffset_y = 0;

	void Awake()
	{
		currentOpenTime = textOpenTimeBase;
		mainCamera = FindObjectOfType<Camera> ();

		myStyle = new GUIStyle ();

		Text tempComp = gameObject.GetComponentInChildren<Text>();

		myStyle.fontStyle = tempComp.fontStyle;
		myStyle.fontSize = tempComp.fontSize;
		myStyle.font = tempComp.font;

		Color newColor = tempComp.color;
		newColor.a = 0.0f;
		
		tempComp.color = newColor;
		//myStyle.wordWrap = tempComp.horizontalOverflow;

	}

	public void SetObjectFollow(GameObject worldObject)
	{
		objectToFollow = worldObject;
	}


	// Update is called once per frame
	void Update () 
	{
		SetPosition ();

		currentOpenTime -= Time.deltaTime;
	
		Text tempComp = gameObject.GetComponentInChildren<Text> ();
		Color newColor = tempComp.color;

		if (currentOpenTime < (1.0f/fadeSpeed) ) 
		{
			newColor.a -= (Time.deltaTime * fadeSpeed);

			tempComp.color = newColor;
		} 
		else if (newColor.a < 1.0f)
		{
			newColor.a += Time.deltaTime * (1.0f/fadeSpeed);
			
			tempComp.color = newColor;

		}

		if(currentOpenTime <= 0.0f)
		{
			Destroy(gameObject);
		}

	}

	public void SetPosition()
	{
		//if object is deleted when  we pick it up then stop following but use same position
		if (objectToFollow == null) 
		{
			gameObject.transform.position = screenLocation;
			return;
		}

		screenLocation = mainCamera.WorldToScreenPoint (objectToFollow.transform.position);


		screenLocation.y += objectSetOffset_x;

		//Clamp X location to within screen
		if (screenLocation.x + (sizeOfText.x / 2) > Screen.width) 
		{
			int deltaX = Screen.width - Mathf.FloorToInt (screenLocation.x + (sizeOfText.x / 2));
			screenLocation.x += deltaX - xSpacing;
		} 
		else if (screenLocation.x - (sizeOfText.x / 2) < 0.0f)
		{
			int deltaX = Mathf.FloorToInt (screenLocation.x - (sizeOfText.x / 2) );
			screenLocation.x -= deltaX - xSpacing;
		}

		int offsetY = Mathf.FloorToInt(Screen.height * 0.05f) + objectSetOffset_y;
		screenLocation.y += offsetY;

		if (screenLocation.y + (sizeOfText.y / 2) > Screen.height) 
		{
			int deltaY = Screen.height - Mathf.FloorToInt (screenLocation.y + (sizeOfText.y / 2));
			screenLocation.y += deltaY - ySpacing;
		}
		else if (screenLocation.y - (sizeOfText.y / 2) < 0.0f)
		{
			int deltaY = Mathf.FloorToInt (screenLocation.y - (sizeOfText.y / 2) );
			screenLocation.y -= deltaY - ySpacing;
		}

		gameObject.transform.position = screenLocation;

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

	void PlaySpeechAudio()
	{
		if(speechSound != null)
		{
			AudioSource.PlayClipAtPoint( speechSound, transform.localPosition );
		}
	}

	public void SetOffset(int x, int y)
	{
		objectSetOffset_x = x;
		objectSetOffset_y = y;
	}

	void OnGUI()
	{
		//calculate size of text after every F frame becuse Unity is useless crap
		Text tempComp = gameObject.GetComponentInChildren<Text>();

		sizeOfText = myStyle.CalcSize(new GUIContent (tempComp.text));


	}

}
