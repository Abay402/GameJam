/// @desc Update player movement and collision 

// Set local variables 
key_left = keyboard_check(ord("A"));
key_right = keyboard_check(ord("D"));
key_jump = keyboard_check_pressed(vk_space);
var move = key_right - key_left;

hsp = move * wlksp;
vsp = vsp + grv;

// Check to see if player is colliding with the ground 
// and pressing spacebar at the same time
if (place_meeting(x,y+1,oGround)) && (key_jump)
{
	// player vertical speed is increased 
	vsp = -12.5;
	// jump sound effect is played
	audio_play_sound(soJump,1,0);
}

// Check to see if player is collding with the ground on the sides
if (place_meeting(x+hsp,y,oGround))
{
	
	while(!place_meeting(x+sign(hsp),y,oGround))
	{
		x  = x + sign(hsp);	
		
	}
	
	// if the player is colliding with the ground then the player hsp is equal to 0
	hsp = 0;	
	
}

// Check to see if player is collding with the ground on the top and bottom
if (place_meeting(x,y+vsp,oGround))
{
	
	while(!place_meeting(x,y+sign(vsp),oGround))
	{
		y  = y + sign(vsp);	
		
	}
	// if the player is colliding with the ground then the player hsp is equal to 0
	vsp = 0;	
	
}

// Code to make the collision less buggy and more smooth 
if(place_meeting(x,y,oGround))
{
	for(var i = 0; i < 1000; i++)
	{
		if(!place_meeting(x + i,y,oGround))
		{
			x += i;
			break;
		}
		if(!place_meeting(x - i,y,oGround))
		{
			x -= i;
			break;
		}
		if(!place_meeting(x,y - i,oGround))
		{
			y -= i;
			break;
		}
		if(!place_meeting(x,y + i,oGround))
		{
			y += i;
			break;
		}
	}	
}



// Player x and y is updated based on the vsp and hsp
y = y + vsp;
x = x + hsp;


