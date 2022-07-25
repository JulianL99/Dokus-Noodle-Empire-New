/// @description Rhythm Game initiated

/*'
with (o_kitchenware_parent) {
	if (kitchenwareState == KITCHENWARE_STATE.cooking) {
		kitchenwareState = KITCHENWARE_STATE.rhythm_game;
	}
}*/

with (instance_create_depth(rhythmBarX, rhythmBarY, UI_DEPTH, o_rhythm_game_main_bar)) {
	kitchenwareObjectId = other.id;
	itemId = other.cookingItemId;
	event_user(0);
}
global.gameState = GAME_STATE.rhythm_game;
kitchenwareState = KITCHENWARE_STATE.rhythm_game;