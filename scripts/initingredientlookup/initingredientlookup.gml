///@description initialize the master Ingredient Lookup structure

function initIngredientLookup(){
	function Ingredient(_ingredientId, _ingredientSprite, _ingredientOutlineSprite, _ingredientCookedSprite, _ingredientMealSprite,
						_ingredientRecipeSprite, _processingOptions, _plateReady, _isStockpile, _itemObjectIndex) constructor {
		itemId = _ingredientId;
		itemSprite = _ingredientSprite;
		itemOutlineSprite = _ingredientOutlineSprite;
		ingredientCookedSprite = _ingredientCookedSprite; // If cookable
		ingredientMealSprite = _ingredientMealSprite; // If plateReady
		ingredientRecipeSprite = _ingredientRecipeSprite; // If plateReady
		processingOptions = _processingOptions;
		plateReady = _plateReady;
		isStockpile = _isStockpile;
		itemObjectIndex = _itemObjectIndex;
	}
	
	function ProcessingOption(_kitchenwareId, _processedIngredientId) constructor {
		kitchenwareId = _kitchenwareId;
		processedIngredientId = _processedIngredientId;
	}
	
	var lookup = array_create(INGREDIENT.total);
	#region Stockpiles
	lookup[INGREDIENT.egg] = new Ingredient(INGREDIENT.egg, s_ingredient_eggs_whole, s_ingredient_eggs_whole_outline, noone, noone, noone, [
		new ProcessingOption(KITCHENWARE.pan, INGREDIENT.fried_egg),
		new ProcessingOption(KITCHENWARE.pot, INGREDIENT.boiled_egg)
	], false, true, o_ingredient_egg);

	lookup[INGREDIENT.chicken] = new Ingredient(INGREDIENT.chicken, s_ingredient_chicken_breast, s_ingredient_chicken_breast_outline, noone, noone, noone, [
		new ProcessingOption(KITCHENWARE.pan, INGREDIENT.cooked_chicken)
	], false, true, o_ingredient_chicken);

	lookup[INGREDIENT.green_onion] = new Ingredient(INGREDIENT.green_onion, s_ingredient_green_onion, s_ingredient_green_onion_outline,
		noone, noone, noone, [], false, true, o_ingredient_green_onion);

	// BELL PEPPER changed for testing
	lookup[INGREDIENT.bell_pepper_green] = new Ingredient(INGREDIENT.bell_pepper_green, s_ingredient_bell_pepper_green,
		s_ingredient_bell_pepper_green_outline, noone, s_meal_complete_green_peppers, s_ui_cooking_progress_box_bell_pepper_green, [], true, true, o_ingredient_bell_pepper_green);
	
	lookup[INGREDIENT.steak] = new Ingredient(INGREDIENT.steak, s_ingredient_steak_raw, s_ingredient_steak_raw_outline, noone, noone, noone, [
		new ProcessingOption(KITCHENWARE.pan, INGREDIENT.cooked_steak)
	], false, true, o_ingredient_steak);
	
	lookup[INGREDIENT.tofu] = new Ingredient(INGREDIENT.tofu, s_ingredient_tofu_block, s_ingredient_tofu_block_outline, noone,
		noone, noone, [new ProcessingOption(KITCHENWARE.pan, INGREDIENT.cooked_tofu)], false, true, o_ingredient_tofu);
	
	lookup[INGREDIENT.tomato] = new Ingredient(INGREDIENT.tomato, s_ingredient_tomato_whole, s_ingredient_tomato_whole_outline, noone, noone, noone, [], false,
		true, o_ingredient_tomato);
	
	lookup[INGREDIENT.lime] = new Ingredient(INGREDIENT.lime, s_ingredient_citrus_lime, s_ingredient_citrus_lime_outline, noone, noone, noone, [], false,
		true, o_ingredient_lime);
	
	lookup[INGREDIENT.basil] = new Ingredient(INGREDIENT.basil, s_ingredient_leafy_basil, s_ingredient_leafy_basil_outline, noone, noone, noone, [], false, 
		true, o_ingredient_basil);
	#endregion
	
	#region Plate-Ready Ingredients
	lookup[INGREDIENT.fried_egg] = new Ingredient(INGREDIENT.fried_egg, s_cooking_progress_food_fried_egg_static, s_cooking_progress_food_fried_egg_static_OUTLINE,
		s_cooking_progress_food_fried_egg_anim_red, s_meal_complete_fried_egg, s_ui_cooking_progress_box_fried_egg, [], true, false, o_ingredient_fried_egg);
	
	lookup[INGREDIENT.boiled_egg] = new Ingredient(INGREDIENT.boiled_egg, s_meal_complete_hardboiled_egg, noone, noone,
		s_meal_complete_hardboiled_egg, s_ui_cooking_progress_box_red_x, [], true, false, o_ingredient_boiled_egg);
	
	lookup[INGREDIENT.cooked_chicken] = new Ingredient(INGREDIENT.cooked_chicken, s_cooking_progress_food_chicken_breast_static, s_cooking_progress_food_chicken_breast_static_OUTLINE,
		s_cooking_progress_food_chicken_breast_anim_red, s_meal_complete_chicken_pieces, s_ui_cooking_progress_box_cooked_chicken, [], true, false, o_ingredient_cooked_chicken);
	
	lookup[INGREDIENT.cooked_steak] = new Ingredient(INGREDIENT.cooked_steak, s_cooking_progress_food_steak_static, s_cooking_progress_food_steak_static_OUTLINE,
		s_cooking_progress_food_steak_anim_red, s_meal_complete_steak_slices, s_ui_cooking_progress_box_cooked_steak, [], true, false, o_ingredient_cooked_steak);
	
	lookup[INGREDIENT.cooked_tofu] = new Ingredient(INGREDIENT.cooked_tofu, s_cooking_progress_food_tofu_static, s_cooking_progress_food_tofu_static_OUTLINE, s_cooking_progress_food_tofu_anim_red, s_meal_complete_tofu,
		s_ui_cooking_progress_box_tofu, [], true, false, o_cooked_tofu);
	
	#endregion
	
	return lookup;
}