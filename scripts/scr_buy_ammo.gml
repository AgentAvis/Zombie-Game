///scr_buy_ammo(x,y,price,id);
ammoMouseVar[argument3] = point_in_rectangle(window_x,window_y,(argument0 - 4.1 * sprite_get_width(s_guns_ammo)/2) * GUISCALE_X, (argument1 -  4.1 * sprite_get_height(s_guns_ammo)/2) * GUISCALE_Y, (argument0 + 4.1 * sprite_get_width(s_guns_ammo)/2) * GUISCALE_X, (argument1 + 4.1 * sprite_get_height(s_guns_ammo)/2) * GUISCALE_Y);


draw_set_color(c3);
if(ammoMouseVar[argument3]){
draw_set_color(c5);
}

if(selected[argument3]){
scr_buy_ammo_buttons(1005,301,argument2,argument3);
draw_set_color(c4);
}

draw_rectangle((argument0 - 4.1 * sprite_get_width(s_guns_ammo)/2) * GUISCALE_X,(argument1 -  4.1 * sprite_get_height(s_guns_ammo)/2) * GUISCALE_Y,(argument0 + 4.1 * sprite_get_width(s_guns_ammo)/2) * GUISCALE_X,(argument1 + 4.1 * sprite_get_height(s_guns_ammo)/2) * GUISCALE_Y, false);
draw_sprite_ext(s_guns_ammo,argument3,argument0 * GUISCALE_X,argument1 * GUISCALE_Y,4.1 * GUISCALE_X,4.1 * GUISCALE_Y,0,c_white,1);


if(ammoMouseVar[argument3]){

if(mouse_check_button_pressed(mb_left)){
selected[argument3] = true;
for(var i = 0; i< length; i++){
if(i != argument3){
selected[i] = false;


}
}
}
}

draw_set_color(c_black);
//draw_text(argument0, argument1 + 64, string(ammoMouseVar[argument3]));








//draw_set_color(c2);
//draw_rectangle_width(argument0 - 4.1 * sprite_get_width(s_guns_ammo)/2,argument1 -  4.1 * sprite_get_height(s_guns_ammo)/2,argument0 + 4.1 * sprite_get_width(s_guns_ammo)/2,argument1 + 4.1 * sprite_get_height(s_guns_ammo)/2, 4);
