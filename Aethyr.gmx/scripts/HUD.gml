if instance_exists(player)
{
var pc
pc = (player.HP / player.mHP) * 100
draw_healthbar(view_wview,view_hview,player.view_wview+200,player.view_hview+10, pc, c_black, c_red, c_green, 0, true, true)
}
