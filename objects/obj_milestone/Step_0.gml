var stageMaxScore = 0;
var stage = 1;
var amtToScale = 0;

with (obj_stage_handler) {
	stageMaxScore = currentMaxPoints;	
	stage = currentStage;
}

if (stage == 1) {
	image_blend = COLOR_PURPLE;
} else if (stage == 2) {
	image_blend = COLOR_BLUE;
} else if (stage == 3) {
	image_blend = COLOR_GREEN;
} else if (stage == 4) {
	image_blend = COLOR_YELLOW;
} else if (stage == 5) {
	image_blend = COLOR_RED;
} else {
	
}

with (obj_game) {
	amtToScale = __dnd_score / stageMaxScore;
}

if (amtToScale != 1) {
	image_xscale = 1 - amtToScale;
}