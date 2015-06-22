using UnityEngine;
using System.Collections;


public class CombineData
{
	public EItem item1;
	public EItem item2;
	public string newItemHashValue;
	public AudioClip playOnCombine;
}


static public class ItemDatabase 
{
	static Hashtable items;
	static ArrayList combineItemsList;

	static ItemDatabase()
	{
		items = new Hashtable ();
		combineItemsList = new ArrayList ();

		//Add Item to Itemdb
		ItemStruct banan = new ItemStruct ();

		string path = "Textures/ItemTextures/Banana";
		Texture newTex = (Texture)Resources.Load(path,typeof(Texture));

		if (!newTex)
		{
			Debug.Log("Item Database : Unable to load texture - " + path);
		}

		banan.itemType = EItem.Banana;
		banan.itemTexture = newTex;
		banan.numberOfItemsInStack = 1;
		banan.onDragParticle = null;
		banan.onPickupParticle = null;
		banan.onUseParticle = null;
		banan.soundOnPickup = null;
		banan.soundOnUse = null;
		banan.itemDescription = "It's a banana";
		items.Add ("Banana", banan );

		//Add Item to Itemdb
		ItemStruct JarWithFireflies = new ItemStruct ();
		
		path = "Textures/ItemTextures/JarWithFireflies";
		newTex = (Texture)Resources.Load(path,typeof(Texture));
		
		if (!newTex)
		{
			Debug.Log("Item Database : Unable to load texture - " + path);
		}
		
		JarWithFireflies.itemType = EItem.JarWithFireflies;
		JarWithFireflies.itemTexture = newTex;
		JarWithFireflies.numberOfItemsInStack = 1;
		JarWithFireflies.onDragParticle = null;
		JarWithFireflies.onPickupParticle = null;
		JarWithFireflies.onUseParticle = null;
		JarWithFireflies.soundOnPickup = null;
		JarWithFireflies.soundOnUse = null;
		JarWithFireflies.itemDescription = "It's a jar filled with fireflies.";
		items.Add ("JarWithFireflies", JarWithFireflies );

		//Add Item to Itemdb
		ItemStruct unlitTorch = new ItemStruct ();
		
		path = "Textures/ItemTextures/inventory_bone_with_cloth";
		newTex = (Texture)Resources.Load(path,typeof(Texture));
		
		if (!newTex)
		{
			Debug.Log("Item Database : Unable to load texture - " + path);
		}
		
		unlitTorch.itemType = EItem.UnlitTorch;
		unlitTorch.itemTexture = newTex;
		unlitTorch.numberOfItemsInStack = 1;
		unlitTorch.onDragParticle = null;
		unlitTorch.onPickupParticle = null;
		unlitTorch.onUseParticle = null;
		unlitTorch.soundOnPickup = null;
		unlitTorch.soundOnUse = null;
		unlitTorch.itemDescription = "It's an unlit torch.";
		items.Add ("UnlitTorch", unlitTorch );

		//Add Item to Itemdb
		ItemStruct litTorch = new ItemStruct ();
		
		path = "Textures/ItemTextures/inventory_torch";
		newTex = (Texture)Resources.Load(path,typeof(Texture));
		
		if (!newTex)
		{
			Debug.Log("Item Database : Unable to load texture - " + path);
		}
		
		litTorch.itemType = EItem.LitTorch;
		litTorch.itemTexture = newTex;
		litTorch.numberOfItemsInStack = 1;
		litTorch.onDragParticle = null;
		litTorch.onPickupParticle = null;
		litTorch.onUseParticle = null;
		litTorch.soundOnPickup = null;
		litTorch.soundOnUse = null;
		litTorch.itemDescription = "It's a lit torch.";
		items.Add ("LitTorch", litTorch );

		//Add combine data to array
		path = "SFX/ItemSounds/EnemyLaugh2";
		AudioClip newAudio = (AudioClip)Resources.Load(path,typeof(AudioClip));

		if (!newAudio)
		{
			Debug.Log("Item Database : Unable to load Audio - " + path);
		}

		CombineData newCombine = new CombineData ();
		newCombine.item1 = EItem.Apple;
		newCombine.item2 = EItem.Pear;
		newCombine.newItemHashValue = "Banana";
		newCombine.playOnCombine = newAudio;
		combineItemsList.Add ( newCombine );

		//Add combine data to array
		path = "SFX/ItemSounds/EnemyLaugh2";
		newAudio = (AudioClip)Resources.Load(path,typeof(AudioClip));
		
		if (!newAudio)
		{
			Debug.Log("Item Database : Unable to load Audio - " + path);
		}
		
		CombineData unlitTorchCombineData = new CombineData ();
		unlitTorchCombineData.item1 = EItem.HangingCloth;
		unlitTorchCombineData.item2 = EItem.Branch;
		unlitTorchCombineData.newItemHashValue = "UnlitTorch";
		unlitTorchCombineData.playOnCombine = newAudio;
		combineItemsList.Add ( unlitTorchCombineData );



	}

	static public ItemStruct GetItem(string index)
	{
		return (ItemStruct)items [index];
	}

	static public bool TryCombineItems( EItem item1, EItem item2, ref ItemStruct newItemData, ref CombineData combineData)
	{
		foreach (CombineData itr in combineItemsList) 
		{
			if( itr.item1 == item1 )
			{
				if(itr.item2 == item2)
				{
					newItemData = GetItem (itr.newItemHashValue);
					combineData = itr;

					return true;
				}
			}

			//Make sure the placement of the items dont matter
			if( itr.item1 == item2 )
			{
				if(itr.item2 == item1)
				{
					newItemData = GetItem (itr.newItemHashValue);
					combineData = itr;

					return true;
				}
			}

		}

		return false;

	}


}
