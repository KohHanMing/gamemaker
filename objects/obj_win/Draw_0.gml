draw_set_halign(fa_center);
draw_set_valign(fa_middle);

draw_set_font(FontLarge);

draw_set_colour($FFFFFF00 & $ffffff);
var l70043F01_0=($FFFFFF00 >> 24);
draw_set_alpha(1);
draw_text_transformed(room_width/2, room_height/2 - 100, string("You Win!") + "", 1, 1, 0);

draw_set_colour($FFFFFFFF & $ffffff);
var l7CF229E3_0=($FFFFFFFF >> 24);

if(!variable_instance_exists(id, "__dnd_score")) __dnd_score = 0;
draw_text(room_width/2, room_height/2, string("Score: ") + string(__dnd_score));

draw_set_colour($FF05CDFF & $ffffff);
var l6CFDA850_0=($FF05CDFF >> 24);

draw_text_transformed(room_width/2, room_height/2 + 80, string("Press R to play again") + "", 0.4, 0.4, 0);

draw_set_halign(fa_left);
draw_set_valign(fa_top);

draw_set_colour($FFFFFFFF & $ffffff);
var l4F998875_0=($FFFFFFFF >> 24);
draw_set_alpha(1);
draw_set_font(Font1);