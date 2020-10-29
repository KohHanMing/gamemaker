if (global.isPaused) {
	
} else {
	timer -= 1;
	if (timer == 0) {
		instance_destroy();	
	}
}