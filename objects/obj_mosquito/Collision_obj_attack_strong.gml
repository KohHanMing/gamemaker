speed = 0.5;
isDelayed = true;

canAttack = false;
if (isMeleeRange) {
	y -= 45;
	delayTimer = 15;
} else {
	y -= 30;
	delayTimer = 30;
}

//stunbar and attack cancel for dart atk
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
	
	// increase stunbar
	stunLevel += 1
	if (stunLevel < stunSteps) {	
		stunbar = instance_create_layer(x, y-50, "Instances", obj_stunbar)
		stunbar.image_index = stunLevel
	} else if (stunLevel == stunSteps) {
		hspeed = 0
		vspeed = 0
		stunbar = instance_create_layer(x, y-50, "Instances", obj_stunbar)
		stunbar.image_index = stunLevel
		instance_create_layer(x, y, "Instances", obj_swatter)
		stunLevel = 0
		isStunned = true
	} else {
		stunLevel = 0
	}
}

with (other) {
	instance_destroy();
	repeat(10) {
		instance_create_layer(x, y, "Instances", obj_debris);
	}
}

with (obj_game) {
	__dnd_score += 15 ;	
}
