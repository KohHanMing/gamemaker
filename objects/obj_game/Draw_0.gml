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
/// @DnDArgument : "code" "var healthToDraw = playerHealth;$(13_10)var yToDrawHealth = 820; $(13_10)var xToDrawHealth = 60;$(13_10)$(13_10)for (var i = 0; i < MAX_HEALTH; i += 20) {$(13_10)	if (healthToDraw <= 0) {$(13_10)		draw_sprite_ext(spr_health, 4, xToDrawHealth, yToDrawHealth, 1, 1, 0, heart_col, 1);$(13_10)	} else if (healthToDraw <= 5) {$(13_10)		draw_sprite_ext(spr_health, 3, xToDrawHealth, yToDrawHealth, 1, 1, 0, heart_col, 1);$(13_10)		healthToDraw -= 5;$(13_10)	} else if (healthToDraw <= 10) {$(13_10)		draw_sprite_ext(spr_health, 2, xToDrawHealth, yToDrawHealth, 1, 1, 0, heart_col, 1);$(13_10)		healthToDraw -= 10;$(13_10)	} else if (healthToDraw <= 15) {$(13_10)		draw_sprite_ext(spr_health, 1, xToDrawHealth, yToDrawHealth, 1, 1, 0, heart_col, 1);$(13_10)		healthToDraw -= 15;$(13_10)	} else {$(13_10)		draw_sprite_ext(spr_health, 0, xToDrawHealth, yToDrawHealth, 1, 1, 0, heart_col, 1);$(13_10)		healthToDraw -= 20;$(13_10)	}$(13_10)	$(13_10)	yToDrawHealth -= 48;$(13_10)$(13_10)}$(13_10)$(13_10)var actionsToDraw = playerActions;$(13_10)var xToDrawActions = 120;$(13_10)var yToDrawActions = 844;$(13_10)$(13_10)for (var j = 0; j < MAX_ACTIONS; j++) {$(13_10)	if (actionsToDraw <= 0) {$(13_10)		draw_sprite(spr_action, 0, xToDrawActions, yToDrawActions);$(13_10)	} else {$(13_10)		draw_sprite(spr_action, 1, xToDrawActions, yToDrawActions);$(13_10)		actionsToDraw -= 1;$(13_10)	}$(13_10)	yToDrawActions -= 36;$(13_10)}$(13_10)$(13_10)draw_set_halign(fa_center);$(13_10)draw_set_valign(fa_middle)$(13_10)draw_text_colour(room_width/2, room_height/2 - 35, "Need more Action Points!",c_red,c_red,c_red,c_red, drawActionsAlpha)$(13_10)draw_text_colour(room_width/2, room_height/2, "Rewind Not Ready!",c_red,c_red,c_red,c_red, drawRewindNotReadyAlpha)$(13_10)draw_text_colour(room_width/2, room_height/2, "Rewind Ready!",c_cyan,c_cyan,c_cyan,c_cyan, drawRewindAlpha)$(13_10)$(13_10)"
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
		draw_sprite(spr_action, 0, xToDrawActions, yToDrawActions);
	} else {
		draw_sprite(spr_action, 1, xToDrawActions, yToDrawActions);
		actionsToDraw -= 1;
	}
	yToDrawActions -= 36;
}

draw_set_halign(fa_center);
draw_set_valign(fa_middle)
draw_text_colour(room_width/2, room_height/2 - 35, "Need more Action Points!",c_red,c_red,c_red,c_red, drawActionsAlpha)
draw_text_colour(room_width/2, room_height/2, "Rewind Not Ready!",c_red,c_red,c_red,c_red, drawRewindNotReadyAlpha)
draw_text_colour(room_width/2, room_height/2, "Rewind Ready!",c_cyan,c_cyan,c_cyan,c_cyan, drawRewindAlpha)