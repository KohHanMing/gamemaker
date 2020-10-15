speed = 0.5;
isDelayed = true;

canAttack = false;
if (isMeleeRange) {
	y -= 15;
	delayTimer = 5;
} else {
	y -= 10
	delayTimer = 15;
}
with (other) {
	instance_destroy();
	repeat(10) {
		instance_create_layer(x, y, "Instances", obj_debris);
	}
}

with (obj_game) {
	__dnd_score += 15;	
}