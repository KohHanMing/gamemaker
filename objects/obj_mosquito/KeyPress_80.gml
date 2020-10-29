if (global.isPaused) {
	hspeed = pauseHSpeed;
	vspeed = pauseVSpeed;
} else {	
	pauseHSpeed = hspeed;
	hspeed = 0;
	pauseVSpeed = vspeed;
	vspeed = 0;
}