room_goto(rm_main);

with (obj_stage_handler) {
	if (currentStage == 1) {
		currentMaxPoints = 400;
	} else if (currentStage == 2) {
		currentMaxPoints = 600
	} else if (currentStage == 3) {
		currentMaxPoints = 800
	} else if (currentStage == 4) {
		currentMaxPoints = 1000
	}
	currentStage += 1
}
