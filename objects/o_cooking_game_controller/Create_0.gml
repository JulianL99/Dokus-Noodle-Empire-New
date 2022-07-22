enum RECIPE_STATUS {
	incomplete,
	correct,
	incorrect
}

enum KITCHENWARE_STATE {
	waiting_for_ingredient,
	cooking,
	done_cooking,
	rhythm_game
}

selectedRecipeLookupStruct = global.recipeLookup[RECIPE.basic_noodles];
recipeProgressArray = createRecipeProgressArray(RECIPE.basic_noodles);
currentRecipeStep = 0;

screenWidthUnscaled = window_get_width();
screenHeightUnscaled = window_get_height();

screenWidth = screenWidthUnscaled * viewXScale;
screenHeight = screenHeightUnscaled * viewYScale;

recipeBoxesStartX = screenWidth / 4;
recipeBoxesStartY = screenHeight / 10;

rhythmGameButtonObjects = [
	o_rhythm_game_button_blue,
	o_rhythm_game_button_green,
	o_rhythm_game_button_red,
	o_rhythm_game_button_yellow,
];

function SmokeParticleLookup(_basic, _medium, _intense) constructor {
	basic = _basic;
	medium = _medium;
	intense = _intense;
}

global.panSmokeParticleLookup = new SmokeParticleLookup(o_pan_smoke_particles_basic, 
	o_pan_smoke_particles_medium, o_pan_smoke_particles_intense);
