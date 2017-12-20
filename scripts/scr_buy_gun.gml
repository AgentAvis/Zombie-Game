///scr_buy_gun(x,y,gunId,price,initialAmmo,name,type,sprID)
buyGunButton[argument2] = point_in_rectangle(window_x,window_y,(argument0 + 277) * GUISCALE_X, (argument1 + 8) * GUISCALE_Y, (argument0 + gbWidth) * GUISCALE_X , (argument1 + gbHeight) * GUISCALE_Y);


draw_set_color(c5);
draw_rectangle(argument0 * GUISCALE_X, argument1 * GUISCALE_Y, (argument0 + gWidth) * GUISCALE_X, (argument1 + gHeight) * GUISCALE_Y, false);
draw_sprite_ext(s_guns_gui,argument7,(argument0 + 163) * GUISCALE_X,(argument1 + 25) * GUISCALE_Y,6.84 * GUISCALE_X,6.84 * GUISCALE_Y,0,c_white,1);
draw_sprite_ext(s_guns_ammo,argument2,(argument0 + 32) * GUISCALE_X,(argument1 + 34) * GUISCALE_Y,3.64 * GUISCALE_X,3.64 * GUISCALE_Y,0,c_white,true);
draw_set_color(c_black);
draw_text_transformed((argument0 + 59) * GUISCALE_X, (argument1 + 32) * GUISCALE_Y,"x" + string(argument4), GUISCALE_X,GUISCALE_Y,0);
draw_set_color(c4)
draw_rectangle((argument0 + 277) * GUISCALE_X, (argument1 + 8) * GUISCALE_Y, (argument0 + gbWidth) * GUISCALE_X , (argument1 + gbHeight) * GUISCALE_Y, false);
draw_set_halign(fa_center);
draw_set_valign(fa_middle);
draw_set_color(c_black);
draw_text_transformed((argument0 + ((gbWidth + 277)/2)) * GUISCALE_X, (argument1 + ((gbHeight + 8)/2)) * GUISCALE_Y, "$" + string(argument3), GUISCALE_X,GUISCALE_Y,0);
draw_set_color(c3);
draw_set_halign(fa_left);
draw_set_valign(fa_top);

draw_set_color(c_black);
draw_set_halign(fa_center);
draw_text_transformed((argument0 + 157) * GUISCALE_X, (argument1 + 51) * GUISCALE_Y, string(argument5), GUISCALE_X,GUISCALE_Y,0);
draw_set_halign(fa_left);


if(buyGunButton[argument2]){
if(mouse_check_button_pressed(mb_left)){
if(o_player.money >= argument3){

for(g = 0; g < 20; g++){
if(g != argument6){
o_gun.hasGun[argument2,g]= false;
}
}

o_gun.expansion[argument2,0] = 0;
o_gun.expansion[argument2,1] = 0;
o_gun.spr = argument7;
o_gun.hasGun[argument2,argument6]= true;
o_player.money -= argument3;
o_gun.ammo[argument2] += argument4;
}
}
}

