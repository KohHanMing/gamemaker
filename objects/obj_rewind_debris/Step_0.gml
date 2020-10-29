if (global.isPaused) {
	speed = 0;
} else {
	speed = 1;
	image_alpha -= 0.02;
	timer -= 1;
	if (timer % 60 = 0) {
		image_alpha = 1;
		x = floor(random_range(50, 850))
		y = floor(random_range(50, 850))
	}

	if (timer == 0) {
		instance_destroy();	
	}
}