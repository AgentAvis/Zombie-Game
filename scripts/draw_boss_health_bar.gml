///scr_draw_boss_healthbar(padding, height, name, y)
draw_healthbar(0 + argument0, window_get_height() - argument3, window_get_width() - argument0, window_get_height() - argument3 + argument1,(hp/maxHp) * 100, c_black, c_red, c_green, 0 , true, true);
draw_set_halign(fa_center);
draw_set_valign(fa_middle);
draw_set_color(c_white);
draw_text_transformed((0 + argument0) + (window_get_width() - argument0)/2,window_get_height() - argument3 + argument1/2, argument2 +  "(" + string(hp) + "/" + string(maxHp) + ")", GUISCALE_X,GUISCALE_Y,0);

draw_set_halign(fa_left);
draw_set_valign(fa_top);
