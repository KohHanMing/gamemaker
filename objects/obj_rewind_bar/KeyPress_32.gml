if (global.isPaused) {
	
} else {

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
				image_yscale = 1;
				hasPressedRewind = true;
				rewindTimer = 300;

				with (obj_mosquito) {
					isRewind = true;
					rewindTimer = 300;
					canAttack = false;
					speed = 0.5;
					dartTimer = irandom_range(300, 360);
				}
	
				with (obj_game) {
					playerHealth += 20;
					col_r = 0;
					heartTimer = 30;
					isHeal = true;
				}
			
				instance_create_layer(0, 0, "bg", obj_rewind_bg)

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
}