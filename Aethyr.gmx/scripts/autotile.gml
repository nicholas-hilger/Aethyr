//Original script by Nocturne

var tile, iw,w_left,w_right,w_up,w_down
iw = sprite_width

w_left = place_meeting(x-iw,y,land)
w_right = place_meeting(x+iw,y,land)
w_down = place_meeting(x,y+iw,land)
w_up = place_meeting(x,y-iw,land)
tile = 99
    if(w_right) tile = 0
    if(w_left) tile = 1
    if(w_up) tile = 2
    if(w_down) tile = 3
    if(w_right and w_down) tile = 4
    if(w_left and w_down) tile = 5
    if(w_left and w_up) tile = 6
    if(w_right and w_up) tile = 7
    if(w_left and w_right) tile = 13
    if(w_up and w_down) tile = 10
    if(w_left and w_right and w_up) tile = 8
    if(w_left and w_right and w_down) tile = 9
    if(w_up and w_left and w_down) tile = 11
    if(w_up and w_right and w_down) tile = 12
    if(w_left and w_up and w_down and w_right) tile = 14
    
return tile

