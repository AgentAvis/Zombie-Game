ini_open("save.ini");
o_wave_control_avis.wave = ini_read_real("PlayerStats","wave",0);
o_wave_control_avis.basecount = ini_read_real("PlayerStats","basecount",0);
o_wave_control_avis.wave_time = ini_read_real("PlayerStats","wave_time",0);
o_wave_control_avis.delay = ini_read_real("PlayerStats","delay",0);
o_player.hp = ini_read_real("PlayerStats","hp",0);
o_player.money = ini_read_real("PlayerStats","money",0);
o_player.healthkits = ini_read_real("PlayerStats","healthkits",0);
o_gun.ammo[0] = ini_read_real("PlayerStats","ammo[0]",0);
o_gun.ammo[1] = ini_read_real("PlayerStats","ammo[1]",0);
o_gun.ammo[2] = ini_read_real("PlayerStats","ammo[2]",0);
o_gun.ammo[3] = ini_read_real("PlayerStats","ammo[3]",0);
o_gun.ammo[4] = ini_read_real("PlayerStats","ammo[4]",0);

for(g = 0; g < 5; g++){
for(h = 0; h < 20; h++){
o_gun.hasGun[g,h] =  ini_read_real("PlayerStats","hasGun[" + string(g) + "," + string(h) + "]" ,0);
}
}

for(i = 0; i < o_gun.image_number; i++){
for(b = 0; b < 2; b++){
o_gun.expansion[i,b] =  ini_read_real("PlayerStats","expansion[" + string(i) + "," + string(b) + "]" ,0);
}
}
