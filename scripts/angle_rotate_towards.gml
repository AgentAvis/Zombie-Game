///angle_rotate_towards(start direction, target direction, velocity);
//Returns a new angle rotated towards the target direction with the given velocity.
//If the given start is already within the velocity of the target, the angle will be snapped exactly and returned.

var _start = argument0;
var _target = argument1;
var _velocity = argument2;
var _direction = noone;

_direction = ((((_start - _target) mod 360) + 540) mod 360) - 180;

if(abs(_direction)<_velocity)
    return(_target);
else
{
    return(_start-_velocity*sign(_direction));
}
