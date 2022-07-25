// Kitchenware state machine

switch (kitchenwareState) {
	case KITCHENWARE_STATE.waiting_for_ingredient:
		// Do nothing
		break;
	case KITCHENWARE_STATE.cooking:
		// Increment timer, check for random rhythm game occurrence
		/*cookingTime++;
		
		// Check for rhythm game occurrence
		var chance = irandom_range(0, 100);
		if (chance == 0) {
			event_user(5);
		}
		
		if (cookingTime >= totalCookingTime) {
			cookingTime = totalCookingTime;

			event_user(6);
		}*/
		break;
	case KITCHENWARE_STATE.rhythm_game:
		// Not sure yet
		break;
	case KITCHENWARE_STATE.done_cooking:
		// Await pickup
		break;
}