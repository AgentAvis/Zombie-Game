///scr_buy_extension(x,y,id,price,name,description)

extension_mouse[argument2] = point_in_rectangle(window_x,window_y,(argument0 - 3.84 * sprite_get_width(s_expansion_UI)/2) * GUISCALE_X,(argument1 - 3.84 * sprite_get_height(s_expansion_UI)/2) * GUISCALE_Y,(argument0 + 3.84 * sprite_get_width(s_expansion_UI)/2) * GUISCALE_X,(argument1 + 3.84 * sprite_get_height(s_expansion_UI)/2) * GUISCALE_Y);
draw_set_color(c3);
if(extension_mouse[argument2]){

draw_set_color(c4);
if(mouse_check_button_pressed(mb_left) and o_player.money >= argument3){
adding = true;
whichExpansion = argument2;
o_player.augmentprice = argument3;

}
}
draw_rectangle((argument0 - 3.84 * sprite_get_width(s_expansion_UI)/2) * GUISCALE_X,(argument1 - 3.84 * sprite_get_height(s_expansion_UI)/2) * GUISCALE_Y,(argument0 + 3.84 * sprite_get_width(s_expansion_UI)/2) * GUISCALE_X,(argument1 + 3.84 * sprite_get_height(s_expansion_UI)/2) * GUISCALE_Y, false);
draw_sprite_ext(s_expansion_UI,argument2,argument0 * GUISCALE_X,argument1 * GUISCALE_Y,3.84 * GUISCALE_X,3.84 * GUISCALE_Y,0,c_white,1);

if(extension_mouse[argument2]){

scr_draw_expansion_desc((argument0 - string_width_ext(argument5,-1,300)) * GUISCALE_X,(argument1 - string_height_ext(argument5,-1,300)) * GUISCALE_Y,argument4,argument5, argument3);

}
