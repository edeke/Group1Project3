using UnityEngine;
using UnityEngine.UI;
using System.Collections;
using UnityEngine.EventSystems;

public class ChangeColorOnEnter : MonoBehaviour {

	Text txtComp;
	Color colorStart;
	public Color enterColor;

	void Start()
	{
		txtComp = GetComponentInChildren<Text> ();
		if (txtComp != null) 
		{
			colorStart = txtComp.color;
		} 
	}

	public void ResetColor()
	{
		if (txtComp != null)
		{
			txtComp.color = colorStart;
		}
	}

	public void OnMouseOver()
	{


		if (txtComp != null)
		{
			txtComp.color = enterColor;
		}
	}

	public void OnMouseLeaveing()
	{
		if (txtComp != null)
		{
			txtComp.color = colorStart;
		}
	}
}
