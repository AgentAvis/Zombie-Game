///scr_buy_ammo_buttons(x,y,price,id)
ammoButton[0] = point_in_rectangle(window_x,window_y,argument0, argument1, argument0 + width, argument1 + height);
ammoButton[1] = point_in_rectangle(window_x,window_y,argument0 + 150, argument1, argument0 + 150 + width, argument1 + height);
ammoButton[2] = point_in_rectangle(window_x,window_y,argument0 + 300, argument1, argument0 + 300 + width, argument1 + height);

draw_set_color(c_black);
//1X
draw_set_halign(fa_center);
draw_text(argument0 + (width/2),argument1 - 20,"10x");
draw_set_halign(fa_left);
draw_set_color(c3);
if(ammoButton[0]){
if(mouse_check_button_pressed(mb_left)){
if(o_player.money >= (argument2 * 10)){
o_gun.ammo[argument3] += 10;
o_player.money -= argument2 * 10;
}
}
}
draw_rectangle(argument0, argument1, argument0 + width, argument1 + height, false);
draw_set_halign(fa_center);
draw_set_valign(fa_middle);
draw_set_color(c_black);
draw_text(argument0 + (width/2), argument1 + (height/2), "$" + string(argument2 * 10));
draw_set_color(c3);
draw_set_halign(fa_left);
draw_set_valign(fa_top);

//50X
draw_set_color(c_black);
draw_set_halign(fa_center);
draw_text(argument0+ 150 + (width/2),argument1 - 20,"50x");
draw_set_halign(fa_left);
draw_set_color(c3);
if(ammoButton[1]){

if(mouse_check_button_pressed(mb_left)){

if(o_player.money >= (argument2 * 50)){

o_gun.ammo[argument3] += 50;
o_player.money -= argument2 * 50;

}
}
}
draw_rectangle(argument0 + 150, argument1, argument0 + 150 + width, argument1 + height, false);
draw_set_halign(fa_center);
draw_set_valign(fa_middle);
draw_set_color(c_black);
draw_text(argument0 + 150 + (width/2), argument1 + (height/2), "$" + string(argument2 * 50));
draw_set_color(c3);
draw_set_halign(fa_left);
draw_set_valign(fa_top);

//100X
draw_set_color(c_black);
draw_set_halign(fa_center);
draw_text(argument0+ 300 + (width/2),argument1 - 20,"100x");
draw_set_halign(fa_left);
draw_set_color(c3);
if(ammoButton[2]){

if(mouse_check_button_pressed(mb_left)){

if(o_player.money >= (argument2 * 100)){

o_gun.ammo[argument3] += 100;
o_player.money -= argument2 * 100;

}
}
}
draw_rectangle(argument0 + 300, argument1, argument0 + 300 + width, argument1 + height, false);
draw_set_halign(fa_center);
draw_set_valign(fa_middle);
draw_set_color(c_black);
draw_text(argument0 + 300 + (width/2), argument1 + (height/2), "$" + string(argument2 * 100));
draw_set_color(c3);
draw_set_halign(fa_left);
draw_set_valign(fa_top);













//draw_rectangle(argument0, argument1, argument0 + width, argument1 + height, false);
