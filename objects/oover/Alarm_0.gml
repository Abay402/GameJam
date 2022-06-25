/// @desc Execute when alarm goes off 

// Once alarm goes off the player is sent back to the Menu screen
room_goto(rMenu);
// Player is asked for initials for highscore
name = get_string("Please Enter your initials: ", "");
highscore_add(name,global.score);