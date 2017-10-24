//ScGlow(x,y,alpha,radius,color)

var xxxx = argument0 + 1;
var yyyy = (argument1 + 1);
//if object_is_ancestor(id,oPawn) { yyyy = (argument1 + 1)-(sprite_height/2) }

var dglowmag = argument3*4;

//if !instance_exists(oLight) { instance_create(x,y,oLight) }
//if instance_exists(oLight) {
    //with (oLight) {
       /* if global.usesurfaces {
            surface_set_target(lightsurf);
            draw_set_blend_mode(bm_subtract);
            //draw_set_alpha(other.glowalpha)
            //draw_circle_color(other.x,other.y,other.argument3,colortouse,c_black,false)
            //draw_sprite_ext(sGlow,0,other.x,other.y,1,1,0,colortouse,other.glowalpha*3);
            draw_sprite_stretched_ext(sGlow,0,xxxx-(dglowmag/2),yyyy-(dglowmag/2),dglowmag,dglowmag,argument4,argument2*3)
            draw_set_alpha(1)    
            draw_set_blend_mode(bm_normal);    
            surface_reset_target();
        }
    
    //}*/
//}

draw_set_alpha(clamp(argument2,0,1));
draw_set_blend_mode(bm_add);
draw_circle_colour(xxxx, yyyy, argument3, argument4, c_black, 0);
draw_set_blend_mode(bm_normal);
draw_set_alpha(1);
