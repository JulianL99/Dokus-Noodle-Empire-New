// Init recipe lookup map

function initRecipeLookup(){
	
	function Recipe(_recipeId, _recipeName, _ingredients) constructor {
		recipeId = _recipeId;
		recipeName = _recipeName;
		ingredients = _ingredients;
	}
	
	var lookup = array_create(RECIPE.total);
	
	lookup[RECIPE.basic_noodles] = new Recipe(RECIPE.basic_noodles, "Basic Noodles", [
			INGREDIENT.bell_pepper_green, INGREDIENT.fried_egg, INGREDIENT.cooked_tofu, INGREDIENT.cooked_chicken
		]);
		
	return lookup;
}