if (global.isPaused) {
	
} else {
	if (timer > 20) {
		timer -= 1;
		image_alpha += 0.0175;
	} else if (timer > 0 && timer <= 20) {
		image_alpha = 1;
		timer -= 1;
	} else {
		instance_destroy();
	}
}