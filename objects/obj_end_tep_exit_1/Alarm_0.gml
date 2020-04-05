/// @description Insert description here
// You can write your code in this editor
pressed = false;
draw_set_color(c_white);
bounce = false;
tick = 0;

with (obj_ship_2)
{
	x = xstart;
	y = ystart;
	tick = 1.0;
	exited = false;
	message_index = 0;
	delay = 2;
	hspeed = 10;
	vspeed = 10;
}