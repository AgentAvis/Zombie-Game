
scr_get_input();
//get the axis
var xaxis = (right_key - left_key);
var yaxis = (down_key - up_key);

//Get Direction
dir = point_direction( 0, 0, xaxis, yaxis);

//get Length

if (xaxis == 0 and yaxis = 0) {
 len = 0
 moving = false
}else
{
moving = true
len = spd
}

//Move
hspd = lengthdir_x(len, dir);
vspd = lengthdir_y(len,dir);

//Move
phy_position_x += hspd;



//Control the sprite
image_speed = .2;


if (len == 0) {
image_index = 0
}
/*
if (vspd > 0){
    sprite_index = spr_player_down;
} else if  (vspd < 0){
sprite_index = spr_player_up;
}
*/
if (hspd > 0){
    
    image_xscale = 1
    } else if (hspd < 0) {
     
    image_xscale = -1;
    }
    

 
