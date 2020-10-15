instance_destroy();
with (obj_game) {
	playerActions += 1;
}

durationBar = instance_nearest(x, y+50, obj_defense_duration)
with (durationBar) {
	instance_destroy()
}