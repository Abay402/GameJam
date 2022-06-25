/// @desc Draw Menu to screen

var _newW = 0;
for (var i = 0; i < opLength; i ++)
{
	var _opW = string_width(opt[menuLvl, i]);
	_newW = max(_newW, _opW);
	
	
}
w = _newW + opBorder * 2;

h = opBorder * 2 + string_height(opt[0,0]) + (opLength - 1) * opSpace * 1.25;

x = camera_get_view_x(view_camera[0]) + camera_get_view_width(view_camera[0]) / 2 - w / 2;
y = camera_get_view_y(view_camera[0]) + camera_get_view_height(view_camera[0]) / 2 - h / 2;

draw_sprite_ext(sprite_index, image_index, x, y, w/sprite_width, h/sprite_height, 0, c_white, 1);


draw_set_valign(fa_top);
draw_set_halign(fa_left);

for (var i = 0; i < opLength; i ++)
{
	var _c = c_white
	if pos == i 
	{
		_c = c_yellow;
	}

	draw_text_color(x+opBorder,y+opBorder + opSpace*i, opt[menuLvl, i], _c, _c, _c, _c, 1);	
	
}

// Draw the Menu text to the screen
font = draw_get_font();
draw_set_font(fMenu);
draw_set_colour(c_white);
draw_text_transformed(75,35,"Just Jump",1,1,0);

draw_set_colour(c_white);

draw_text_transformed(900,35,"Highscores:",1,1,0);
draw_set_font(font);
draw_highscore(900,90,1300,400);

draw_text(1000,450,"Press C to clear highscores!");

