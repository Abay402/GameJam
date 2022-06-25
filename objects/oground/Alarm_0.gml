/// @desc Execute once alarm goes off 

// Destroy the specific ground object and play a sound effect
instance_destroy(groundID);
audio_play_sound(soBreak,1,0);