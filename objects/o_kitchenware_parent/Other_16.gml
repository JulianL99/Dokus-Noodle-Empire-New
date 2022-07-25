/// @description Done Cooking State initiated
var cookedSprite = cookingItemInfo.ingredientCookedSprite;
with (cookingItemObject) {
	previousSprite = cookedSprite != undefined && cookedSprite != noone ? cookedSprite : previousSprite;	
}
kitchenwareState = KITCHENWARE_STATE.done_cooking;