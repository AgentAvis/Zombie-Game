///scr_gradual_rotate(turnspd,targang);
/*
turnspd: the speed the object will rotate towards the target angle
targang: the target angle to rotate towards
*/
if (argument1 > 360)
{argument1 -= 360;}
if (argument1 < 0)
{argument1 += 360;}

var anti = argument1-image_angle;
var clock = image_angle+(360-argument1);
if (anti < 0)
{anti += 360;}
if (clock > 360)
{clock -= 360;}

if (anti < clock)
{
    if (anti < argument0)
    {image_angle = argument1;}
    else
    {
        image_angle += argument0;
        if (image_angle > 360)
        {image_angle -= 360;}
    }
}
else
{
    if (clock < argument0)
    {image_angle = argument1;}
    else
    {
        image_angle -= argument0;
        if (image_angle < 0)
        {image_angle += 360;}
    }
}
