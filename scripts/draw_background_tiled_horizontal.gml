#define draw_background_tiled_horizontal
///draw_background_tiled_horizontal(back,x,y)
/***************************************************
  Usage :   draw_background_tiled_horizontal(back,x,y)
  Arguments :   argument0   ==  background
                argument1   ==  x
                argument2   ==  y
  Event :   draw event
 ***************************************************/
 
 var back,width,xx,yy,left,right,i;
 
 back=argument0;
 width=background_get_width(back);
 xx=argument1;
 yy=argument2;
 left=-1;
 right=view_xview[view_current]/width+view_wview[view_current]/width+1;
 if (view_enabled)
 {
    for (i=left; i<right; i+=1)
    {
        draw_background(back,xx mod width+width*i,yy);
    };
 }
 else
 {
    for (i=-1; i<room_width/width+1; i+=1)
    {
        draw_background(back,xx mod width+width*i,yy);
    };
 };
 

#define draw_background_tiled_vertical
/***************************************************
  Usage :   draw_background_tiled_vertical(back,x,y)
  Arguments :   argument0   ==  background
                argument1   ==  x
                argument2   ==  y
  Event :   draw event
 ***************************************************/
 
 var back,height,xx,yy,up,down,i;
 
 back=argument0;
 height=background_get_height(back);
 xx=argument1;
 yy=argument2;
 up=-1;
 down=view_yview[view_current]/height+view_hview[view_current]/height+1;
 if (view_enabled)
 {
    for (i=up; i<down; i+=1)
    {
        draw_background(back,xx,yy mod height+height*i);
    };
 }
 else
 {
    for (i=-1; i<room_height/height+1; i+=1)
    {
        draw_background(back,xx,yy mod height+height*i);
    };
 };
 