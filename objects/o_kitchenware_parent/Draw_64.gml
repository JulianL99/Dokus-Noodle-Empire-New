/// @description Draw the timer if in cooking state or rhythm game

if (usesTimer && kitchenwareState == KITCHENWARE_STATE.cooking ||
	kitchenwareState == KITCHENWARE_STATE.rhythm_game) {
	
	var dx = x * viewXScale;
	var dy = timerY;
	
	var subImg = ceil((cookingTime/totalCookingTime) * totalTimeSpriteFrames) - 1;
	
	draw_sprite_ext(timerSprite, subImg, dx, dy, viewXScale, viewYScale, 0, c_white, 1);
}
	
	
	
	
	if (cookingItemObject != noone) {
	var asdf = noone;
	with (cookingItemObject) {
		asdf = previousSprite;
	}
	draw_text(10,10,string(asdf));
	}