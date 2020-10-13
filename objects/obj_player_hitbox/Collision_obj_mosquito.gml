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
	hspeed = 0;
	vspeed = -3;
	hasExecutedMelee = true;
	canAttack = false;
}