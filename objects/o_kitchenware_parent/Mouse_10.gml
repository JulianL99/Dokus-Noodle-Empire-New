/// @description Create Pointing Arrow Object
if (global.pickedUpItemId != noone && cookingItemId == noone) {
	var processingOptions = global.ingredientLookup[global.pickedUpItemId].processingOptions;
	var processingOption = processingOptionsContainsKitchenware(itemId, processingOptions);
	if (processingOption != noone) {
		instance_create_depth(x, y - sprite_height/2, UI_DEPTH - 1, pointingArrowObject);
	}
}

