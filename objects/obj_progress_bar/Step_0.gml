if (timer <= 0) {
	instance_destroy();
} else {
	timer -= 1
	col_r += 2
	col_g += 2
	col_b -= 2
	image_blend = make_color_rgb(col_r, col_g, col_b)
	image_xscale += 0.05
}