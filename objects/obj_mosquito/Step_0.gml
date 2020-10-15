var isInAttackRange = x > 200 && x < 700 ;

var yIsRanged = y < 400;
var yIsMelee =  y > 400;
isMeleeRange = yIsMelee;

// make divisible by 4
var dartDist = 100;



//Prevent mosquito from going off screen
if (x > room_width) {
	hspeed = -3
} else if (x < 0) {
	hspeed = 3
}


//Prevent mosquito from going off screen
if (y < 100) {
	y = 100
}

if (isDelayed) {
	//When hit
	if (delayTimer > 0) {
		delayTimer -= 1;
	} else {
		isDelayed = false;
		canAttack = true;
		speed = 3;
	}
} else if (isRewind) {
	//When rewind
	if (rewindTimer > 0) {
		rewindTimer -= 1;
		y -= 1;
	} else {
		isRewind = false;
		canAttack = true;
		speed = 3;
	}
}

//attack phase, movement phase double the values
if (yIsRanged) {
	image_blend = c_white;
	meleeTimer = 300;
	//check if mosquito is resetting from a melee attack
	if (hasExecutedMelee && y < ystart) {
		canAttack = true;
		hasExecutedMelee = false;
		hasResetMelee = true;
		hspeed = 3;
		vspeed = 0.4;
		meleeTimer = 300;
		with (obj_player_hitbox) {
			hasRecordedMeleeDamage = false;	
		}
	} else if (canAttack) {
		//alternates between basic and bouncing attack
		if (attackTimer > 0) {
			attackTimer -= 1;
		} else if (isInAttackRange) {
			if (numBasicAttack > 0) {
				// Shoot basic attack
				instance_create_layer(x,y,"Instances", obj_mosquito_attack_basic);
				numBasicAttack -= 1;
			} else {
				// Otherwise shoot bouncing
				var bouncingAttack = instance_create_layer(x,y,"Instances", obj_mosquito_attack_bouncing);
				bouncingAttack.direction = bouncingAttackAngle;
				bouncingAttack.image_angle = bouncingAttackAngle;
				numBasicAttack = 1;
				if (isFirstBouncingAngle) {
					bouncingAttackAngle = 270;
					isFirstBouncingAngle = false;
					isSecondBouncingAngle = true;
				} else if (isSecondBouncingAngle) {
					bouncingAttackAngle = 210;
					isSecondBouncingAngle = false;
				} else {
					bouncingAttackAngle = 330;
					isFirstBouncingAngle = true;
				}
			}
			attackTimer = irandom_range(90, 150);
			randomize();
		} else {
			attackTimer = irandom_range(90, 150);
			randomize();
		}
	}
} else if (yIsMelee) {
	if (meleeTimer > 0) {
		//melee being charged
		meleeTimer -= 1;
		vspeed = 0.2;
		//Mosquito pulse red color
		if (pulseTimer > 30) {
			image_blend = c_red;
			pulseTimer -= 1;
		} else if (pulseTimer > 0 && pulseTimer <= 30) {
			image_blend = c_white;
			pulseTimer -= 1;
		} else {
			pulseTimer = 60;
		}
	} else if (!hasExecutedMelee && (point_distance(x, y, 450, 724) > 10)) {
		//execute melee	
		move_towards_point(450, 724, 10)
	} else {
		
	}
}

// if melee has not been reset, keep moving to reset point
if (!hasResetMelee) {
		move_towards_point(450, ystart, 3);
}

// identify possible directions for dart and select one
if (yIsRanged) {
	if (dartTimer > 0) {
		dartTimer  -= 1
	} else if (dartDirection == "") { 
		hspeed = 0;
		vspeed = 0;
		if (x - dartDist >= 200 && x + dartDist <= 700) { 
			// if both darts possible
			var chooseDirection = irandom(1)
			if (chooseDirection == 0) {
				//sprite_index = spr_mosquito_left;
				dartDestination = x - dartDist;
				dartDirection = "left";
			} else {
				//sprite_index = spr_mosquito_right;
				dartDestination = x + dartDist;
				dartDirection = "right";
			}		
		} else if (x - dartDist < 200) {
			// right dart only
			//sprite_index = spr_mosquito_right;
			dartDestination = x + dartDist;
			dartDirection = "right";
		} else {
			//left dart only
			//sprite_index = spr_mosquito_left;
			dartDestination = x - dartDist;
			dartDirection = "left";
		}
	} 		
}


// tick down timer for pre-dart visual cue and execute dart
if (dartDirection != "") {
	if (dartChargeTimer > 0) {
	dartChargeTimer -= 1;
	} else if (dartDirection == "left" && dartSteps_remaining > 0) {
		x -= dartDist/dartSteps;
		dartSteps_remaining -= 1;
	} else if (dartDirection == "right" && dartSteps_remaining > 0) {
		x += dartDist/dartSteps;
		dartSteps_remaining -= 1;
	} else {
		dartChargeTimer = 60;
		dartTimer = irandom_range(300, 360);
		dartSteps_remaining = dartSteps
		if (dartDirection == "left") {
			hspeed = -3;
		} else {
			hspeed = 3;
		}
		vspeed = 0.4
		dartDirection = ""
	}
}

//for testing
if (y >= 800) {
	x = xstart;
	y = 350;
}

