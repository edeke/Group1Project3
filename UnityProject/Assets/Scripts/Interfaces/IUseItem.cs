using UnityEngine;

interface IUseItem
{
	bool UseItemOnObject(EItem itemType);
	EAnimationState AnimationOnItem(EItem itemType);
}