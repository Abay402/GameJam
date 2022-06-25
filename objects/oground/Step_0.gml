/// @desc Collision and boolean checks


// check to see if ground object collides with the player
if (place_meeting(x,y-1,oPlayer))
{
	// if it does set the alarm
	alarm_set(0,3*room_speed);
	// and set ground ID to equal to the ID of the ground object
	// that the player is colliding with
	groundID = id;	
	
}

// check to see if isMoving bool is true
if (isMoving)
{
	// if it is true than x will update based on the hsp
	x += hsp;	
	
}


