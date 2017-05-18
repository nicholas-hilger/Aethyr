/*
this script will generate the walls and contents of the dungeon.
each floor will check around itself for empty places, and then place walls objects there
then each floor object will have a chance of spawning an enemy or a treasure chest

argument0 = floor objects
argument1 = grid size
argument2 = wall object
*/

with (argument0) { //with all floor objects
    for (i=-(argument1);i<=argument1;i+=argument1) { //selecting all the blocks around them
        for (j=-(argument1);j<=argument1;j+=argument1) {
            if place_empty(x+i,y+j) { //if there's not a floor object within the space
                instance_create(x+i,y+j,argument2); //create a wall
            }
        }
    }
}

//spawn the player in the middle of the room
player.x = room_width/2
player.y = room_height/2
if(instance_exists(familiar))
{
familiar.x = player.x
familiar.y = player.y
}
global.ai_grid = mp_grid_create(0,0,room_width/16,room_height/16,16,16)
global.path = path_add()
mp_grid_add_instances(global.ai_grid,wall,1)


view_visible[0] = 0
view_visible[1] = 1
for(i = 0; i < 60 + round(6*global.enDiffMod); i++)
{
with(instance_find(land,irandom(instance_number(land))))
{
if(point_distance(x,y,player.x,player.y) >= 180)
{

if(player.area = 1)
{
enType = choose(1,1,1,1,1,2,2,2,2,2,3,3,4)
if(enType = 1) instance_create(x,y,slime)
else if(enType = 2) instance_create(x,y,zed)
else if(enType = 3) instance_create(x,y,snek)
else instance_create(x,y,robe)
}
else if(player.area = 2)
{
enType = choose(1,1,1,1,1,1,2,2,3,3,3,3,4)
if(enType = 1) instance_create(x,y,zed)
else if(enType = 2) instance_create(x,y,revBandit)
else if(enType = 3) instance_create(x,y,snek)
else instance_create(x,y,shotBandit)
}
else if(player.area = 3)
{
enType = choose(1,1,1,1,1,2,2,2,3,3,4,4)
if(enType = 1) instance_create(x,y,villager)
else if(enType = 2) instance_create(x,y,bloater)
else if(enType = 3) instance_create(x,y,longarm)
else if(enType = 4) instance_create(x,y,chompy)
}
}
else other.i--
}
}

global.enPop = instance_number(enPar)

repeat(irandom(30) + 40)
{
with(instance_find(land,irandom(instance_number(land))))
{
if(!place_meeting(x,y,breakablePar))  instance_create(x,y,breakablePar)
}
}

with(enPar) definePath()

chestNum = choose(1,1,1,1,1,1,1,2,2,3,3,4,5)
repeat(chestNum) with(instance_find(land,irandom(instance_number(land)))) instance_create(x,y,chest)
