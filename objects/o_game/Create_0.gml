/// @description Initialize game variables, enums, and data structures
 randomise();
// Controller Setup
var totalGamepads = gamepad_get_device_count();
global.gamepadConnected = totalGamepads > 0;
for (var i = 0; i < totalGamepads; i++) {
	gamepad_set_axis_deadzone(i, 0.1);
}

// Set up GUI Scale
globalvar viewXScale, viewYScale;
viewXScale = display_get_width() / 480;
viewYScale = display_get_height() / 270;

// Init Custom Cursor
window_set_cursor(cr_none);
instance_create_depth(mouse_x, mouse_y, MOUSE_DEPTH, o_cursor);


// RECIPES enum
enum RECIPE {
	basic_noodles    = 0,
	total
}

// INGREDIENTS enum
enum INGREDIENT {
	noodles             = 0,
	steak               = 1,
	chicken             = 2,
	tofu                = 3,
	egg                 = 4,
	tomato              = 5,
	bell_pepper_green   = 6,
	green_onion         = 7,
	lime                = 8,
	basil               = 9,
	boiled_egg          = 10,
	fried_egg           = 11,
	cooked_steak        = 12,
	cooked_chicken      = 13,
	cooked_tofu         = 14,
	total
}

// KITCHENWARE enum
enum KITCHENWARE {
	pot    = 0,
	pan    = 1,
	total
}

enum ITEM_ORIGIN {
	stockpile,
	kitchenware
}

global.recipeLookup = initRecipeLookup();
global.ingredientLookup = initIngredientLookup();


enum GAME_STATE {
	paused,
	normal,
	rhythm_game
}

global.gameState = GAME_STATE.normal;


room_goto(main_room);