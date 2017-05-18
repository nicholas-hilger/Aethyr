n = irandom(15)

if(n = 0) trait = "No Trait"
else if(n = 1)
{
trait = "Thick-Skinned: HP+"
mHp += 3
}
else if(n = 2)
{
trait = "Clumsy: AttSp-"
attSpd += 5
}
else if(n = 3)
{
trait = "Arcane Abuser: MP+, HP-"
mMp += irandom(3)  + 2
mHp -= irandom(3) + 2
}
else if(n = 4)
{
trait = "Bruiser: Mag.Att-, Att+"
mAtt -= irandom(3) + 2
att += irandom(3) + 2
}
else if(n = 5)
{
trait = "Gluttonous: HP+, Def+, AttSpd-"
attSpd += 10
mHp += 8
def++
}
else if(n = 6)
{
trait = "Cracked Skull: MP-, HP-"
mHp -= irandom(8) + 2
mMp -= irandom(8) + 2
}
else if(n = 7)
{
i = choose(0,1)
if(i = 0)
{
trait = "Demigod: All Stats+"
mHp += irandom(10) + 10
mMp += irandom(3) + 2
att += irandom(2) + 3
mAtt += irandom(2) + 3
def += irandom(1)
mDef += irandom(1)
}
else
{
trait = "Aethyric Anomaly: Insta-Aethyr"
}
}
else if(n = 8)
{
trait = "Glass Bones: AttSpd+, HP-, Def-"
attSpd -= 10
mHp -= 10
def--
}
else if(n = 9)
{
trait = "Mislabeled Exercise: HP = Att, Att = HP"
f = att
att = mHp
mAtt = mHp
mHp = f

}
else if(n = 10)
{
trait = "Slave to the Blood God: HP+, Att+, Def-, Crit-"
mHp += irandom(5) + 5
att += irandom(6) + 4
def = 0
mDef = 0
crit -= 5
}
else if(n = 11)
{
trait = "Endurance Training: Def-, Att-, AttSpd+"
def--
att -= irandom(3) + 3
attSpd -= 3
}
else if(n = 12)
{
trait = "Lumbering Lummox: AttSpd--, Att++, HP-"
att += irandom(5) +5
hp -= irandom(5) + 5
mAtt = att
attSpd = 70
}
else if(n = 13)
{
trait = "Lucky: Crit+"
crit += 5
}
else if(n = 14)
{
trait = "Lucky?: Crit+, Random Stat-"
crit += 5
s = irandom(5)
if(s = 0) mHp -= 5
else if(s = 1) mMp -= 10
else if(s = 2) att -= 3
else if(s = 3) mAtt -= 3
else if(s = 4) def -= 2
else if(s = 5) mDef -= 2
}
else if(n = 15)
{
trait = "Balanced: All Stats Balanced"
}
