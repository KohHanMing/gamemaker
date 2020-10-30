draw_set_halign(fa_center);
draw_set_valign(fa_middle);

draw_set_font(FontLarge);

draw_text_transformed(room_width/2, 200, string("Space Mosquito") + "", 1, 1, 0);

startTextWidth = string_width("Start");
startTextHeight = string_height("Start");
draw_set_alpha(startTextSmallAlpha);
draw_text_transformed(room_width/2, room_height/2 - 25, string("Start") + "", 0.6, 0.6, 0);
draw_set_alpha(startTextLargeAlpha);
draw_text_transformed(room_width/2, room_height/2 - 25, string("Start") + "", 1, 1, 0);

//helpTextWidth = string_width("Help Placeholder");
//helpTextHeight = string_height("Help Placeholder");
//draw_set_alpha(helpTextSmallAlpha);
//draw_text_transformed(room_width/2, room_height/2 + 100, string("Help Placeholder") + "", 0.6, 0.6, 0);
//draw_set_alpha(helpTextLargeAlpha);
//draw_text_transformed(room_width/2, room_height/2 + 100, string("Help Placeholder") + "", 1, 1, 0);

draw_set_halign(fa_left);
draw_set_valign(fa_top);
draw_set_font(Font1);
draw_set_alpha(1);