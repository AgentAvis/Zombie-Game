if(file_exists("graphics.ini")){
file_delete("graphics.ini");
}

ini_open("graphics.ini");
ini_write_real("Options","fullscreen",oDj.fullscreen);
ini_write_real("Options","blood",oDj.blood);
ini_write_real("Options","windowWidth",oDj.resolutionW);
ini_write_real("Options","widowHeight",oDj.resolutionH);
ini_write_real("Options","parallax",oDj.parallax);
ini_close();

