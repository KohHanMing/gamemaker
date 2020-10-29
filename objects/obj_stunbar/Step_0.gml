if (global.isPaused) {
	
} else {
	if (uptime > 0) {
		uptime -= 1;
	} else if (image_alpha > 0) {
		image_alpha -= 0.05;
	} else {
		instance_destroy()
	}

	x = obj_mosquito.x;
	y = obj_mosquito.y - 50;
}