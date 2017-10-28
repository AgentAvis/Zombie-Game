///scr_draw_expansion_desc(x,y,name,description,price)
var description = string(argument2) + ":#$" + string(argument4) + "#" + string(argument3);
var padding = 5;
var rectW = string_width_ext(description,-1,300);;
var rectH = string_height_ext(description,-1,300);
var gui_x = argument0;
var gui_y = argument1;

draw_set_color(c5);
draw_rectangle(gui_x - padding,gui_y,gui_x + rectW + padding, gui_y + rectH + padding, false);
draw_set_color(c_black);
//draw_text_ext(gui_x + sprite_get_width(s_tech)/2 + padding, gui_y + padding + sprite_get_height(s_tech)/2, description, 3, rectW);
draw_text_ext(gui_x , gui_y + padding , description, -1, 300);
//draw_text(gui_x + sprite_get_width(s_tech)/2 + padding, gui_y + padding + sprite_get_height(s_tech)/2, description);
draw_rectangle(gui_x - padding,gui_y,gui_x + rectW + padding, gui_y + rectH + padding, true);

