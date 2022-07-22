draw_sprite(backgroundSprite, 0, x, y);
draw_self();

for (var i = 0; i < array_length(finishedIngredients); i++) {
	var finishedIngredient = finishedIngredients[i];
	var ingredientId = finishedIngredient.itemId;
	var ingredientStruct = global.ingredientLookup[ingredientId];
	
	var thirdIndex = finishedIngredient.placementIndex //i % 6;
	
	var sixthWidth = sprite_width / 6;
	var sixthHeight = sprite_height / 6;
	
	var dx, dy;
	
	switch (thirdIndex) {
		case 0:
			dx = -sixthWidth;
			dy = -sixthHeight;
			break;
		case 1:
			dx = sixthWidth;
			dy = -sixthHeight;
			break;
		case 2:
			dx = 0;
			dy = sixthHeight;
			break;
		case 3:
			dx = 0;
			dy = -sixthHeight;
			break;
		case 4:
			dx = sixthWidth;
			dy = sixthHeight;
			break;
		case 5:
			dx = -sixthWidth;
			dy = sixthHeight;
			break;
	}
	draw_sprite_ext(ingredientStruct.ingredientMealSprite, 0, x + dx, y + dy, 1, 1, finishedIngredient.spriteRotation, c_white, 1);
}