var stageMaxScore = 0;
var amtToScale = 0;

with (obj_stage_handler) {
	stageMaxScore = currentMaxPoints;	
}

with (obj_game) {
	amtToScale = __dnd_score / stageMaxScore;
}

if (amtToScale != 1) {
	image_xscale = 1 - amtToScale;
}