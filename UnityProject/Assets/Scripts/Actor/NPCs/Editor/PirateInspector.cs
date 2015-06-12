using UnityEngine;
using UnityEditor;
using System.Collections;


[CustomEditor(typeof(Pirate))]
public class PirateInspector : Editor {

	private Transform handleTransform;
	private Quaternion handleRotation;

	private const float handleSize = 0.04f;
	private const float pickSize = 0.06f;

	bool pointSelected = false;

	private Pirate pirate;


	public override void OnInspectorGUI()
	{
		DrawDefaultInspector ();

		if (GUILayout.Button ("Add Location")) 
		{
			Undo.RecordObject(pirate, "Add Location");
			pirate.AddWalkPoint();
			EditorUtility.SetDirty(pirate);
		}

	}

	private void ShowPoints( )
	{
		int length = pirate.NumWalkLocations;

		for (int i = 0; i < length; i++)
		{
			Vector3 point = pirate.GetWalkLocation(i);
			float size = HandleUtility.GetHandleSize (point);

			Handles.color = Color.white;

			if (Handles.Button (point, handleRotation, size * handleSize, size * pickSize, Handles.DotCap)) {
				pointSelected = true;
				Repaint ();
			} 
		}
	
	}

	private void OnSceneGUI()
	{
		pirate = target as Pirate;
		handleTransform = pirate.transform;
		handleRotation = Tools.pivotRotation == PivotRotation.Local ? handleTransform.rotation : Quaternion.identity;


		ShowPoints();
		ShowLines ();

		if( pointSelected )
			DrawSeletedPointInspector();

	}

	private void DrawSeletedPointInspector()
	{

		int length = pirate.NumWalkLocations;

		for (int i = 0; i < length; i++)
		{
			EditorGUI.BeginChangeCheck ();
			Vector3 selectedPoint = pirate.GetWalkLocation(i);
			selectedPoint = Handles.DoPositionHandle (selectedPoint, handleRotation);

			if (EditorGUI.EndChangeCheck ()) {
				Undo.RecordObject (pirate, "Move Point");
				EditorUtility.SetDirty (pirate);
				pirate.SetWalkLocation(i,selectedPoint);
			}
		}
	}

	private void ShowLines()
	{
		int length = pirate.NumWalkLocations;



		if (length > 0)
		{
			Handles.color = Color.green;
			Handles.DrawLine (pirate.transform.position, pirate.GetWalkLocation(0) );
		}

		if( length > 1 )
		{
			for (int i = 0; i < length - 1; i++)
			{
				Handles.color = Color.green;
				Vector3 point = pirate.GetWalkLocation (i);
				Vector3 pointNext = pirate.GetWalkLocation (i + 1);
				
				Handles.DrawLine (point, pointNext);
			}
		}
	}
}