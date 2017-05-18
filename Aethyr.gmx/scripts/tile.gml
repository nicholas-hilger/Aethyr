if(place_meeting(x+17,y,land)) image_index = 0
else if(place_meeting(x-17,y,land)) image_index = 1
else if(place_meeting(x,y-17,land)) image_index = 2
else if(place_meeting(x,y+17,land)) image_index = 3  
else if(place_meeting(x+17,y,land) and place_meeting(x,y-17,land)) image_index = 4
else if(place_meeting(x-17,y,land) and place_meeting(x,y+17,land)) image_index = 5
else instance_destroy()
