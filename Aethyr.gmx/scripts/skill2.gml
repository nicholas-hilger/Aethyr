if(class = 0) //warrior
{
if(target != 0 and point_distance(target.x,target.y,x,y) <= attRng and mp >= 3 and stam >= 6)
{
att -= 2
attack(target)
with(target) attTime -= 20
att += 2
mp -= 3
stam -= 6
attTime = 0
}
}
else if(class = 1) //magus
{
if(target != 0  and target != aethCoag and point_distance(target.x,target.y,x,y) <= attRng and mp >= 7 and stam >= 2)
{
attack(target)
mAttack(target)
mp -= 7
stam -= 2
}
}
else if (class = 2) //archer
{
if(mp >= 5 and stam >= 10 and instance_exists(enPar))
{
repeat(2)
{
for(i = 0; i < instance_number(enPar); i++)
{
tar = instance_find(enPar,i)
if(point_distance(tar.x,tar.y,player.x,player.y) < 64) attack(tar)
}
mp -= 5
stam -= 10
attTime = 0
}
}
}
else if(class = 3) //rogue
{
if(target != 0 and point_distance(target.x,target.y,x,y) <= attRng and mp >= 4 and stam >= 5)
{
att--
attack(target)
att++
with(target) poiz = choose(120,120,120,180,300,300,600)
mp -= 4
stam -= 5
}
}
