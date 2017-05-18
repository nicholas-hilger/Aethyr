if(class = 0) //warrior
{
if(mp >= 5 and stam >= 10 and instance_exists(enPar))
{
for(i = 0; i < instance_number(enPar); i++)
{
tar = instance_find(enPar,i)
if(point_distance(tar.x,tar.y,player.x,player.y) < 64) attack(tar)
}
stmTime = -100
stmRgn = 1/40
mp -= 5
stam -= 10
attTime = 0
}
}
else if(class = 1) //magus
{
if(mp >= 9 and stam >= 8)
{
instance_create(x,y,chainLight)
mp -= 9
stam -= 8
}
}
else if (class = 2) //archer
{
if(target != 0 and point_distance(target.x,target.y,x,y) <= attRng and mp >= 4 and stam >= 11)
{
att += 4
attack(target)
att -= 4
blChn = irandom(99) + 1
if(blChn < 40) with(target) bld = choose(120,120,180,180,180,300,300,600)
mp -= 4
stam -= 11
}
}
else if(class = 3) //rogue
{
if(mp >= 6 and stam >= 13)
{
dodge += 25
hidden = 300
mp -= 6
stam -= 13
}
}
