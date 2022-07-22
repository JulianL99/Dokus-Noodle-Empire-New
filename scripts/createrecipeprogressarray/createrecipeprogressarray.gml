// Create a recipe progress array

function createRecipeProgressArray(_recipeId){
	var _recipeLookupStruct = global.recipeLookup[_recipeId];
	
	var _ingredients = _recipeLookupStruct.ingredients;
	var _numIngredients = array_length(_ingredients);
	
	var _recipeProgressArray = array_create(_numIngredients);
	
	for (var i = 0; i < _numIngredients; i++) {
		var _ingredient = _ingredients[i];
		
		_recipeProgressArray[i] = {
			status: RECIPE_STATUS.incomplete,
			itemId: _ingredient
		};
	}
	
	return _recipeProgressArray;
}