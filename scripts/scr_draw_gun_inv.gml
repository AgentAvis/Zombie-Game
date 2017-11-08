///scr_draw_gun_inv(x,y,type,id)
eB[argument2,0] = point_in_rectangle(window_x,window_y,250 + argument0 - 3.28 * sprite_get_width(s_expansion_UI)/2, 31 + argument1 - 3.28 * sprite_get_height(s_expansion_UI)/2,250 + argument0 + 3.28 * sprite_get_width(s_expansion_UI)/2, 31 + argument1 + 3.28 * sprite_get_height(s_expansion_UI)/2);
eB[argument2,1] = point_in_rectangle(window_x,window_y,250 + 72 + argument0 - 3.28 * sprite_get_width(s_expansion_UI)/2, 31 + argument1 - 3.28 * sprite_get_height(s_expansion_UI)/2,250 + 72 + argument0 + 3.28 * sprite_get_width(s_expansion_UI)/2, 31 + argument1 + 3.28 * sprite_get_height(s_expansion_UI)/2);
sellButton[argument2] = point_in_rectangle(window_x,window_y,argument0 + 376, argument1 + 22, argument0 + 376 + 20, argument1 + 22 + 20);

draw_set_color(c1);
draw_rectangle(argument0,argument1,argument0 + width, argument1 + height, false);
draw_sprite_ext(s_guns_gui,argument3,argument0 + 165,argument1 + 23,4.84,4.84,1,c_white,1);
draw_sprite_ext(s_guns_ammo,argument2,argument0 + 32, argument1 + 26, 3.54, 3.54 ,1, c_white,1);
draw_set_color(c_black);
draw_text_transformed(argument0 + 44, argument1 + 17, "X" + string(o_gun.ammo[argument2]),1.54,1.54,0);
draw_set_color(c2);
draw_rectangle_width(argument0 - 1,argument1, argument0 + 365, argument1 + 63, 3);
draw_set_color(c3);

if(eB[argument2,0] == true){
draw_set_color(c4);
if(o_shop_gui.adding == true and mouse_check_button_pressed(mb_left) and o_shop_gui.whichExpansion != o_gun.expansion[argument2,0] and o_gun.expansion[argument2,1] != o_shop_gui.whichExpansion){
o_gun.expansion[argument2,0] = o_shop_gui.whichExpansion;
o_player.money -= augmentprice;
o_shop_gui.adding = false;
}
}
//Slot 1
draw_rectangle(250 + argument0 - 3.28 * sprite_get_width(s_expansion_UI)/2, 31 + argument1 - 3.28 * sprite_get_height(s_expansion_UI)/2,250 + argument0 + 3.28 * sprite_get_width(s_expansion_UI)/2, 31 + argument1 + 3.28 * sprite_get_height(s_expansion_UI)/2,false);
draw_sprite_ext(s_expansion_UI,o_gun.expansion[argument2,0],argument0 + 250,31 + argument1,3.28,3.28,0,c_white,1);
draw_set_color(c3);

if(eB[argument2,1]){
draw_set_color(c4);
if(o_shop_gui.adding == true and mouse_check_button_pressed(mb_left) and o_shop_gui.whichExpansion != o_gun.expansion[argument2,1] and o_gun.expansion[argument2,0] != o_shop_gui.whichExpansion){
o_gun.expansion[argument2,1] = o_shop_gui.whichExpansion;
o_player.money -= augmentprice;
o_shop_gui.adding = false;
}
}
//Slot 2
draw_rectangle(250 + 72 + argument0 - 3.28 * sprite_get_width(s_expansion_UI)/2, 31 + argument1 - 3.28 * sprite_get_height(s_expansion_UI)/2,250 + 72 + argument0 + 3.28 * sprite_get_width(s_expansion_UI)/2, 31 + argument1 + 3.28 * sprite_get_height(s_expansion_UI)/2,false);
draw_sprite_ext(s_expansion_UI,o_gun.expansion[argument2,1],argument0 + 72 + 250,31 + argument1,3.28,3.28,0,c_white,1);
draw_set_color(c3);

draw_set_color(c_white);
//draw_text(0,220 + argument1,string(eB[argument2,0]));

//Button for selling the guns

if(o_shop_gui.visible = true and argument2 != 1){
draw_set_color(c3);
if(sellButton[argument2]){
draw_set_color(c4);
if(mouse_check_button_pressed(mb_left)){
o_player.money += o_gun.sellPrice;
for(i = 0; i < 20; i++){
o_gun.hasGun[argument2,i] = false;
}
o_gun.spr = 1;
}
}
draw_rectangle(argument0 + 376, argument1 + 22, argument0 + 376 + 20, argument1 + 22 + 20, false);
draw_set_halign(fa_center);
draw_set_valign(fa_middle);
draw_set_color(c_black);
draw_text(argument0 + 376 + 10, argument1 + 22 + 10, "$");
draw_set_color(c3);
draw_set_halign(fa_left);
draw_set_valign(fa_top);
}
//draw_rectangle(250 + argument0 + (sprite_get_width(s_expansion_UI)/2),31 + argument1, 250 + argument0 - (sprite_get_width(s_expansion_UI)/2),31 + argument1 + 100, false);
//draw_rectangle(250 + argument0 + 3.28 * sprite_get_width(s_expansion_UI)/2, 31 + argument1 + 3.28 * sprite_get_height(s_expansion_UI)/2,250 + argument0 - 3.28 * sprite_get_width(s_expansion_UI)/2, 31 + argument1 - 3.28 * sprite_get_height(s_expansion_UI)/2, false);

