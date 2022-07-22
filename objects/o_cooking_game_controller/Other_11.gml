/// @description Increment to the next state

if (currentRecipeStep < array_length(recipeProgressArray)) {
	var newStatus;
	if (recipeProgressArray[currentRecipeStep].itemId == global.pickedUpItemId) {
		newStatus = RECIPE_STATUS.correct;
	} else {
		newStatus = RECIPE_STATUS.incorrect;
	}
	recipeProgressArray[currentRecipeStep].status = newStatus;
	currentRecipeStep++;	
}
if (currentRecipeStep >= array_length(recipeProgressArray)) {
	//game_end();
}