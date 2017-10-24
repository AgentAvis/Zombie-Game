if collision_circle(x,y,sight,o_player,true,false)
{
  
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
