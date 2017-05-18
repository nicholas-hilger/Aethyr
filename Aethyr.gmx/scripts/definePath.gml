sx = x
sy = y
fx = player.x
fy = player.y

if!(mp_grid_path(global.ai_grid,global.path,sx,sy,fx,fy,1)) return false
else
{
path_set_kind(global.path,1)
path_set_precision(global.path,8)

return true
}
