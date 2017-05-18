if(file_exists("AethyrConfig.sav"))
{
ini_open("AethyrConfig.sav")
global.musVol = ini_read_real("Save1","musicVol",0.5)
global.sfxVol = ini_read_real("Save1","sfxVol",0.05)
global.gibsOn = ini_read_real("Save1","gibs",1)
global.bloodOn = ini_read_real("Save1","blood",1)
global.parallax = ini_read_real("Save1","parallax",1)
ini_close()
}
