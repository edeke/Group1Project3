using System.Collections.Generic;
using UnityEditor;
using UnityEngine;

public class NavMeshFixer : ScriptableObject
{
	[MenuItem("Paladin/Fix Navigation Mesh")]
	public static void FixNavMesh()
	{        
		Undo.RegisterSceneUndo("BakeNavMesh");
		
		List<Renderer> disabledObjects = new List<Renderer>();
		
		foreach (Renderer item in Object.FindObjectsOfType(typeof(Renderer)))
		{

			if (GameObjectUtility.AreStaticEditorFlagsSet(item.gameObject, StaticEditorFlags.NavigationStatic) && !item.enabled)
			{
				disabledObjects.Add(item);
				item.GetComponent<Renderer>().enabled = true; 
			}            
		}
		
		NavMeshBuilder.BuildNavMesh(); 
		
		disabledObjects.ForEach( obj => obj.enabled = false );
		
		Debug.Log(string.Format("Done building navmesh, {0} objects affected.", disabledObjects.Count));
	}
}
