if (global.isPaused) {
	
} else {
	image_xscale -= difference/duration
	image_yscale -= difference/duration

	if (image_xscale < limit) {
		instance_destroy()
	}
}
