///scr_buy_extension(x,y,id,price)

extension_mouse[argument2] = point_in_rectangle(window_x,window_y,argument0 - 3.84 * sprite_get_width(s_expansion_UI)/2,argument1 - 3.84 * sprite_get_height(s_expansion_UI)/2,argument0 + 3.84 * sprite_get_width(s_expansion_UI)/2,argument1 + 3.84 * sprite_get_height(s_expansion_UI)/2);
draw_set_color(c3);
if(extension_mouse[argument2]){
draw_set_color(c4);
if(mouse_check_button_pressed(mb_left) and o_player.money >= argument3){
o_player.money -= argument3;
adding = true;
whichExpansion = argument2;
}
}
draw_rectangle(argument0 - 3.84 * sprite_get_width(s_expansion_UI)/2,argument1 - 3.84 * sprite_get_height(s_expansion_UI)/2,argument0 + 3.84 * sprite_get_width(s_expansion_UI)/2,argument1 + 3.84 * sprite_get_height(s_expansion_UI)/2, false);
draw_sprite_ext(s_expansion_UI,argument2,argument0,argument1,3.84,3.84,0,c_white,1);
