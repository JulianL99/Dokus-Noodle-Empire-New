if (selectedRecipeLookupStruct != noone) {
	
	#region Draw Recipe Interface
	var cur_color = draw_get_color();

	draw_set_color(c_white);
	draw_set_font(test_font);
	draw_set_alpha(1);

	var recipeProgress = recipeProgressArray;
	var dx = recipeBoxesStartX;
	var dy = recipeBoxesStartY;
	var buffer = 4;
	
	for (var i = 0; i < array_length(recipeProgress); i++) {
		var curProgress = recipeProgress[i];
		var ingredientStruct = global.ingredientLookup[curProgress.itemId];
		
		var ingredientSprite = ingredientStruct.ingredientRecipeSprite;
		var statusSprite = getSpriteForRecipeStatus(curProgress.status);
		
		
		var horizOffset = sprite_get_width(statusSprite) * viewXScale + buffer;
		
		draw_sprite_ext(statusSprite, 0, dx, dy, viewXScale, viewYScale, 0, c_white, 1);
		draw_sprite_ext(ingredientSprite, 0, dx + horizOffset, dy, viewXScale, viewYScale, 0, c_white, 1);
		
		dy += sprite_get_height(ingredientSprite) * viewYScale + buffer;
	}

	draw_set_color(cur_color);
	#endregion
}
