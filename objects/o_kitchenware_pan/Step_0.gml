event_inherited();

if (kitchenwareState == KITCHENWARE_STATE.rhythm_game) {
	if (instance_exists(rhythmGameMainBarObject)) {
		var timerPercentage;
		with (rhythmGameMainBarObject) {
			timerPercentage = sequenceIndex / array_length(buttonSequenceArray);
		}
		if (timerPercentage <= 0.5) {
			if (smokeParticleObject != basicSmokeObject) {
				// Destroy current smoke
				with (smokeParticleObject) {
					event_user(0);
				}
				smokeParticleObject = basicSmokeObject;
				event_user(15);	
			}
		} else if (smokeParticleObject != mediumSmokeObject) {
			// Destroy current smoke
			with (smokeParticleObject) {
				event_user(0);
			}
			smokeParticleObject = mediumSmokeObject;
			event_user(15);
		}
	}
	
} else if (kitchenwareState == KITCHENWARE_STATE.done_cooking) {
	if (smokeParticleObject != intenseSmokeObject) {
		// Destroy current smoke
		with (smokeParticleObject) {
			event_user(0);
		}
		smokeParticleObject = intenseSmokeObject;
		event_user(15);
	}
} else if (kitchenwareState == KITCHENWARE_STATE.waiting_for_ingredient) {
	if (smokeParticleObject != noone) {
		// Destroy current smoke
		with (smokeParticleObject) {
			event_user(0);
		}
		smokeParticleObject = noone;
	}
}