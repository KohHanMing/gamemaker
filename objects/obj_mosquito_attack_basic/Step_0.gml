if (global.isPaused) {
	speed = 0;
} else {
	speed = 4;
	if (y >= room_height) {
		instance_destroy();
	}
}