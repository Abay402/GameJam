/// @desc Initialize and set variables 

// Set variables that will be used for the menu ui
w = 150;
h = 300;
winW = window_get_width();
winH = window_get_height();
opBorder = 8;
opSpace = 50;

pos = 0;

// Create an array for all the different menu options
opt[0, 0] = "Start Game";
opt[0, 1] = "Settings";
opt[0, 2] = "Quit Game";
opt[1, 0] = "Window Size";
opt[1, 1] = "Brightness";
opt[1, 2] = "Controls";
opt[1, 3] = "Back";
opt[2, 0] = "Choose the size";
opt[2, 1] = "1280 x 780";
opt[2, 2] = "1024 x 720";
opt[2, 3] = "840 x 480";
opt[2, 4] = "Back";
opLength = 0;
menuLvl = 0;
