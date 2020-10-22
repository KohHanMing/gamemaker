//================== Not available in stage 1 ============
var stage = 1;
with (obj_stage_handler) {
	stage = currentStage;
}
if (stage == 1) {
	image_alpha = 0;
} else {
	if (rechargeTimer <= 0 && !hasDrawnRewind) {
		// Draw the rewind ready prompt
		with(obj_game) {
			drawRewindAlpha = 1;
			drawRewindTimer = 60;
		}
		hasDrawnRewind = true;
	} else if (rechargeTimer <= 0) {
		// if the rewind has been pressed
		if (hasPressedRewind && rewindTimer > 0) {
			image_blend = make_color_rgb(255, 255, 255);
			image_yscale -= 0.0033;
			rewindTimer -= 1;
		} else if (!hasPressedRewind) {
		
		} else {
			//Reset after pressing
			image_yscale = 0.01;
			rechargeTimer = 3600;
			hasPressedRewind = false;
			hasDrawnRewind = false;
			with (obj_game) {
				col_r = 255;
				heart_col = c_white;
			}
		}
	} else {
		rechargeTimer -= 1
		col_r -= 2

		image_blend = make_color_rgb(col_r, 255, 255)
		image_yscale += 0.000275
	}
}