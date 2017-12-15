//Select a gun
//Pistol
if(spr == 1){
    clipSize = 6;
    reloadTime = 0//room_speed * 1;
    dmg = 10;
    accuracy = 3;
    firerate = .4;
    shake = 0.5;
    knockback = .7;
    offsetX = 11;
    offsetY = 9;
    sound = revolver;
    scr_check_expansion(1);
}
//Uzi
if(spr == 0){
    clipSize = 32;
    reloadTime = 0//room_speed * 2;
    dmg = 6;
    accuracy = 7;
    firerate = 0.1;
    shake = 0.25;
    knockback = .5;
    offsetX = 12;
    offsetY = 10;
    sound = rifle_2;
    scr_check_expansion(0);
}
//SawnOff
if(spr == 2){
    clipSize = 1;
    reloadTime = room_speed *.5;
    dmg = irandom_range(5,10);
    accuracy = 7;
    firerate = 0.1;
    shake = 0.2;
    knockback = .8;
    offsetX = 10;
    offsetY = 10;
    sound = shotgun_with_click;
    scr_check_expansion(2);
}
//Ak47
if(spr == 3){
    clipSize = 32;
    reloadTime = 0//room_speed * 1;
    dmg = 12;
    accuracy = 8;
    firerate = 0.1;
    shake = 0.3;
    knockback = .6;
    offsetX = 10;
    offsetY = 8;
    sound = rifle;
    scr_check_expansion(3)
}
//Double Barrel
if(spr == 4){
    clipSize = 2;
    reloadTime = room_speed * 1;
    dmg = 25;
    accuracy = 5;
    firerate = .5;
    shake = 1;
    knockback = .9;
    offsetX = 6;
    offsetY = 10;
    sound = shotgun_no_click;
    scr_check_expansion(4);
}

//Glock
if(spr == 5){
    clipSize = 18;
    reloadTime = 0//room_speed * 1;
    dmg = 6;
    accuracy = 3;
    firerate = .2;
    shake = 0.05;
    knockback = .7;
    offsetX = 9;
    offsetY = 9;
    sound = glock;
    scr_check_expansion(1);
}
