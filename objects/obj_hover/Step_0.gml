var xToPlaceAt = x;
var yToPlaceAt = y;

if (!mouse_check_button_released(mb_left) && mouse_y >= 550) {
	x = mouse_x;
	y = mouse_y;
} else if (!mouse_check_button_released(mb_left) && mouse_y < 550) {
	x = mouse_x;
	y = 550;
	yToPlaceAt = 550;
} else {
	if (sprite_index = spr_defense_bar) {
		var defense = instance_create_layer(xToPlaceAt, yToPlaceAt, "Instances", obj_defense_bar);
		defense.direction = rotationAngle;
		defense.image_angle = rotationAngle;
		var xToPlaceDuration = xToPlaceAt - 20;
		var yToPlaceDuration = yToPlaceAt + 15;
		var duration = instance_create_layer(xToPlaceDuration, yToPlaceDuration, "Instances", obj_defense_duration);
		defense.durationBar = duration;
	} else {
		instance_create_layer(xToPlaceAt, yToPlaceAt, "Instances", obj_player_attack);
	}
	instance_destroy();
	with(obj_game) {
		hasHover = false;
		playerActions -= 1;
	}
}