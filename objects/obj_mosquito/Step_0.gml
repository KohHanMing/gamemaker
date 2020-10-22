var isInAttackRange = x > 200 && x < 700 ;

var yIsRanged = y < 400;
var yIsMelee =  y > 400;
isMeleeRange = yIsMelee;

// make divisible by 4
var dartDist = 400;


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

var stage = 1;

with (obj_stage_handler) {
	stage = currentStage;
}


//SPRITES
var mosquito_charge_ranged_atk_green = spr_mosquito_charge_ranged_atk_green_red


//SPRITES ASSIGNMENT
if (stage == 1) {
	mosquito_normal = spr_mosquito_purple
	mosquito_charge_ranged_atk = spr_mosquito_charge_ranged_atk_purple
	mosquito_fire_ranged_atk = spr_mosquito_fire_ranged_atk_purple
}


if (stage == 2) {
	mosquito_normal = spr_mosquito_blue
	mosquito_charge_ranged_atk = spr_mosquito_charge_ranged_atk_blue
	mosquito_fire_ranged_atk = spr_mosquito_fire_ranged_atk_blue
	mosquito_drill = spr_mosquito_drill_blue
	mosquito_spinning = spr_mosquito_spinning_blue
}

if (stage == 3) {
	mosquito_normal = spr_mosquito_green
	mosquito_charge_ranged_atk = spr_mosquito_charge_ranged_atk_green
	mosquito_fire_ranged_atk = spr_mosquito_fire_ranged_atk_green
	mosquito_drill = spr_mosquito_drill_green
	mosquito_spinning = spr_mosquito_spinning_green
	mosquito_dead = spr_mosquito_dead_green
	mosquito_dizzy = spr_mosquito_dizzy_green
}

if (stage == 4) {
	mosquito_normal = spr_mosquito_yellow
	mosquito_charge_ranged_atk = spr_mosquito_charge_ranged_atk_yellow
	mosquito_fire_ranged_atk = spr_mosquito_fire_ranged_atk_yellow
	mosquito_drill = spr_mosquito_drill_yellow
	mosquito_spinning = spr_mosquito_spinning_yellow
	mosquito_dead = spr_mosquito_dead_yellow
	mosquito_dizzy = spr_mosquito_dizzy_yellow
}

if (stage == 5) {
	mosquito_normal = spr_mosquito_red	
	mosquito_charge_ranged_atk = spr_mosquito_charge_ranged_atk_red
	mosquito_fire_ranged_atk = spr_mosquito_fire_ranged_atk_red
	mosquito_drill = spr_mosquito_drill_red
	mosquito_spinning = spr_mosquito_spinning_red
	mosquito_dead = spr_mosquito_dead_red
	mosquito_dizzy = spr_mosquito_dizzy_red
}





