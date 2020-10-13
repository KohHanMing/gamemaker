var amtToScale = 0;

with (obj_game) {
	amtToScale = __dnd_score / 500;
}

if (amtToScale != 0) {
	image_xscale = amtToScale;
}