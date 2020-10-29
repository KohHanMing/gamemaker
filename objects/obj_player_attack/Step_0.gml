if (global.isPaused) {
	
} else {

	if (timer <= 0 && sprite_index == spr_attack_charging) {
		instance_create_layer(x,y,"Instances",obj_emptypod)
			sprite_index = spr_attack_weak_fullcoll;
		timer = 180;
	} else if (timer <= 0 && sprite_index == spr_attack_weak_fullcoll) {
		sprite_index = spr_attack_medium_fullcoll;
		timer = 360;
	} else if (timer <= 0 && sprite_index == spr_attack_medium_fullcoll) {
		sprite_index = spr_attack_strong_fullcoll;
	} else if (sprite_index == spr_attack_strong_fullcoll) {


	} else {
		timer -= 1;
	}

	if (y < 0) {
		instance_destroy();
	}
}
