//================== Not available in stage 1 ============
var stage = 1;
with (obj_stage_handler) {
	stage = currentStage;
}
if (stage == 1) {
	
} else {
	// Rewind has to deplete before rewind can be pressed again
	if (hasPressedRewind) {

	} else {
		if (rechargeTimer <= 0) {
			image_xscale = 1;
			hasPressedRewind = true;
			rewindTimer = 300;

			with (obj_mosquito) {
				isRewind = true;
				rewindTimer = 300;
				speed = 0.5;
			}
	
			with (obj_game) {
				playerHealth += 20;
				col_r = 0;
				heartTimer = 30;
				isHeal = true;
			}

			repeat(100) {
				instance_create_layer(floor(random_range(50, 850)), floor(random_range(50, 850)), "Instances", obj_rewind_debris)	
			}
		} else {
			with (obj_game) {
				drawRewindNotReadyAlpha = 1;
			}
		}
	}
}