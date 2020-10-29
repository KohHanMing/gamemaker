if (global.isPaused) {
	speed = 0;
} else {
	speed = 8;
	if (y < 0) {
		instance_destroy();
	}
}