hasHover = false;
__dnd_score = 0;

MAX_HEALTH = 100;
playerHealth = 100;
col_r = 255;
col_g = 255;
col_b = 255;
heart_col = make_color_rgb(col_r, col_g, col_b);
heartTimer = 0;
isDamage = false;
isHeal = false;

MAX_ACTIONS = 7;
playerActions = 7;

//Draw prompt "Need more Action Points"
draw_set_font(Font1);
drawActionsAlpha = 0;
drawActionsTimer = 60;

//Draw prompt "Rewind Not Ready"
drawRewindNotReadyAlpha = 0;
drawRewindNotReadyTimer = 60;

//Draw prompt "Rewind Ready"
c_cyan = make_color_rgb(0, 255, 255);
drawRewindAlpha = 0;
drawRewindTimer = 60;