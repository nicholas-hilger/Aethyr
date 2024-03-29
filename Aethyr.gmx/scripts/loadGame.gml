if(file_exists("AethyrSave.sav"))
{
ini_open("AethyrSave.sav")
global.aethyr = ini_read_real("Save1","currAethyr",0)
global.hpMod=  ini_read_real("Save1","hpMod",1)
global.mpMod = ini_read_real("Save1","mpMod",1)
global.attMod = ini_read_real("Save1","attMod",1)
global.mAttMod = ini_read_real("Save1","mAttMod",1)
global.hPotEffMod = ini_read_real("Save1","hPotEff",0.15)
global.mPotEffMod = ini_read_real("Save1","mPotEff",0.15)
global.runs = ini_read_real("Save1","runs",0)
global.kills = ini_read_real("Save1","kills",0)
global.enDiffMod = ini_read_real("Save1","enDiff",1)
global.aethyrSpent = ini_read_real("Save1","aethyrSpent",0)
player.mHPot = ini_read_real("Save1","hPotMax",1)
player.mMPot = ini_read_real("Save1","mPotMax",1)
player.mPot = player.mMPot
player.hPot = player.mHPot
global.hpCost = ini_read_real("Save1","hpCost",250)
global.mpCost = ini_read_real("Save1","mpCost",1200)
global.attCost = ini_read_real("Save1","attCost",250)
global.mAttCost = ini_read_real("Save1","mAttCost",250)
global.mHPotCost = ini_read_real("Save1","hPotMaxCost",5000)
global.mMPotCost = ini_read_real("Save1","mPotMaxCost",5000)
global.build = ini_read_real("Save1","alphBuild",0)
global.upgradeTier = ini_read_real("Save1","upgradeTier",1)
global.runs = ini_read_real("Save1","runs",0)
global.aethyrCollected = ini_read_real("Save1","aethyrCollected",0)
global.critMod = ini_read_real("Save1","critMod",1)
global.critDmg = ini_read_real("Save1","critDmg",1.5)
global.critChncCost = ini_read_real("Save1","critChncCost",850)
global.critDmgCost = ini_read_real("Save1","critDmgCost",850)
global.hPotEffCost = ini_read_real("Save1","hPotEffCost",1250)
global.mPotEffCost = ini_read_real("Save1","mPotEffCost",1250)
global.golemDead = ini_read_real("Save1","golemDead",0)
global.seconds = ini_read_real("Save1","sec",0)
global.minutes = ini_read_real("Save1","min",0)
global.hours = ini_read_real("Save1","hr",0)
global.defMod = ini_read_real("Save1","defMod",0)
global.mDefMod = ini_read_real("Save1","mDefMod",0)
global.defCost = ini_read_real("Save1","defCost",3000)
global.mDefCost = ini_read_real("Save1","mDefCost",3000)
global.lastTen = ds_list_create()
str = ini_read_string("Save1","lastTen","")
if(str != "") ds_list_read(global.lastTen,str)
global.banditDead = ini_read_real("Save1","banditDead",0)
ini_close()
}

else
{
}
