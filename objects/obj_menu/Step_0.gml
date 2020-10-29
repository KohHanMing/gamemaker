if point_in_rectangle(mouse_x, mouse_y, room_width/2 - startTextWidth/2, room_height/2 - 25 - startTextHeight/2, room_width/2 + startTextWidth/2, room_height/2 - 25 + startTextHeight/2)
{
	startTextSmallAlpha = 0;
	startTextLargeAlpha = 1;
	if (mouse_check_button_pressed(mb_left)) {
		room_goto(rm_main);
		with (obj_stage_handler) {
			currentMaxPoints = 200;
			currentStage = 1
		}
	}
} else {
	startTextSmallAlpha = 1;
	startTextLargeAlpha = 0;
}

if point_in_rectangle(mouse_x, mouse_y, room_width/2 - helpTextWidth/2, room_height/2 + 100 - helpTextHeight/2, room_width/2 + helpTextWidth/2, room_height/2 + 100 + helpTextHeight/2)
{
    helpTextSmallAlpha = 0;
	helpTextLargeAlpha = 1;
} else {
	helpTextSmallAlpha = 1;
	helpTextLargeAlpha = 0;
}