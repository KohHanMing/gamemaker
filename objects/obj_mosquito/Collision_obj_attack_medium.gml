speed = 0.5;
isDelayed = true;
delayTimer = 45;
canAttack = false;
y -= 20;
with (other) {
	instance_destroy();
	repeat(10) {
		instance_create_layer(x, y, "Instances", obj_debris);
	}
}

with (obj_game) {
	__dnd_score += 15;	
}