// Management of dart will be handled below attack patterns
if (stage == 1) {
	// ==================== Stage 1 attack pattern =======================
	vspeed = 0;
	if (canAttack) {
		//alternates between basic and bouncing attack
		if (attackTimer > 0) {
			attackTimer -= 1;
		} else if (isInAttackRange) {
			instance_create_layer(x,y,"Instances", obj_mosquito_attack_basic);
			attackTimer = irandom_range(90, 150);
			randomize();
		}
	}
} else if (stage == 2 || stage == 3) {
	// ==================== Stage 2 and 3 attack pattern =======================
	if (yIsRanged) {
		//reset melee charge on being bounced back to ranged
		if (mosquitoIsDrill || mosquitoIsChargingDrill) {
			mosquitoSpinTimer = mosquitoSpinBuildupDuration
			mosquitoIsDrill = false
			mosquitoIsChargingDrill = false
			hspeed = default_hspeed
			vspeed = default_vspeed
			sprite_index = mosquito_normal
		}
		
		//check if mosquito is resetting from a melee attack
		if (hasExecutedMelee && y < ystart) {
			canAttack = true;
			hasExecutedMelee = false;
			hasResetMelee = true;
			hspeed = default_hspeed;
			vspeed = default_vspeed;
			image_blend = c_white;
			with (obj_player_hitbox) {
				hasRecordedMeleeDamage = false;	
			}
		} else if (canAttack) {
			if (attackTimer > 0 && not dartAttackInMotion) {
				attackTimer -= 1;
			} else if (isInAttackRange && not dartAttackInMotion) {
				instance_create_layer(x,y,"Instances", obj_mosquito_attack_basic);
				attackTimer = irandom_range(90, 150);
				randomize();
			}
		}
	} else if (yIsMelee) {
		
		if (!hasExecutedMelee) {
			//make mozzie charge drill
			if (not mosquitoIsChargingDrill && not mosquitoIsDrill) {
				mosquitoIsChargingDrill = true
				sprite_index = mosquito_spinning
				vspeed = vspeed/2
			}
			
			//change mozzie drill sprite midway
			if (mosquitoIsChargingDrill) {
				if (mosquitoSpinTimer > 0) {
					mosquitoSpinTimer -= 1
				} else {
					sprite_index = mosquito_drill
					mosquitoIsChargingDrill = false
					mosquitoIsDrill = true
				}
			}
			
			//increase hspeed of drill the longer it stays in the zone
			if (mosquitoIsDrill) {
				if (hspeed < 8) {
					hspeed += 0.00001
				}
			}
			//small range to account for decimal vspeed
			if (y >= 550 -32 && y <= 551 - 32) {
				if (x < 200) {
					move_towards_point(200, 724, 10)
				} else if (x > 700) {
					move_towards_point(700, 724, 10)
				} else {
					move_towards_point(x, 724, 10)
				}
			}	
		}			
	}

	// if melee has not been reset, keep moving to reset point
	if (!hasResetMelee) {
			move_towards_point(450, ystart, 3);
	}
} else if (stage == 4 || stage == 5) {
	// ==================== Stage 4 and 5 attack pattern =======================
	if (yIsRanged) {
		//reset melee charge on being bounced back to ranged
		if (mosquitoIsDrill || mosquitoIsChargingDrill) {
			mosquitoSpinTimer = mosquitoSpinBuildupDuration
			mosquitoIsDrill = false
			mosquitoIsChargingDrill = false
			hspeed = default_hspeed
			vspeed = default_vspeed
			sprite_index = mosquito_normal
		}
		
		//check if mosquito is resetting from a melee attack
		if (hasExecutedMelee && y < ystart) {
			canAttack = true;
			hasExecutedMelee = false;
			hasResetMelee = true;
			hspeed = default_hspeed;
			vspeed = default_vspeed;
			meleeTimer = melee_delay;
			image_blend = c_white;
			with (obj_player_hitbox) {
				hasRecordedMeleeDamage = false;	
			}
		} else if (canAttack) {
			//alternates between basic and bouncing attack
			if (attackTimer > 0 && not dartAttackInMotion) {
				attackTimer -= 1;
			} else if (isInAttackRange && not dartAttackInMotion) {
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
				
				//Attacks are 50% faster for stage 5
				if (stage == 5) {
					attackTimer = irandom_range(67, 112);
					randomize();
				} else {
					attackTimer = irandom_range(90, 150);
					randomize();
				}
			}
		}
	} else if (yIsMelee) {
		if (!hasExecutedMelee) {
			if (not mosquitoIsChargingDrill && not mosquitoIsDrill) {
				mosquitoIsChargingDrill = true
				sprite_index = mosquito_spinning
				vspeed = vspeed/2
			}
	
			if (mosquitoIsChargingDrill) {
				if (mosquitoSpinTimer > 0) {
					mosquitoSpinTimer -= 1
				} else {
					sprite_index = mosquito_drill
					mosquitoIsChargingDrill = false
					mosquitoIsDrill = true
				}
			}
	
			if (mosquitoIsDrill) {
				if (hspeed < 8) {
					hspeed += 0.00001
				}
			}
			//small range to account for decimal vspeed
			if (y >= 550 -32 && y <= 551 - 32) {
				if (x < 200) {
					move_towards_point(200, 724, 10)
				} else if (x > 700) {
					move_towards_point(700, 724, 10)
				} else {
					move_towards_point(x, 724, 10)
				}
			}	
		}
	}

	// if melee has not been reset, keep moving to reset point
	if (!hasResetMelee) {
			move_towards_point(450, ystart, 3);
	}
}

