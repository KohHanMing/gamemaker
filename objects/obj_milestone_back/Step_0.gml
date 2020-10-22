var stage = 1;

with (obj_stage_handler) {
	stage = currentStage;
}

if (stage == 1) {
	image_blend = COLOR_BLUE;
} else if (stage == 2) {
	image_blend = COLOR_GREEN;
} else if (stage == 3) {
	image_blend = COLOR_YELLOW;
} else if (stage == 4) {
	image_blend = COLOR_RED;
} else if (stage == 5) {
	image_alpha = 0;
} else {
	
}