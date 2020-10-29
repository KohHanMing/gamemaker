/// @DnDAction : YoYo Games.Drawing.Draw_Instance_Score
/// @DnDVersion : 1
/// @DnDHash : 2EED8378
/// @DnDArgument : "x" "120"
/// @DnDArgument : "y" "120"
if(!variable_instance_exists(id, "__dnd_score")) __dnd_score = 0;
draw_text(120, 120, string("Score: ") + string(__dnd_score));

/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 15D15AF6
/// @DnDArgument : "code" "var healthToDraw = playerHealth;$(13_10)var yToDrawHealth = 820; $(13_10)var xToDrawHealth = 60;$(13_10)$(13_10)for (var i = 0; i < MAX_HEALTH; i += 20) {$(13_10)	if (healthToDraw <= 0) {$(13_10)		draw_sprite_ext(spr_health, 4, xToDrawHealth, yToDrawHealth, 1, 1, 0, heart_col, 1);$(13_10)	} else if (healthToDraw <= 5) {$(13_10)		draw_sprite_ext(spr_health, 3, xToDrawHealth, yToDrawHealth, 1, 1, 0, heart_col, 1);$(13_10)		healthToDraw -= 5;$(13_10)	} else if (healthToDraw <= 10) {$(13_10)		draw_sprite_ext(spr_health, 2, xToDrawHealth, yToDrawHealth, 1, 1, 0, heart_col, 1);$(13_10)		healthToDraw -= 10;$(13_10)	} else if (healthToDraw <= 15) {$(13_10)		draw_sprite_ext(spr_health, 1, xToDrawHealth, yToDrawHealth, 1, 1, 0, heart_col, 1);$(13_10)		healthToDraw -= 15;$(13_10)	} else {$(13_10)		draw_sprite_ext(spr_health, 0, xToDrawHealth, yToDrawHealth, 1, 1, 0, heart_col, 1);$(13_10)		healthToDraw -= 20;$(13_10)	}$(13_10)	$(13_10)	yToDrawHealth -= 48;$(13_10)$(13_10)}$(13_10)$(13_10)var actionsToDraw = playerActions;$(13_10)var xToDrawActions = 120;$(13_10)var yToDrawActions = 844;$(13_10)$(13_10)for (var j = 0; j < MAX_ACTIONS; j++) {$(13_10)	if (actionsToDraw <= 0) {$(13_10)		draw_sprite_ext(spr_action, 0, xToDrawActions, yToDrawActions, 1, 1, 0, action_col, 0.7);$(13_10)	} else {$(13_10)		draw_sprite_ext(spr_action, 1, xToDrawActions, yToDrawActions, 1, 1, 0, action_col, 1);$(13_10)		actionsToDraw -= 1;$(13_10)	}$(13_10)	yToDrawActions -= 36;$(13_10)}$(13_10)$(13_10)draw_set_halign(fa_center);$(13_10)draw_set_valign(fa_middle)$(13_10)draw_text_colour(room_width/2, room_height/2 - 35, "Need more Action Points!",c_red,c_red,c_red,c_red, drawActionsAlpha)$(13_10)draw_text_colour(room_width/2, room_height/2, "Rewind Not Ready!",c_red,c_red,c_red,c_red, drawRewindNotReadyAlpha)$(13_10)draw_text_colour(room_width/2, room_height/2, "Rewind Ready!",c_cyan,c_cyan,c_cyan,c_cyan, drawRewindAlpha)$(13_10)$(13_10)draw_set_alpha(pauseAlpha);$(13_10)draw_rectangle_color(0, 0, room_width, room_height, c_black, c_black, c_black, c_black, false);$(13_10)draw_set_alpha(pauseTextAlpha);$(13_10)draw_set_font(FontLarge);$(13_10)draw_text_transformed(room_width/2, room_height/2 - 100, string("Game Paused") + "", 1, 1, 0);$(13_10)draw_set_font(FontMedium)$(13_10)$(13_10)//Draw resume button, enlarge on hover$(13_10)resumeTextWidth = string_width("Resume");$(13_10)resumeTextHeight = string_height("Resume");$(13_10)draw_set_alpha(resumeTextSmallAlpha)$(13_10)draw_text_transformed(room_width/2, room_height/2 + 80, string("Resume") + "", 0.8, 0.8, 0);$(13_10)draw_set_alpha(resumeTextLargeAlpha)$(13_10)draw_text_transformed(room_width/2, room_height/2 + 80, string("Resume") + "", 1, 1, 0);$(13_10)$(13_10)//Draw menu button, enlarge on hover$(13_10)menuTextWidth = string_width("Main Menu");$(13_10)menuTextHeight = string_height("Main Menu");$(13_10)draw_set_alpha(menuTextSmallAlpha)$(13_10)draw_text_transformed(room_width/2, room_height/2 + 140, string("Main Menu") + "", 0.8, 0.8, 0);$(13_10)draw_set_alpha(menuTextLargeAlpha)$(13_10)draw_text_transformed(room_width/2, room_height/2 + 140, string("Main Menu") + "", 1, 1, 0);$(13_10)$(13_10)draw_set_alpha(1);$(13_10)draw_set_font(Font1);$(13_10)draw_set_colour($FFFFFFFF & $ffffff);"
var healthToDraw = playerHealth;
var yToDrawHealth = 820; 
var xToDrawHealth = 60;

