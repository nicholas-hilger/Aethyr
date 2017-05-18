notMe = argument0
me = argument1
if(collider and other.collider)
{
if(notMe = player)
{
motion_set(point_direction(x,y,-player.xprevious,-player.yprevious),1)
jiggle = 3
}
else
{
if(notMe.id > me.id)
{
move = choose(0,1)
recalcT = 0
recalc = irandom(10) + 5



if(!move) 
{
recalcT = irandom(30) + 5
motion_set(0,0)
}
else 
{
if(jiggle = 0)
jiggle = 10
dir = -other.direction
}
}
}
}
