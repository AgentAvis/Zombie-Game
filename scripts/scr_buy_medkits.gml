//scr_buy_medkits(x,y,scale,price);
medKitMouse = point_in_rectangle(window_x,window_y,argument0 - argument2 * sprite_get_width(s_medkit)/2,argument1 - argument2 * sprite_get_height(s_medkit)/2,argument0 + argument2 * sprite_get_width(s_medkit)/2,argument1 + argument2 * sprite_get_height(s_medkit)/2);

draw_set_color(c3)

if(medKitMouse){
draw_set_color(c4);
if(o_player.money >= argument3 and mouse_check_button_pressed(mb_left)){
o_player.money -= argument3;
o_player.healthkits += 1;
}

}
draw_rectangle(argument0 - argument2 * sprite_get_width(s_medkit)/2,argument1 - argument2 * sprite_get_height(s_medkit)/2,argument0 + argument2 * sprite_get_width(s_medkit)/2,argument1 + argument2 * sprite_get_height(s_medkit)/2, false);
draw_sprite_ext(s_medkit,0,argument0,argument1,argument2,argument2,0,c_white,1);
draw_set_color(c_black);
draw_set_halign(fa_center);
draw_text(argument0,argument1 - 34,"$" + string(argument3));
draw_set_halign(fa_left);

