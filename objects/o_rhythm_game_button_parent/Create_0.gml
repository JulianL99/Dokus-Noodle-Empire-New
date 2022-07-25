dissolveSprite = noone;

mainBarObject = o_rhythm_game_main_bar;
inputCatcherObject = o_rhythm_game_input_catcher;
controllerObject = o_cooking_game_controller;

if (!instance_exists(mainBarObject) || !instance_exists(inputCatcherObject)) {
	instance_destroy();
}

finalDist = point_distance(x, y, inputCatcherObject.x, inputCatcherObject.y);
numBeats = 4;

buttonSpeed = finalDist/(numBeats * stepsPerBeat);

inputCheckScript = noone;

selfDestruct = false;

wrongButtonPenalty = 1;
missedButtonPenalty = 2;