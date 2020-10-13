var isInAttackRange = x > 200 && x < 700 ;

var yIsRanged = y < 400;
var yIsMelee =  y > 400;


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
	meleeTimer = 600;
	//check if mosquito is resetting from a melee attack
	if (hasExecutedMelee && y < ystart) {
		canAttack = true;
		hasExecutedMelee = false;
		hspeed = 3;
		vspeed = 0.4;
		meleeTimer = 600;
		with (obj_player_hitbox) {
			hasRecordedMeleeDamage = false;	
		}
	} else if (canAttack) {
		if (attackTimer > 0) {
			attackTimer -= 1;
		} else if (isInAttackRange) {
			instance_create_layer(x,y,"Instances", obj_mosquito_attack);
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

//for testing
if (y >= 800) {
	x = xstart;
	y = 350;
}

