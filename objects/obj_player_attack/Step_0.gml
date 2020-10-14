if (timer <= 0 && sprite_index == spr_attack_charging) {
	sprite_index = spr_attack_weak;
	timer = 180;
} else if (timer <= 0 && sprite_index == spr_attack_weak) {
	sprite_index = spr_attack_medium;
	timer = 360;
} else if (timer <= 0 && sprite_index == spr_attack_medium) {
	sprite_index = spr_attack_strong;
} else if (sprite_index == spr_attack_strong) {

} else {
	timer -= 1;
}

if (y < 0) {
	instance_destroy();
}