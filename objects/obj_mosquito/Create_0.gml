//edit static vars here 
//for delays
dart_attack_delay = 160 // stun window
dart_movement_delay = 60 // 
default_hspeed = 3 //only value, no direction
default_vspeed = 0.4 //only value, no direction

//for melee
melee_delay = 300;
default_h_accel = 0.001
h_accel = default_h_accel
momentum_gained = 0

hspeed = default_hspeed * -1
vspeed = default_vspeed
delayTimer = 300
isDelayed = false
postDelay = false

attackTimer = 60;
canAttack = true;

// variables for melee
meleeTimer = melee_delay;
pulseTimer = 60;
hasExecutedMelee = false;
isMeleeRange = false;
hasResetMelee = true;

//new melee vars
mosquitoIsChargingDrill = false
mosquitoSpinBuildupDuration = 45
mosquitoSpinTimer = mosquitoSpinBuildupDuration
mosquitoIsDrill = false

isRewind = false;
rewindTimer = 0;

//variables for darting
dartTimer = irandom_range(100, 200); // timing between each dart
dartChargeTimer = dart_movement_delay; //time it stays still before dart
dartDirection = ""; //direction
dartSteps = 8; //how fast the animation is
dartSteps_remaining = dartSteps; // counter for mozzie dart movement
sprite_index = spr_mosquito_purple
dartAttackChargeTimer = dart_attack_delay
dartAttackInMotion = false
dartPulseTimer = 60;
hasCreatedDartCue = false;


//variables for bouncing attack
numBasicAttack = 1;
bouncingAttackAngle = 330;
isFirstBouncingAngle = true;
isSecondBouncingAngle = false;


//stunbar functionality
stunLevel = 0 // tracks stun bar
stunSteps = 3  // number of times to hit window before stun
isStunned = false
swatterDelay = 12 // delay for swatter animation to happen before mosquitio dies
deadDuration = 60 // time mozzie is ded
swatterDelayTimer = swatterDelay
deadDurationTimer = deadDuration



//SPRITES
mosquito_normal = spr_mosquito_purple
mosquito_charge_ranged_atk = spr_mosquito_charge_ranged_atk_purple
mosquito_fire_ranged_atk = spr_mosquito_fire_ranged_atk_purple
mosquito_drill = spr_mosquito_drill_red
mosquito_spinning = spr_mosquito_spinning_red
mosquito_dead = spr_mosquito_dead_red
mosquito_dizzy = spr_mosquito_dizzy_red

