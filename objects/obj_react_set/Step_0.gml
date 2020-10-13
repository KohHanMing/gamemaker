if (timer <= 120 && timer > 60) {
	col_r += 2
	col_g += 2
	image_blend = make_color_rgb(col_r, col_g, col_b)
	timer -= 1
	image_xscale += 0.02
	image_yscale += 0.02 
} else if (timer <= 60 && timer > 0) {
	image_blend = make_color_rgb(255, 255, 255)
	timer -= 1
	image_xscale = 3
	image_yscale = 3
} else if (timer <= 0) {
	image_alpha = image_alpha - 0.01;

	if (image_alpha <= 0) {
		instance_destroy();
	}
} else {
	timer -= 1
}