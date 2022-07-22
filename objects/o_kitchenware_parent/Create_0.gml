itemId = noone;
cookingItemId = noone;
cookingItemObject = noone;

pointingArrowObject = o_pointing_arrow;

cookingTime = 0;
totalCookingTime = 0;
kitchenwareState = KITCHENWARE_STATE.waiting_for_ingredient;

timerSprite = s_ui_timer;
totalTimeSpriteFrames = sprite_get_number(timerSprite);

// Default usesTimer = true
usesTimer = true;
timerY = 0;