if (global.isPaused) {
	
} else {
	if (playerActions <= 0) {
		drawActionsAlpha = 1;
		drawActionsTimer = 60;
	} else if (!hasHover) {
		hoverInstance = instance_create_layer(mouse_x, mouse_y, "Instances", obj_hover);
		hoverInstance.sprite_index = spr_attack_weak;
		hoverInstance.image_alpha = 1;
		hasHover = true;
	} else {
	
	}
}

