if (mouse_check_button(mb_left)) {
	x = mouse_x;
	y = mouse_y;
} else {
	instance_destroy();
	if (mouse_check_button_released(mb_left)) {
		instance_create_layer(mouse_x, mouse_y, "Instances", obj_delay_set)
	}
}