// Kitchenware state machine

switch (kitchenwareState) {
	case KITCHENWARE_STATE.waiting_for_ingredient:
		// Do nothing
		break;
	case KITCHENWARE_STATE.cooking:
		// Increment timer, check for random rhythm game occurrence
		cookingTime++;
		
		if (cookingTime >= totalCookingTime) {
			cookingTime = totalCookingTime;
			var cookedSprite = cookingItemInfo.ingredientCookedSprite;
			with (cookingItemObject) {
				previousSprite = cookedSprite != undefined && cookedSprite != noone ? cookedSprite : previousSprite;	
			}
			event_user(6);
		}
		break;
	case KITCHENWARE_STATE.rhythm_game:
		// Not sure yet
		break;
	case KITCHENWARE_STATE.done_cooking:
		// Await pickup
		break;
}