///draw_text_font(x,y,string,color,font) 
orig_c = draw_get_color()

draw_set_color(argument3)
draw_set_font(argument4)
draw_text(argument0,argument1,string(argument2))

//reset to originals
draw_set_color(orig_c)
draw_set_font(-1)
