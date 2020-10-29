if (global.isPaused) {
	
} else {
	//================== Only available from stage 4 onwards ============
	var stage = 1;
	with (obj_stage_handler) {
		stage = currentStage;
	}
	if (stage == 4 || stage == 5) {
		if (sprite_index = spr_defense_bar) {
			rotationAngle += 2.5;
			direction = rotationAngle;
			image_angle = rotationAngle;
		} else {
	
		}
	} else {
	
	}
}