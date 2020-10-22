instance_destroy();
var myDirection = direction;

with (other) {
	bounceLimit = 0;
	isDeflected = true;
	var projetileInverseDirection = direction - 180
	if (myDirection > 270) {
			var myInverseDirection = myDirection - 180;
			var myAngleWithOrigin = 360 - myDirection;
			var finalAngle = myInverseDirection - projetileInverseDirection - myAngleWithOrigin;
			direction = finalAngle;
			image_angle = finalAngle;
	} else if (myDirection < 90) {
		var myInverseDirection = myDirection + 180;
		var finalAngle = myInverseDirection - projetileInverseDirection
		direction = finalAngle;
		image_angle = finalAngle;
	}
}

with (obj_game) {
	playerActions +=1;
}

with (durationBar) {
	instance_destroy();	
}