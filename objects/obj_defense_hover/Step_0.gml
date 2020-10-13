if (!mouse_check_button_pressed(mb_left)) {
	x = mouse_x;
	y = mouse_y;
} else {
	instance_destroy();
	instance_create_layer(mouse_x, mouse_y, "Instances", obj_defense_bar)
}