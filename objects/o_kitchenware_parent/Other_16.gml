/// @description Done Cooking State initiated
var cookedSprite = cookingItemInfo.ingredientCookedSprite;
with (cookingItemObject) {
	sprite_index = cookedSprite != undefined && cookedSprite != noone ? cookedSprite : previousSprite;
	previousSprite = sprite_index;
}

global.gameState = GAME_STATE.normal;
kitchenwareState = KITCHENWARE_STATE.done_cooking;