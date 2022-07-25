#region Hovering and Dragging

// Default behavior
// Float back to origin
if (x != placedOriginX) {
	var xDiff = placedOriginX - x;
	var xSign = sign(xDiff);
	x += abs(xDiff) < glideSpeed ? xDiff : glideSpeed * xSign;
}
if (y != placedOriginY) {
	var yDiff = placedOriginY - y;
	var ySign = sign(yDiff);
	y += abs(yDiff) < glideSpeed ? yDiff : glideSpeed * ySign;
}

if (global.gameState == GAME_STATE.normal) {
	
	// Handle hovering
	if (position_meeting(mouse_x, mouse_y, id) && (global.pickedUpItemId == noone)) {
		var outlineSprite = lookupMap[itemId].itemOutlineSprite;
		if (sprite_index != outlineSprite) {
			previousSprite = sprite_index;
		}
		sprite_index = outlineSprite != undefined && outlineSprite != noone ? outlineSprite : previousSprite;
		hovered = true;
	} else {
		sprite_index = previousSprite;
		hovered = false;
	}

	// Pick up item
	if (getMainPressedInput() && hovered && global.pickedUpItemId == noone) {
		global.pickedUpItemId = itemId;
		global.pickedUpObject = id;
		depth = PICKED_UP_ITEM_DEPTH;
	}
	// Drag item
	if (getItemDragInput() && global.pickedUpItemId == itemId) {
		x = mouse_x;
		y = mouse_y;
	}
}


if (y == placedOriginY && x == placedOriginX && depth != originalDepth) {
	depth = originalDepth;
}

#endregion