// =================== Dart and stun only occur for stage 3 onwards =============
if (stage == 3 || stage == 4 || stage == 5) {
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
					dartDirection = "left";
				} else {
					//sprite_index = spr_mosquito_right;
					dartDirection = "right";
				}		
			} else if (x - dartDist < 200 && x + dartDist <= 700 ) {
				// right dart only
				//sprite_index = spr_mosquito_right;
				dartDirection = "right";
			} else if (x + dartDist > 700 && x - dartDist >= 200) {
				//left dart only
				//sprite_index = spr_mosquito_left;
				dartDirection = "left";
			} else {
				
				//Dart is more likely to happen faster in stage 5
				if (stage == 5) {
					dartTimer = irandom_range(45,75);
				} else {
					dartTimer = irandom_range(60,120);
				}
				hspeed = default_hspeed
				vspeed = default_vspeed
			}
		} 		
		
		//i placed this entire block of if statements under the above (yIsRanged) statement
		// tick down timer for pre-dart visual cue and execute dart
		if (dartDirection != "") {
			if (!hasCreatedDartCue) {
				// Ensure mosquito does not fire while executing dart
				canAttack = false;
				var dartCue = instance_create_layer(x,y,"Instances", obj_dart);
				hasCreatedDartCue = true;
				if (dartDirection == "left") {
					dartCue.x = x - 32;
					dartCue.sprite_index = spr_dart_left;
				} else if (dartDirection == "right") {
					dartCue.x = x + 32;
					dartCue.sprite_index = spr_dart_right;
				} else {
			
				}
			}
			if (dartChargeTimer > 0) {
			dartChargeTimer -= 1;
			} else if (dartDirection == "left" && dartSteps_remaining > 0) {
				x -= dartDist/dartSteps;
				dartSteps_remaining -= 1;
			} else if (dartDirection == "right" && dartSteps_remaining > 0) {
				x += dartDist/dartSteps;
				dartSteps_remaining -= 1;
			} else if (dartSteps_remaining == 0) {
		
				dartAttackInMotion = true;
		  		sprite_index = mosquito_charge_ranged_atk;
			}
		}


		// dart attack and reset dart variables
		if (dartAttackInMotion) {
			hspeed = 0
			vspeed = 0
			if (dartAttackChargeTimer > 0) {
				dartAttackChargeTimer -= 1
				if (dartPulseTimer > 30) {
					sprite_index = mosquito_charge_ranged_atk;
					dartPulseTimer -= 1;
				} else if (dartPulseTimer > 0 && dartPulseTimer <= 30) {
					sprite_index = mosquito_charge_ranged_atk_green;
					dartPulseTimer -= 1;
				} else {
					dartPulseTimer = 60;
				}
			} else {
				sprite_index = mosquito_fire_ranged_atk;
				instance_create_layer(x,y,"Instances", obj_mosquito_attack_basic);
				attackTimer = irandom_range(90, 150);
				randomize();
				canAttack = true;
				dartChargeTimer = dart_movement_delay;
				hasCreatedDartCue = false;
				dartTimer = irandom_range(300, 360);
				dartSteps_remaining = dartSteps
				if (dartDirection == "left") {
					hspeed = default_hspeed * -1;
				} else {
					hspeed = default_hspeed;
				}
				vspeed = default_vspeed
				dartDirection = "";
			
				//Stun window is smaller in stage 5
				if (stage == 5) {
					dartAttackChargeTimer = 120; 
				} else {
					dartAttackChargeTimer = dart_attack_delay 
				}
				dartAttackInMotion = false
			} 
		}

		//cancel dart on hit
		if (not dartAttackInMotion) {
			sprite_index = mosquito_normal
		}

		//stun animations
		if (isStunned) {
			canAttack = false
			hspeed = 0
			vspeed = 0
			if (swatterDelayTimer > 0) {
				swatterDelayTimer -= 1
				if (sprite_index != mosquito_dizzy ) {
					sprite_index = mosquito_dizzy 
				}	
			} else {
				sprite_index = mosquito_dead
			}
	
			if (swatterDelayTimer == 0) {
				if (deadDurationTimer > 0) {
					deadDurationTimer -= 1
				} else {
					sprite_index = mosquito_normal
					isStunned = false
					hspeed = default_hspeed
					vspeed = default_vspeed
					deadDurationTimer = deadDuration
					swatterDelayTimer = swatterDelay
			
					with (obj_game) {
						__dnd_score += 50 //CHANGE STUN ATTACK SCORE HERE
					}
				}
			}	
		}
	}
}

 
//for testing
if (y >= 800) {
	x = xstart;
	y = 350;
}

