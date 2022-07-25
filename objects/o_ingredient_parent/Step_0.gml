// Fade in
if (global.gameActive) {
	if (image_alpha != 1) {
		image_alpha += 0.01;
		if (image_alpha > 1) image_alpha = 1;
	}
	event_inherited();
	
}
