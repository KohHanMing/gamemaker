with(obj_game) {
	playerHealth -= 5;
	col_g = 0;
	col_b = 0;
	heartTimer = 30;
	isDamage = true;
}

with(other) {
	instance_destroy();
	repeat(10) {
		instance_create_layer(x, y, "Instances", obj_debris);
	}
}