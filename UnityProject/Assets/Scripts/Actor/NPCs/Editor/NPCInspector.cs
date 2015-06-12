using UnityEngine;
using UnityEditor;
using System.Collections;


[CustomEditor( typeof( NPCBase ), true )]
public class NPCInspector : Editor {

	private Transform handleTransform;
	private Quaternion handleRotation;

	private const float handleSize = 0.04f;
	private const float pickSize = 0.06f;

	bool pointSelected = false;

	private NPCBase npc;


	public override void OnInspectorGUI()
	{
		DrawDefaultInspector ();

		if (GUILayout.Button ("Add Location")) 
		{
			Undo.RecordObject(npc, "Add Location");
			npc.AddWalkPoint();
			EditorUtility.SetDirty(npc);
		}

	}

	private void ShowPoints( )
	{
		int length = npc.NumWalkLocations;

		for (int i = 0; i < length; i++)
		{
			Vector3 point = npc.GetWalkLocation(i);
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
		npc = target as NPCBase;
		handleTransform = npc.transform;
		handleRotation = Tools.pivotRotation == PivotRotation.Local ? handleTransform.rotation : Quaternion.identity;


		ShowPoints();
		ShowLines ();

		if( pointSelected )
			DrawSeletedPointInspector();

	}

	private void DrawSeletedPointInspector()
	{

		int length = npc.NumWalkLocations;

		for (int i = 0; i < length; i++)
		{
			EditorGUI.BeginChangeCheck ();
			Vector3 selectedPoint = npc.GetWalkLocation(i);
			selectedPoint = Handles.DoPositionHandle (selectedPoint, handleRotation);

			if (EditorGUI.EndChangeCheck ()) {
				Undo.RecordObject (npc, "Move Point");
				EditorUtility.SetDirty (npc);
				npc.SetWalkLocation(i,selectedPoint);
			}
		}
	}

	private void ShowLines()
	{
		int length = npc.NumWalkLocations;

		switch( npc.currentWalkMode) 
		{
			case WalkMode.random :
				if( length > 1 )
				{
					for (int i = 0; i < length; i++)
					{
						Handles.color = Color.red;
						Vector3 point = npc.GetWalkLocation (i);
						
						Handles.DrawLine (npc.transform.position, point);
					}
				}
			break;

			case WalkMode.loop :
			case WalkMode.patrol :
				if( length > 1 )
				{
					for (int i = 0; i < length - 1; i++)
					{
						Handles.color = Color.green;
						Vector3 point = npc.GetWalkLocation (i);
						Vector3 pointNext = npc.GetWalkLocation (i + 1);
						
						Handles.DrawLine (point, pointNext);
					}
				}
				if (npc.currentWalkMode == WalkMode.loop && length > 1) 
				{
					Handles.color = Color.green;
					Vector3 point = npc.GetWalkLocation( length - 1 );
					Vector3 pointNext = npc.GetWalkLocation (0);
					Handles.DrawLine (point, pointNext);
				}
			break;

		}





	}
}