///scr_draw_gun_inv(x,y,id)
draw_set_color(c1);
draw_rectangle(argument0,argument1,argument0 + width, argument1 + height, false);
draw_sprite_ext(s_guns_gui,argument2,argument0 + 165,argument1 + 23,4.84,4.84,1,c_white,1);
draw_sprite_ext(s_guns_ammo,argument2,argument0 + 32, argument1 + 26, 3.54, 3.54 ,1, c_white,1);
draw_set_color(c_black);
draw_text_transformed(argument0 + 44, argument1 + 17, "X" + string(o_gun.ammo[argument2]),1.54,1.54,0);
draw_set_color(c2);
draw_rectangle_width(argument0 - 1,argument1, argument0 + 365, argument1 + 63, 3);


