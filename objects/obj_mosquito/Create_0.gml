hspeed = -3
vspeed = 0.4
delayTimer = 300
isDelayed = false

attackTimer = 60;
canAttack = true;

meleeTimer = 600;
pulseTimer = 60;
hasExecutedMelee = false;

isRewind = false;
rewindTimer = 0;


dartTimer = 300; // timing between each dart
dartChargeTimer = 60; //time it stays still before dart
dartDirection = ""; //direction
dartDestination = 0; //x-location to move towards
dartSteps = 8; //how fast the animation is
dartSteps_remaining = dartSteps; // counter for mozzie dart movement
sprite_index = mosquito