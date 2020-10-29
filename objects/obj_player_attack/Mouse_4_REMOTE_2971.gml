if (sprite_index == spr_attack_charging) {
	
} else {
	if (sprite_index == spr_attack_weak_fullcoll) {
		instance_create_layer(x, y, "Instances", obj_attack_weak);
	} else if (sprite_index == spr_attack_medium_fullcoll) {
		instance_create_layer(x, y, "Instances", obj_attack_medium);
	} else if (sprite_index == spr_attack_strong_fullcoll) {
		instance_create_layer(x, y, "Instances", obj_attack_strong);
	} else {
	
 	}
	instance_destroy();
	with (obj_game) {
		playerActions += 1;
	}
}
	
//make empty pod disappear
nearest = instance_nearest(x,y,obj_emptypod)

if (sprite_index != spr_attack_charging) {
	with (nearest) {
		disappear = true
	}
}