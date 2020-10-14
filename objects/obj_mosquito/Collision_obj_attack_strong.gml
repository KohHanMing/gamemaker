speed = 0.5;
isDelayed = true;
delayTimer = 50;
canAttack = false;
y -= 30;

if (dartAttackInMotion) {		
	//reset dart parameters
	dartChargeTimer = dart_movement_delay;
	dartTimer = irandom_range(300, 360);
	dartSteps_remaining = dartSteps
	if (dartDirection == "left") {
		hspeed = default_hspeed * -1;
	} else {
		hspeed = default_hspeed;
	}
	vspeed = default_vspeed
	dartDirection = "";
	dartAttackChargeTimer = dart_attack_delay 
	dartAttackInMotion = false
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