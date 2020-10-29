if (sprite_index == spr_attack_charging) {
	
} else {
	if (sprite_index == spr_attack_weak) {
		instance_create_layer(x, y, "Instances", obj_attack_weak);
	} else if (sprite_index == spr_attack_medium) {
		instance_create_layer(x, y, "Instances", obj_attack_medium);
	} else if (sprite_index == spr_attack_strong) {
		instance_create_layer(x, y, "Instances", obj_attack_strong);
	} else {
	
 	}
	instance_destroy();
	with (obj_game) {
		playerActions += 1;
	}
}
	
