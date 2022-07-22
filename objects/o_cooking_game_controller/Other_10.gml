/// @description Set Game mode to Active
var halfHeight = screenHeightUnscaled / 2;
instance_create_layer(screenWidthUnscaled / 3,  halfHeight + halfHeight/2, INSTANCES_LAYER, o_finished_noodle_meal);

global.gameActive = true;