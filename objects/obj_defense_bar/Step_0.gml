if (timer < 0) {
	instance_destroy();
	with (obj_game) {
	playerActions += 1;
	}
} else {
	timer -= 1;
}