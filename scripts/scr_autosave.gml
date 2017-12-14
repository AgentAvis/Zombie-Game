if(file_exists("save.ini")){
file_delete("save.ini");
}



ini_open("save.ini");

ini_write_real("PlayerStats","wave",o_wave_control_avis.wave);
ini_write_real("PlayerStats","basecount",o_wave_control_avis.basecount);
ini_write_real("PlayerStats","wave_time",o_wave_control_avis.wave_time);
ini_write_real("PlayerStats","delay",o_wave_control_avis.delay);
ini_write_real("PlayerStats","hp",o_player.hp);
ini_write_real("PlayerStats","money",o_player.money);

/*
for(i = 0; i < o_gun.image_number; i++){
for(b = 0; b < 2; b++){
ini_write_real("PlayerStats","eB(" + string(i) + "," + string(b) + ")",o_player.eB[i,b]);
ini_write_real("PlayerStats","SA(" + string(i) + "," + string(b) + ")",o_player.SA[i,b]);
}
}
*/
ini_write_real("PlayerStats","healthkits",o_player.healthkits);

ini_write_real("PlayerStats","ammo[0]",o_gun.ammo[0]);
ini_write_real("PlayerStats","ammo[1]",o_gun.ammo[1]);
ini_write_real("PlayerStats","ammo[2]",o_gun.ammo[2]);
ini_write_real("PlayerStats","ammo[3]",o_gun.ammo[3]);
ini_write_real("PlayerStats","ammo[4]",o_gun.ammo[4]);

for(g = 0; g < 5; g++){
for(h = 0; h < 20; h++){
ini_write_real("PlayerStats","hasGun[" + string(g) + "," + string(h) + "]" ,o_gun.hasGun[g,h]);

}

}

for(i = 0; i < o_gun.image_number; i++){
for(b = 0; b < 2; b++){
ini_write_real("PlayerStats","expansion[" + string(i) + "," + string(b) + "]" ,o_gun.expansion[i,b]);
}
}
ini_close();

