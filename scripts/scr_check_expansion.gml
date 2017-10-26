///scr_check_expansion(gun)
hasLaser = false;
hasScope = false;
hasSilencer = false;
hasClip = false;
hasExploseive = false;
//Laser
if(expansion[argument0,0] == 1){
hasLaser = true;
}

if(expansion[argument0,1] == 1){
hasLaser = true;
}

//Scrope
if(expansion[argument0,0] == 2){
hasScope = true;
}

if(expansion[argument0,1] == 2){
hasScope = true;
}

//Silencer
if(expansion[argument0,0] == 3){
hasSilencer = true;
}

if(expansion[argument0,1] == 3){
hasSilencer = true;
}

//Extended Clip
if(expansion[argument0,0] == 4){
hasClip = true;
}

if(expansion[argument0,1] == 4){
hasClip = true;
}

//Explsovie Bullets
if(expansion[argument0,0] == 5){
hasExploseive = true;
}

if(expansion[argument0,1] == 5){
hasExploseive = true;
}


