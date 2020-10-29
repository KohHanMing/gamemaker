if (global.isPaused) {
	speed = 0;
} else {
	speed = 4;
	if (y >= room_height) {
		instance_destroy();
	}

	var isBelowPlacementLine = y > obj_placement_line.y;

	//Prevent bullet from going off screen
	if (bounceLimit >= 0) {
		if (x > room_width) {
			direction = 210;
			image_angle = 210;
			bounceLimit -= 1;
			if (isBelowPlacementLine) {
				instance_destroy();
			}
		} else if (x < 0) {
			direction = 330;
			image_angle = 330;
			bounceLimit -= 1;
			if (isBelowPlacementLine) {
				instance_destroy();
			}
		}
	} else {
		instance_destroy();
	}
}