for (var i = 0; i < MAX_HEALTH; i += 20) {
	if (healthToDraw <= 0) {
		draw_sprite_ext(spr_health, 4, xToDrawHealth, yToDrawHealth, 1, 1, 0, heart_col, 1);
	} else if (healthToDraw <= 5) {
		draw_sprite_ext(spr_health, 3, xToDrawHealth, yToDrawHealth, 1, 1, 0, heart_col, 1);
		healthToDraw -= 5;
	} else if (healthToDraw <= 10) {
		draw_sprite_ext(spr_health, 2, xToDrawHealth, yToDrawHealth, 1, 1, 0, heart_col, 1);
		healthToDraw -= 10;
	} else if (healthToDraw <= 15) {
		draw_sprite_ext(spr_health, 1, xToDrawHealth, yToDrawHealth, 1, 1, 0, heart_col, 1);
		healthToDraw -= 15;
	} else {
		draw_sprite_ext(spr_health, 0, xToDrawHealth, yToDrawHealth, 1, 1, 0, heart_col, 1);
		healthToDraw -= 20;
	}
	
	yToDrawHealth -= 48;

}

var actionsToDraw = playerActions;
var xToDrawActions = 120;
var yToDrawActions = 844;

for (var j = 0; j < MAX_ACTIONS; j++) {
	if (actionsToDraw <= 0) {
		draw_sprite_ext(spr_action, 0, xToDrawActions, yToDrawActions, 1, 1, 0, action_col, 0.7);
	} else {
		draw_sprite_ext(spr_action, 1, xToDrawActions, yToDrawActions, 1, 1, 0, action_col, 1);
		actionsToDraw -= 1;
	}
	yToDrawActions -= 36;
}

draw_set_halign(fa_center);
draw_set_valign(fa_middle)
draw_text_colour(room_width/2, room_height/2 - 35, "Need more Action Points!",c_red,c_red,c_red,c_red, drawActionsAlpha)
draw_text_colour(room_width/2, room_height/2, "Rewind Not Ready!",c_red,c_red,c_red,c_red, drawRewindNotReadyAlpha)
draw_text_colour(room_width/2, room_height/2, "Rewind Ready!",c_cyan,c_cyan,c_cyan,c_cyan, drawRewindAlpha)

draw_set_alpha(pauseAlpha);
draw_rectangle_color(0, 0, room_width, room_height, c_black, c_black, c_black, c_black, false);
draw_set_alpha(pauseTextAlpha);
draw_set_font(FontLarge);
draw_text_transformed(room_width/2, room_height/2 - 100, string("Game Paused") + "", 1, 1, 0);
draw_set_font(FontMedium)

//Draw resume button, enlarge on hover
resumeTextWidth = string_width("Resume");
resumeTextHeight = string_height("Resume");
draw_set_alpha(resumeTextSmallAlpha)
draw_text_transformed(room_width/2, room_height/2 + 80, string("Resume") + "", 0.8, 0.8, 0);
draw_set_alpha(resumeTextLargeAlpha)
draw_text_transformed(room_width/2, room_height/2 + 80, string("Resume") + "", 1, 1, 0);

//Draw menu button, enlarge on hover
menuTextWidth = string_width("Main Menu");
menuTextHeight = string_height("Main Menu");
draw_set_alpha(menuTextSmallAlpha)
draw_text_transformed(room_width/2, room_height/2 + 140, string("Main Menu") + "", 0.8, 0.8, 0);
draw_set_alpha(menuTextLargeAlpha)
draw_text_transformed(room_width/2, room_height/2 + 140, string("Main Menu") + "", 1, 1, 0);

draw_set_alpha(1);
draw_set_font(Font1);
draw_set_colour($FFFFFFFF & $ffffff);