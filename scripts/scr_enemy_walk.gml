//if grounded //if collision_circle(x,y,sight,o_player,true,false) and random (15) < 1
{
    
    if !phys {
        len = 0
        dir = 0
        walking = false
        if chase {
            walking = true
            dir = point_direction(x,y,o_player.x,y)
            len = walk_spd          
        }
        if flee {
            if point_distance(x,y,o_player.x,o_player.y) < 70 {
                len = walk_spd
                walking = true
                dir = point_direction(x,y,o_player.x,y) + 180
            }
            if point_distance(x,y,o_player.x,o_player.y) > 120 {
                len = walk_spd
                walking = true
                dir = point_direction(x,y,o_player.x,y)           
            }

        }

        dhsp = lengthdir_x(len, dir)
        if(dhsp > 0){
            image_xscale = 1;
        }else{
            image_xscale = -1;
        }
        
        if flee {
            
            if(o_player.x > x){
                image_xscale = 1;
            }else{
                image_xscale = -1;
            }             
        }
        
    } else {
        dir= point_direction(x,y,o_player.x,y);
        len = spd;
        
        hspd = lengthdir_x(len, dir);
        
        phy_position_x += hspd;
        
        if(hspd > 0){
        image_xscale = 1;
        }else{
        image_xscale = -1;
        }
    }

if !walking { hsp = lerp(hsp,dhsp,.05) }
hsp = lerp(hsp,dhsp,.01)
}

