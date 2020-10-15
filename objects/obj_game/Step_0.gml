var gameScore = __dnd_score;

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

if (playerHealth > MAX_HEALTH) {
	playerHealth = MAX_HEALTH;
}

if (gameScore >= 500) {
	with (obj_win_store) {
		finalScore = gameScore;
	}
	room_goto(rm_win);
}

if (playerHealth <= 0) {
	with (obj_lose_store) {
		finalScore = gameScore;
	}
	room_goto(rm_lose);
}


// PROGRESSION
if (__dnd_score >= 200 && __dnd_score < 400) {
	with (obj_mosquito) {
		stage1 = false
		stage2 = true
	}
} else if (__dnd_score >= 400) {
	with (obj_mosquito) {
		stage2 = false
		stage3 = true
	}
}

