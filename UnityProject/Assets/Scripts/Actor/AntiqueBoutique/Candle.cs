using UnityEngine;
using System.Collections;


public class Candle : InspectBase
{

	override public MouseCursorInput OnMouseOverCursor()
	{
		//EnableOutline (true);
		
		if (mouseCursorOver == MouseCursorInput.Default) 
		{
			return MouseCursorInput.Normal;
		} 
		else 
		{
			return mouseCursorOver;
		}
	}
	
	override public void OnMouseLeave()
	{
		//EnableOutline (false);
		
		return;
	}


	override public void OnInspect()
	{	

		DisplayComment("Candles are to nice to look at.");

	}

}
