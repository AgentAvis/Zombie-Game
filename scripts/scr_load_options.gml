if(file_exists("graphics.ini")){
ini_open("graphics.ini");
oDj.fullscreen = ini_read_real("Options","fullscreen",0);
oDj.blood = ini_read_real("Options","blood",1);
oDj.resolutionW = ini_read_real("Options","windowWidth",1600);
oDj.resolutionH = ini_read_real("Options","widowHeight",900);
oDj.parallax = ini_read_real("Options","parallax",1);
ini_close();
}else{


}



