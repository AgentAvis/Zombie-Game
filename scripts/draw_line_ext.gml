///draw_line_ext(x,y,x2,y2,width,color,alpha,alpha2)

var _x1 = argument0;
var _y1 = argument1;
var _x2 = argument2;
var _y2 = argument3;
var _width = argument4/2;
var _color = argument5;
var _alpha1 = argument6;
var _alpha2 = argument7;

slope = point_direction(_x1,_y2,_x1,_y2)

draw_primitive_begin(pr_trianglestrip);
draw_vertex_colour(_x1+lengthdir_x(_width,slope+90), _y1+lengthdir_y(_width,slope+90), _color, _alpha1);
draw_vertex_colour(_x1+lengthdir_x(_width,slope-90), _y1+lengthdir_y(_width,slope-90), _color, _alpha1);
draw_vertex_colour(_x2+lengthdir_x(_width,slope+90), _y2+lengthdir_y(_width,slope+90), _color, _alpha2);
draw_vertex_colour(_x2+lengthdir_x(_width,slope-90), _y2+lengthdir_y(_width,slope-90), _color, _alpha2);
draw_primitive_end();
