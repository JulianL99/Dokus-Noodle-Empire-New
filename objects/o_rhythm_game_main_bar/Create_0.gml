/// @description Adjust position

x -= sprite_width/1.5;
y += sprite_height*1.5;

kitchenwareObjectId = noone;
itemId = noone;

/* RANDOMLY generate sequences

blueButton = o_rhythm_game_button_blue;
greenButton = o_rhythm_game_button_green;
redButton = o_rhythm_game_button_red;
yellowButton = o_rhythm_game_button_yellow;

buttonOptions = [
	blueButton,
	greenButton,
	redButton,
	yellowButton
]

numButtonOptions = array_length(buttonOptions);

buttonSequenceNumber = irandom_range(6, 10);
buttonSequenceArray = array_create(buttonSequenceNumber);

for (var i = 0; i < buttonSequenceNumber; i++) {
	if (irandom_range(1,3) == 1) {
		buttonSequenceArray[i] = noone;
	} else {
		var randomButton = buttonOptions[irandom_range(0, numButtonOptions-1)];
		buttonSequenceArray[i] = randomButton;
	}
}
*/


buttonCreateX = x + sprite_width;

inputCatcherObject = o_rhythm_game_input_catcher;
inputCatcherSprite = s_ui_rhythm_game_input_catcher_medium_static;
inputCatcherCreateX = x + 36;
buttonSequenceArray = [];

instance_create_depth(inputCatcherCreateX, y, depth-1, inputCatcherObject);

sequenceIndex = 0;