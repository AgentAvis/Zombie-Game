if collision_circle(x,y,sight,o_player,true,false)
{
    
    if !phys {
        dir = point_direction(x,y,o_player.x,y);;
        len = walk_spd;
        hsp = lengthdir_x(len, dir);
        if(hsp > 0){
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

}
