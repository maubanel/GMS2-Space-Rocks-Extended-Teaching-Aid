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
	length_y = y - ((length_x - x ) * dtan(original_angle));
	oob = true;
}
else if (length_x < xstart - x_bound) 
{ 
	length_x = xstart - x_bound;
	length_y = y - ((length_x - x ) * dtan(original_angle));
	oob = true;
}

if (length_y > ystart + y_bound) 
{
	length_y = ystart + y_bound;
	length_x = x - ((length_y -y) / dtan(original_angle));
	oob = true;
}
else if (length_y < ystart - y_bound) 
{
	length_y = ystart - y_bound;
	length_x = x - ((length_y -y) / dtan(original_angle));
	oob = true;
}

if (!oob && obj_vector_addition_1.pressed) 
{
	draw_line_width( length_x ,length_y, length_x- lengthdir_x(15, original_angle - 30), length_y - lengthdir_y(15, original_angle - 30), 3);
	draw_line_width( length_x, length_y, length_x - lengthdir_x(15, original_angle + 30), length_y- lengthdir_y(15, original_angle + 30), 3);
	var sub =  (original_angle > 180 && original_angle < 270) ? 0 : 180;
	draw_text_ext_transformed(x  + lengthdir_x(90,original_angle), y  + lengthdir_y(90,original_angle), "V", 32, 300, 1, 1, original_angle -  sub);
}	

draw_line_width(x, y, length_x, length_y, 3);


if (obj_vector_addition_1.pressed)
{
	var second_x = x + lengthdir_x(room_speed, vector_to_add_angle);
	var second_y =  y + lengthdir_y(room_speed, vector_to_add_angle);
	var oob2 = false;
	draw_set_color(c_aqua);

	if (second_x > xstart + x_bound) 
	{
		// y = x * tan theta
		second_x = xstart + x_bound;
		second_y = y - ((second_x - x ) * dtan(vector_to_add_angle));
		oob2 = true;
	}
	else if (second_x < xstart - x_bound) 
	{ 
		second_x = xstart - x_bound;
		second_y = y - ((second_x - x ) * dtan(vector_to_add_angle));
		oob2 = true;
	}

	if (second_y > ystart + y_bound) 
	{
		second_y = ystart + y_bound;
		second_x = x - ((second_y -y) / dtan(vector_to_add_angle));
		oob2 = true;
	}
	else if (second_y < ystart - y_bound) 
	{
		second_y = ystart - y_bound;
		second_x = x - ((second_y -y) / dtan(vector_to_add_angle));
		oob2 = true;
	}
	
	draw_line_width	(x, y, second_x, second_y, 3);
	
	if (!oob2) 
	{
		draw_line_width( second_x, second_y, second_x- lengthdir_x(15, vector_to_add_angle - 30), second_y - lengthdir_y(15, vector_to_add_angle - 30), 3);
		draw_line_width( second_x, second_y, second_x - lengthdir_x(15, vector_to_add_angle + 30), second_y- lengthdir_y(15, vector_to_add_angle + 30), 3);
		var sub =  (vector_to_add_angle > 180) ? 0 : 180;
		draw_text_ext_transformed(x + lengthdir_x(30,vector_to_add_angle), y + lengthdir_y(30,vector_to_add_angle), "B", 32, 300, (sub == 180) ? -1 : 1, 1, vector_to_add_angle - sub);
	}	

}

draw_set_color(c_white);