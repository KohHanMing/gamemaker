speed = 0.5;
isDelayed = true;

canAttack = false;
if (isMeleeRange) {
	y -= 30;
	delayTimer = 10;
} else {
	y -= 20
	delayTimer = 20;
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