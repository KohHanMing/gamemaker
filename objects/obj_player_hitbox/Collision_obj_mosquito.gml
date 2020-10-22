if (!hasRecordedMeleeDamage) {
	with(obj_game) {
		isDamage = true;
		playerHealth -= 20;
		col_g = 0;
		col_b = 0;
		heartTimer = 30;
	}
 hasRecordedMeleeDamage = true; //reset by obj_mosquito
}

with(obj_mosquito) {
	hasExecutedMelee = true;
	canAttack = false;
	hasResetMelee = false;
	mosquitoIsDrill = false
	mosquitoSpinTimer = mosquitoSpinBuildupDuration
	sprite_index = mosquito_normal
	hspeed = default_hspeed
	vspeed = default_vspeed
}