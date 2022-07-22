if (!instance_exists(followObject)) {
	if (!selfDestruct) {
		event_user(0);
	}
} else {
	x = followObject.x;
	y = followObject.y - followObject.sprite_height/2;
}

if (!selfDestruct && image_alpha != 1) {
	image_alpha += fadeSpeed;
	if (image_alpha > 1) {
		image_alpha = 1;
	}
}

if (selfDestruct && image_alpha > 0) {
	image_alpha -= fadeSpeed;
	if (image_alpha <= 0) {
		instance_destroy();
	}
}