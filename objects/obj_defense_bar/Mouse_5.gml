if (global.isPaused) {
	
} else {
	instance_destroy();
	with (obj_game) {
		playerActions += 1;
	}

	with (durationBar) {
		instance_destroy();
	}
}