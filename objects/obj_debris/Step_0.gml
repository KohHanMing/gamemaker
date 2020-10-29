if (global.isPaused) {
	speed = 0;
} else {
	speed = 1;
	image_alpha -= 0.02;

	if (image_alpha <= 0) {
		instance_destroy();
	}
}