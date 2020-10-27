instance_destroy();
with (obj_game) {
	playerActions += 1;
}

nearest = instance_nearest(x,y+24,obj_defense_duration)
with (nearest) {
	instance_destroy()
}