if (global.isPaused) {
	
} else {
<<<<<<< HEAD
	if (sprite_index == spr_attack_pod) {
	
=======
	if (sprite_index == spr_attack_weak_fullcoll) {
		instance_create_layer(x, y, "Instances", obj_attack_weak);
	} else if (sprite_index == spr_attack_medium_fullcoll) {
		instance_create_layer(x, y, "Instances", obj_attack_medium);
	} else if (sprite_index == spr_attack_strong_fullcoll) {
		instance_create_layer(x, y, "Instances", obj_attack_strong);
>>>>>>> 06395ac7c3518d8df9f2a7d2444ebcb862570f4d
	} else {
		if (sprite_index == spr_attack_charging_weak) {
			instance_create_layer(x, y, "Instances", obj_attack_weak);
		} else if (sprite_index == spr_attack_charging_medium) {
			instance_create_layer(x, y, "Instances", obj_attack_medium);
		} else if (sprite_index == spr_attack_charging_strong) {
			instance_create_layer(x, y, "Instances", obj_attack_strong);
		} else {
	
	 	}
		instance_destroy();
		with (obj_game) {
			playerActions += 1;
		}
	}
}
	
//make empty pod disappear
nearest = instance_nearest(x,y,obj_emptypod)

if (sprite_index != spr_attack_charging) {
	with (nearest) {
		disappear = true
	}
}