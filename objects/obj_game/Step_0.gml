var gameScore = __dnd_score;

with (obj_stage_handler) {
	var stage = currentStage;
}

//Show pause menu when paused
if (global.isPaused) {
	if point_in_rectangle(mouse_x, mouse_y, room_width/2 - resumeTextWidth/2, room_height/2 + 80 - resumeTextHeight/2, room_width/2 + resumeTextWidth/2, room_height/2 + 80 + resumeTextHeight/2)
	{
	    resumeTextSmallAlpha = 0;
		resumeTextLargeAlpha = 1;
		if (mouse_check_button_pressed(mb_left)) {
			global.isPaused = false;
			pauseAlpha = 0;
			pauseTextAlpha = 0;
			resumeTextSmallAlpha = 0;
			resumeTextLargeAlpha = 0;
			menuTextSmallAlpha = 0;
			menuTextLargeAlpha = 0;
			helpTextSmallAlpha = 0;
			helpTextLargeAlpha = 0;
			with (obj_mosquito) {
				hspeed = pauseHSpeed;
				vspeed = pauseVSpeed;
			}
		}
	} else {
		resumeTextSmallAlpha = 1;
		resumeTextLargeAlpha = 0;
	}
	
	if point_in_rectangle(mouse_x, mouse_y, room_width/2 - menuTextWidth/2, room_height/2 + 130 - menuTextHeight/2, room_width/2 + menuTextWidth/2, room_height/2 + 130 + menuTextHeight/2)
	{
	    menuTextSmallAlpha = 0;
		menuTextLargeAlpha = 1;
		if (mouse_check_button_pressed(mb_left)) {
			with (obj_stage_handler) {
				currentStage = 1
			}
			room_goto(rm_menu)
		}
	} else {
		menuTextSmallAlpha = 1;
		menuTextLargeAlpha = 0;
	}
	
	if point_in_rectangle(mouse_x, mouse_y, room_width/2 - helpTextWidth/2, room_height/2 + 180 - helpTextHeight/2, room_width/2 + helpTextWidth/2, room_height/2 + 180 + helpTextHeight/2)
	{
	    helpTextSmallAlpha = 0;
		helpTextLargeAlpha = 1;
		if (mouse_check_button_pressed(mb_left)) {
			if (stage == 1) {
				room_goto(rm_stage_1_instruction_1)
			} else if (stage == 2) {
				room_goto(rm_stage_2_instruction_1)
			} else if (stage == 3) {
				room_goto(rm_stage_3_instruction_1)
			} else if (stage == 4) {
				room_goto(rm_stage_4_instruction_1)
			} else if (stage == 5) {
				room_goto(rm_stage_5_instruction)
			}
		}
	} else {
		helpTextSmallAlpha = 1;
		helpTextLargeAlpha = 0;
	}
	
} else {
	helpTextSmallAlpha = 0;
	menuTextSmallAlpha = 0;
	if (drawActionsTimer > 0) {
		drawActionsTimer -= 1;
	} else if (drawActionsAlpha > 0) {
		drawActionsAlpha -= 0.05;
	} else {
		drawActionsTimer = 60;
	}

	if (drawRewindNotReadyTimer > 0) {
		drawRewindNotReadyTimer -= 1;
	} else if (drawRewindNotReadyAlpha > 0) {
		drawRewindNotReadyAlpha -= 0.05;
	} else {
		drawRewindNotReadyTimer = 60;
	}

	if (drawRewindTimer > 0) {
		drawRewindTimer -= 1;
	} else if (drawRewindAlpha > 0) {
		drawRewindAlpha -= 0.05;
	} else {
		drawRewindTimer = 60;
	}

	//Damage cue
	if (heartTimer > 0 && isDamage) {
		col_g += 8.5;
		col_b += 8.5;
		heartTimer -= 1;
		heart_col = make_color_rgb(col_r, col_g, col_b);
	} else {
		isDamage = false;
	}

	//Heal cue
	if (heartTimer > 0 && isHeal) {
		col_r += 8.5;
		heartTimer -= 1;
		heart_col = make_color_rgb(col_r, col_g, col_b);
	} else {
		isHeal = false;
	}

	//Low Health blink
	if (!isDamage && !isHeal) {
		if (playerHealth <= 20) {
			if (heartPulse > 120) {
				heartPulse -= 1;
				heart_col = make_color_rgb(255, 0, 0);
			} else if (heartPulse > 0 && heartPulse <= 120) {
				heartPulse -= 1;
				heart_col = make_color_rgb(255, 255, 255);
			} else {
				heartPulse = HEART_PULSE_VALUE;	
			}
		} else {
			heart_col = make_color_rgb(255, 255, 255);	
			heartPulse = HEART_PULSE_VALUE;
		}
	} else {
		heartPulse = HEART_PULSE_VALUE;
	}

	//Action colors
	if (playerActions <= 0) {
		action_col = make_color_rgb(255, 0, 0);
	} else if (playerActions <= 2) {
		action_col = make_color_rgb(255, 120, 0);
	} else {
		action_col = make_color_rgb(255, 255, 255);
	}

	if (playerHealth > MAX_HEALTH) {
		playerHealth = MAX_HEALTH;
	}

	var maxScore = 0;
	var stage = 1;

	with (obj_stage_handler) {
		maxScore = currentMaxPoints;
		stage = currentStage;
	}

	if (gameScore >= maxScore) {
		with (obj_stage_handler) {
			currentStage += 1
		} 
		if (stage == 1) {
			room_goto(rm_stage_complete_1);
		} else if (stage == 2) {
			room_goto(rm_stage_complete_2);
		} else if (stage == 3) {
			room_goto(rm_stage_complete_3);
		} else if (stage == 4) {
			room_goto(rm_stage_complete_4);
		} else if (stage == 5) {
			with (obj_win_store) {
				finalScore = gameScore;
			}
			room_goto(rm_win);
		} else {
				
		}
	}

	if (playerHealth <= 0) {
		with (obj_lose_store) {
			finalScore = gameScore;
		}
		room_goto(rm_lose);
	}
}