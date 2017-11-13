//if grounded //if collision_circle(x,y,sight,o_player,true,false) and random (15) < 1
{
    
    if !phys {
        dir = point_direction(x,y,o_player.x,y);;
        len = walk_spd;
        dhsp = lengthdir_x(len, dir)
        if(dhsp > 0){
            image_xscale = 1;
        }else{
            image_xscale = -1;
        }
        
    } else {
        dir= point_direction(x,y,o_player.x,y);;
        len = spd;
        
        hspd = lengthdir_x(len, dir);
        
        phy_position_x += hspd;
        
        if(hspd > 0){
        image_xscale = 1;
        }else{
        image_xscale = -1;
        }
    }
    
hsp = lerp(hsp,dhsp,.01)
}

