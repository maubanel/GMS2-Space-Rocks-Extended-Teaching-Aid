/// @description Insert description here
// You can write your code in this editor

var start_x = 12;
var start_y = 250;
var line_height = 18;

draw_self();
draw_set_color(c_white);
draw_set_font(fnt_uni_reg);
draw_set_halign(fa_left);

// Sets ship friction
//ship_friction = .005;
draw_text(start_x, start_y, "// obj_ship Create Event \n// Sets ship friction");
start_y += line_height * 2.5 ;
draw_code(start_x, start_y, c_user_var, "ship_friction ", c_white, "= ", c_internal_var, string(ship_friction));

start_y += line_height * 2;
draw_code(start_x, start_y, c_white, "// obj_ship Step Event");


// Add friction
//	speed = speed - ship_friction;


start_y += line_height * 2 ;
draw_code(start_x, start_y, c_white, "// Add friction");
start_y += line_height;
draw_code(start_x, start_y, c_lime, "speed", c_white, " = ", c_lime, "speed", c_white, " - ", c_user_var, "ship_friction", c_white, ";");

start_y += line_height * 2 ;
draw_code(start_x, start_y, c_white, "// Variables in obj_ship: ");
start_y += line_height;
draw_code(start_x, start_y, c_lime, "image_angle", c_white, " = ", c_internal_var, string(image_angle));
start_y += line_height;
draw_code(start_x, start_y, c_lime, "speed", c_white, " = ", c_internal_var, string(speed));
start_y += line_height;
draw_code(start_x, start_y, c_lime, "direction", c_white, " = ", c_internal_var, string(direction));


draw_set_color(c_lime);
var length_x = x + hspeed * room_speed;
var length_y = y + vspeed * room_speed;



var oob = false;
if (length_x > xstart + x_bound) 
{
	// y = x * tan theta
	length_x = xstart + x_bound;
	length_y = y - ((length_x - x ) * dtan(direction));
	oob = true;
}
else if (length_x < xstart - x_bound) 
{ 
	length_x = xstart - x_bound;
	length_y = y - ((length_x - x ) * dtan(direction));
	oob = true;
}

if (length_y > ystart + y_bound) 
{
	length_y = ystart + y_bound;
	length_x = x - ((length_y -y) / dtan(direction));
	oob = true;
}
else if (length_y < ystart - y_bound) 
{
	length_y = ystart - y_bound;
	length_x = x - ((length_y -y) / dtan(direction));
	oob = true;
}


if (!oob && speed > 0) 
{
	draw_line_width( length_x ,length_y, length_x- lengthdir_x(15, direction - 30), length_y - lengthdir_y(15, direction - 30), 3);
	draw_line_width( length_x, length_y, length_x - lengthdir_x(15, direction + 30), length_y- lengthdir_y(15, direction + 30), 3);
}	


draw_line_width(x, y, length_x, length_y, 3);
draw_set_color(c_white);

