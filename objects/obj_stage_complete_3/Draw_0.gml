draw_set_halign(fa_center);
draw_set_valign(fa_middle);

//=============== START OF PLACEHOLDER TEXT ==============
draw_set_font(FontLarge);
draw_set_colour($FFFFFF00 & $ffffff);
draw_set_alpha(1);
draw_text_transformed(room_width/2, room_height/2 - 100, string("Stage 3 Complete!") + "", 1, 1, 0);
//=============== END OF PLACEHOLDER TEXT ==============

draw_set_font(FontMedium);

//Draw next stage button, hover changes colour.
stageTextWidth = string_width("Next Stage");
stageTextHeight = string_height("Next Stage");
draw_set_colour($FF05CDFF & $ffffff);
draw_set_alpha(stageOrangeAlpha);
draw_text_transformed(xForStage, yForStage, string("Next Stage") + "", stageScale, stageScale, 0);
draw_set_colour($FFFFFFFF & $ffffff);
draw_set_alpha(stageWhiteAlpha);
draw_text_transformed(xForStage, yForStage, string("Next Stage") + "", stageScale, stageScale, 0);

//Draw menu button, hover changes colour.
menuTextWidth = string_width("Main Menu");
menuTextHeight = string_height("Main Menu");
draw_set_colour($FF05CDFF & $ffffff);
draw_set_alpha(menuOrangeAlpha);
draw_text_transformed(xForMenu, yForMenu, string("Main Menu") + "", menuScale, menuScale, 0);
draw_set_colour($FFFFFFFF & $ffffff);
draw_set_alpha(menuWhiteAlpha);
draw_text_transformed(xForMenu, yForMenu, string("Main Menu") + "", menuScale, menuScale, 0);

//Draw next button, hover changes colour.
nextTextWidth = string_width("Next");
nextTextHeight = string_height("Next");
draw_set_colour($FF05CDFF & $ffffff);
draw_set_alpha(nextOrangeAlpha);
draw_text_transformed(xForNext, yForNext, string("Next") + "", nextScale, nextScale, 0);
draw_set_colour($FFFFFFFF & $ffffff);
draw_set_alpha(nextWhiteAlpha);
draw_text_transformed(xForNext, yForNext, string("Next") + "", nextScale, nextScale, 0);

//Draw back button, hover changes colour.
backTextWidth = string_width("Back");
backTextHeight = string_height("Back");
draw_set_colour($FF05CDFF & $ffffff);
draw_set_alpha(backOrangeAlpha);
draw_text_transformed(xForBack, yForBack, string("Back") + "", backScale, backScale, 0);
draw_set_colour($FFFFFFFF & $ffffff);
draw_set_alpha(backWhiteAlpha);
draw_text_transformed(xForBack, yForBack, string("Back") + "", backScale, backScale, 0);

draw_set_halign(fa_left);
draw_set_valign(fa_top);
draw_set_colour($FFFFFFFF & $ffffff);
draw_set_alpha(1);
draw_set_font(Font1);