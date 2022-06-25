/// @desc Make the camera follow the player


//Check to see if the player object exists
if (instance_exists(follow))
{
	//if it does exist then the xTo and yTo variables will = to the players x and y
	xTo = follow.x;
	yTo = follow.y;
	
}

// the x and y of the camera is updated
x += (xTo - x) / 25;
y += (yTo - y) / 25;

x = clamp(x,view_w_half,room_width-view_w_half);
y = clamp(y,view_h_half,room_height-view_h_half);



// the camera view position is updated
camera_set_view_pos(cam,x-view_w_half,y-view_h_half);