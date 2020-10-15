//edit static vars here 
//delays
dart_attack_delay = 180 // stun window
dart_movement_delay = 60 // 
default_hspeed = 3 //only value, no direction
default_vspeed = 0.4 //only value, no direction

//melee
melee_delay = 300;

hspeed = default_hspeed * -1
vspeed = default_vspeed
delayTimer = 300
isDelayed = false

attackTimer = 60;
canAttack = true;

meleeTimer = melee_delay;
pulseTimer = 60;
hasExecutedMelee = false;
isMeleeRange = false;
hasResetMelee = true;

isRewind = false;
rewindTimer = 0;

//variables for darting
dartTimer = irandom_range(100, 200); // timing between each dart
dartChargeTimer = dart_movement_delay; //time it stays still before dart
dartDirection = ""; //direction
dartSteps = 8; //how fast the animation is
dartSteps_remaining = dartSteps; // counter for mozzie dart movement
sprite_index = spr_mosquito
dartAttackChargeTimer = dart_attack_delay
dartAttackInMotion = false

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
