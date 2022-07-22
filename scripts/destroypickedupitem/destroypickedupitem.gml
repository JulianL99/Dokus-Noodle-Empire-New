function destroyPickedUpItem(){
	var itemData = global.ingredientLookup[global.pickedUpItemId];
	
	if (itemData.isStockpile) {
		with (global.pickedUpObject) {
			instance_create_depth(placedOriginX, placedOriginY, originalDepth, object_index);
		}
	}
	
	with (o_kitchenware_parent) {
		if (cookingItemId == global.pickedUpItemId) {
			event_user(1);
		}
	}
	
	with (global.pickedUpObject) {
		instance_create_depth(x, y, depth-1, o_poof_effect);
		instance_destroy();
	}
	global.pickedUpObject = noone;
	global.pickedUpItemId = noone;
}