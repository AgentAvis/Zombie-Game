///draw_sprite_area(x,y,x2,y2,sprite)

var xx = argument0;
var yy = argument1;
var xx2 = argument2;
var yy2 = argument3;
var spr = argument4

var xscale = (xx2 - xx)/sprite_get_width(spr);
var yscale = (yy2 - yy)/sprite_get_height(spr);


draw_sprite_ext(spr,0,xx,yy,xscale,yscale,0,c_white,1);
