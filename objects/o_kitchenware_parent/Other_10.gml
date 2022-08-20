/// @description Item is dropped onto kitchenware
if (global.pickedUpItemId != noone && kitchenwareState == KITCHENWARE_STATE.waiting_for_ingredient) {
	var processingOptions = global.ingredientLookup[global.pickedUpItemId].processingOptions;
	var processingOption = processingOptionsContainsKitchenware(itemId, processingOptions);

	if (processingOption != noone) {
		cookingItemId = processingOption.processedIngredientId;
		
		cookingItemInfo = global.ingredientLookup[cookingItemId];
		totalCookingTime = random_range(400, 500);
		// Create incredient
		cookingItemObject = instance_create_depth(x, y, depth - 1, cookingItemInfo.itemObjectIndex);
		with (cookingItemObject) {
			inKitchenware = true;
		}

		destroyPickedUpItem();
		if (instance_exists(pointingArrowObject)) {
			instance_destroy(pointingArrowObject)
		}
		
		// Start cooking state
		event_user(5);
	}
}