/// @desc Update the menu 

// Set local variables 
key_up = keyboard_check_pressed(ord("W"));
key_down = keyboard_check_pressed(ord("S"));
key_space = keyboard_check_pressed(vk_space);

opLength = array_length(opt[menuLvl]);

pos += key_down - key_up;

// if spacebar key is pressed then play sound effect
if (key_space)
{
	audio_play_sound(soStart,1,0);	
}

if pos >= opLength 
{
	pos = 0;

}

if pos < 0 
{
	pos = opLength -1;

}

if key_space{
	
var _sml = menuLvl;
	
// Switch function that will execute different lines of code
// dependant on what is selected 
switch(menuLvl){

	case 0:
		switch(pos)
		{
	
		case 0: room_goto(Room1); break;
	
		case 1: menuLvl = 1; break;
	
		case 2: game_end(); break;
		
		}
		break;
		
	case 1:
		switch(pos){
			
			case 0:
				menuLvl = 2;
				break;
				
			case 1:
				
				break;
				
			case 2:
				break;
				
			case 3:
			
				
				menuLvl = 0;
			
				
				break;	
			
		}
		
	case 2:
		switch(pos){
			
		case 0:
			
			break;
			
		case 1:
			
			break;
			
		case 2: 
		
			break;
			
		case 3:
	
			break;
			
		case 4:
			menuLvl = 0;
			break;
			
		}
				
}
if _sml != menuLvl {pos = 0};

opLength = array_length(opt[menuLvl]);
}