if (timer <= 0) {
	instance_destroy();
} else {
	image_xscale -= 0.0055;
	timer -= 1;
}