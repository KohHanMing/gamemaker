//edit static vars here (delays)
dart_attack_delay = 120 // stun window
dart_movement_delay = 60 // 
default_hspeed = 3 //only value, no direction
default_vspeed = 0.4 //only value, no direction

hspeed = default_hspeed * -1
vspeed = default_vspeed
delayTimer = 300
isDelayed = false

attackTimer = 60;
canAttack = true;

meleeTimer = 600;
pulseTimer = 60;
hasExecutedMelee = false;

isRewind = false;
rewindTimer = 0;



dartTimer = irandom_range(100, 200); // timing between each dart
dartChargeTimer = dart_movement_delay; //time it stays still before dart
dartDirection = ""; //direction
dartSteps = 8; //how fast the animation is
dartSteps_remaining = dartSteps; // counter for mozzie dart movement
sprite_index = spr_mosquito

dartAttackChargeTimer = dart_attack_delay
dartAttackInMotion = false
isStunned = false

