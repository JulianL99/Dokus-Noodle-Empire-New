///@description Item is dropped on meal

var recipeProgress = o_cooking_game_controller.recipeProgressArray;
var currentStep = o_cooking_game_controller.currentRecipeStep;
	
if //(currentStep < array_length(recipeProgress) && recipeProgress[currentStep].itemId == global.pickedUpItemId && 
	(global.ingredientLookup[global.pickedUpItemId].plateReady) {
	
	if (global.pickedUpObject.inKitchenware) {
		with (o_kitchenware_parent) {
			if (cookingItemId == global.pickedUpItemId && kitchenwareState != KITCHENWARE_STATE.done_cooking) {
				exit;
			}
		}
	}
	
	var indx = irandom_range(0, array_length(spriteDrawIndices)-1);
	var spriteDrawIndex = spriteDrawIndices[indx];
	array_delete(spriteDrawIndices, indx, 1);
	if (array_length(spriteDrawIndices) == 0) {
		event_user(1);
	}
		
	array_push(finishedIngredients, new FinishedIngredient(global.pickedUpItemId, 10,
				random_range(0, 360), spriteDrawIndex));
		
	with (o_cooking_game_controller) {
		event_user(1);
	}
	
	destroyPickedUpItem();
}