instance_destroy();
with (obj_game) {
	playerActions += 1;
}


// destroy emptypod
nearest = instance_nearest(x,y,obj_emptypod)

with (nearest) {
	instance_destroy()
}