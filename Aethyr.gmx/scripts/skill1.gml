if(class = 0) //warrior
{
if(target != 0 and point_distance(target.x,target.y,x,y) <= attRng and mp >= 1 and stam >= 9)
{
att += 20
attack(target)
att -= 20
mp -= 1
stam -= 9
stmTime = -120
stmReg = 1/40
attTime = 0
}
}
else if(class = 1) //magus
{
if(target != 0 and target != aethCoag and point_distance(target.x,target.y,x,y) <= 100 and mp >= 2 and stam >= 2)
{
path_end()
mAttack(target)
mp -= 2
stam -= 2
}
}
else if (class = 2) //archer
{
if(target != 0 and point_distance(target.x,target.y,x,y) <= attRng and mp >= 1 and stam >= 5)
{
att -= 2
attack(target)
att += 2
with(target) stuck = choose(120,180,180,180,240,300)
mp -= 1
stam -= 5
}
}
else if(class = 3) //rogue
{
if(target != 0 and point_distance(target.x,target.y,x,y) <= attRng and mp >= 2 and stam >= 7)
{
flurry = 14
mp -= 2
}
}
