/// @desc Collision with player

// If the player and coin object collide with one another
// the score will be updated and a sound effect will be played 
global.score++;
audio_play_sound(soCoin,1,0);
instance_destroy();