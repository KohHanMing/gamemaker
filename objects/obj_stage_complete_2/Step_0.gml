//Go to next stage
if point_in_rectangle(mouse_x, mouse_y, xForStage - stageTextWidth/2, yForStage - stageTextHeight/2, xForStage + stageTextWidth/2, yForStage + stageTextHeight/2)
{
	stageOrangeAlpha = 0;
	stageWhiteAlpha = 1;
	if (mouse_check_button_pressed(mb_left)) {
		room_goto(rm_main);
		with (obj_stage_handler) {
			currentMaxPoints = 600;
			currentStage += 1
		}
	}
} else {
	stageOrangeAlpha = 1;
	stageWhiteAlpha = 0;
}

//Go back to main menu
if point_in_rectangle(mouse_x, mouse_y, xForMenu - menuTextWidth/2, yForMenu - menuTextHeight/2, xForMenu + menuTextWidth/2, yForMenu + menuTextHeight/2)
{
	menuOrangeAlpha = 0;
	menuWhiteAlpha = 1;
	if (mouse_check_button_pressed(mb_left)) {
		room_goto(rm_menu);
	}
} else {
	menuOrangeAlpha = 1;
	menuWhiteAlpha = 0;
}

//Go to next tut screen
if point_in_rectangle(mouse_x, mouse_y, xForNext - nextTextWidth/2, yForNext - nextTextHeight/2, xForNext + nextTextWidth/2, yForNext + nextTextHeight/2)
{
	nextOrangeAlpha = 0;
	nextWhiteAlpha = 1;
	if (mouse_check_button_pressed(mb_left)) {
		//Go to next tut screen. Duplicate this room and change the room as needed
		room_goto(rm_stage_3_instruction_1);
	}
} else {
	nextOrangeAlpha = 1;
	nextWhiteAlpha = 0;
}

//Go to previous tut screen
if point_in_rectangle(mouse_x, mouse_y, xForBack - backTextWidth/2, yForBack - backTextHeight/2, xForBack + backTextWidth/2, yForBack + backTextHeight/2)
{
	backOrangeAlpha = 0;
	backWhiteAlpha = 1;
	if (mouse_check_button_pressed(mb_left)) {
		//Go to previous tut screen. Duplicate this room and change the room as needed
		//room_goto(PREVIOUS ROOM);
	}
} else {
	backOrangeAlpha = 1;
	backWhiteAlpha = 0;
}