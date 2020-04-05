/// @description Insert description here
// You can write your code in this editor
draw_self();
draw_set_color(c_lime);
var length_x = x + hspeed * room_speed;
var length_y = y + vspeed * room_speed;



var oob = false;
if (length_x > xstart + x_bound) 
{
	// y = x * tan theta
	length_x = xstart + x_bound;
	length_y = y - ((length_x - x ) * dtan(image_angle));
	oob = true;
}
else if (length_x < xstart - x_bound) 
{ 
	length_x = xstart - x_bound;
	length_y = y - ((length_x - x ) * dtan(image_angle));
	oob = true;
}

if (length_y > ystart + y_bound) 
{
	length_y = ystart + y_bound;
	length_x = x - ((length_y -y) / dtan(image_angle));
	oob = true;
}
else if (length_y < ystart - y_bound) 
{
	length_y = ystart - y_bound;
	length_x = x - ((length_y -y) / dtan(image_angle));
	oob = true;
}
var pressed = false;
if (instance_exists(obj_velocity_1)) pressed = obj_velocity_1.pressed;
if (instance_exists(obj_velocity_2)) pressed = obj_velocity_2.pressed;
if (instance_exists(obj_velocity_3)) pressed = obj_velocity_3.pressed;

if (!oob && pressed) 
{
	draw_line_width( length_x ,length_y, length_x- lengthdir_x(15, image_angle - 30), length_y - lengthdir_y(15, image_angle - 30), 3);
	draw_line_width( length_x, length_y, length_x - lengthdir_x(15, image_angle + 30), length_y- lengthdir_y(15, image_angle + 30), 3);
}	


draw_line_width(x, y, length_x, length_y, 3);
draw_set_color(c_white);