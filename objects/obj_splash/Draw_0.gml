/// @DnDAction : YoYo Games.Drawing.Set_Alignment
/// @DnDVersion : 1.1
/// @DnDHash : 1643FDD9
/// @DnDArgument : "halign" "fa_center"
/// @DnDArgument : "valign" "fa_middle"
draw_set_halign(fa_center);
draw_set_valign(fa_middle);

/// @DnDAction : YoYo Games.Drawing.Set_Font
/// @DnDVersion : 1
/// @DnDHash : 220D4B3F
/// @DnDArgument : "font" "FontLarge"
/// @DnDSaveInfo : "font" "FontLarge"
draw_set_font(FontLarge);

/// @DnDAction : YoYo Games.Drawing.Draw_Value_Transformed
/// @DnDVersion : 1
/// @DnDHash : 5E637378
/// @DnDArgument : "x" "room_width/2"
/// @DnDArgument : "y" "room_height/2"
/// @DnDArgument : "caption" ""Space Mosquito""
draw_text_transformed(room_width/2, room_height/2, string("Space Mosquito") + "", 1, 1, 0);

/// @DnDAction : YoYo Games.Drawing.Draw_Value_Transformed
/// @DnDVersion : 1
/// @DnDHash : 474A3E9F
/// @DnDArgument : "x" "room_width/2"
/// @DnDArgument : "y" "room_height/2 + 80"
/// @DnDArgument : "xscale" "0.4"
/// @DnDArgument : "yscale" "0.4"
/// @DnDArgument : "caption" ""Press Spacebar to continue""
draw_text_transformed(room_width/2, room_height/2 + 80, string("Press Spacebar to continue") + "", 0.4, 0.4, 0);

/// @DnDAction : YoYo Games.Drawing.Set_Alignment
/// @DnDVersion : 1.1
/// @DnDHash : 40F05B7F
draw_set_halign(fa_left);
draw_set_valign(fa_top);

/// @DnDAction : YoYo Games.Drawing.Set_Font
/// @DnDVersion : 1
/// @DnDHash : 2617CBA5
/// @DnDArgument : "font" "Font1"
/// @DnDSaveInfo : "font" "Font1"
draw_set_font(Font1);