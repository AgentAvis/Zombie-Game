///scr_buy_gun(x,y,gunId,price,initialAmmo,name)
buyGunButton[argument2] = point_in_rectangle(window_x,window_y,argument0 + 277, argument1 + 8, argument0 + gbWidth , argument1 + gbHeight);

draw_set_color(c5);
draw_rectangle(argument0, argument1, argument0 + gWidth, argument1 + gHeight, false);
draw_sprite_ext(s_guns_gui,argument2,argument0 + 163,argument1 + 25,6.84,6.84,0,c_white,1);
draw_sprite_ext(s_guns_ammo,argument2,argument0 + 32,argument1 + 34,3.64,3.64,0,c_white,true);
draw_set_color(c_black);
draw_text(argument0 + 59, argument1 + 32,"x" + string(argument4));
draw_set_color(c4)
draw_rectangle(argument0 + 277, argument1 + 8, argument0 + gbWidth , argument1 + gbHeight, false);
draw_set_halign(fa_center);
draw_set_valign(fa_middle);
draw_set_color(c_black);
draw_text(argument0 + ((gbWidth + 277)/2), argument1 + ((gbHeight + 8)/2), "$" + string(argument3));
draw_set_color(c3);
draw_set_halign(fa_left);
draw_set_valign(fa_top);

draw_set_color(c_black);
draw_set_halign(fa_center);
draw_text(argument0 + 157, argument1 + 51, string(argument5));
draw_set_halign(fa_left);


if(buyGunButton[argument2]){
if(mouse_check_button_pressed(mb_left)){
if(o_player.money >= argument3){
o_gun.hasGun[argument2] = true;
o_player.money -= argument3;
o_gun.ammo[argument2] += argument4;
}
}
}

