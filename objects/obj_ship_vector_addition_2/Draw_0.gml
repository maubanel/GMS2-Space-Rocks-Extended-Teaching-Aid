/// @description Insert description here
// You can write your code in this editor
draw_self();
draw_set_color(c_lime);
var length_x = x + original_x * room_speed;
var length_y = y + original_y * room_speed;



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


draw_line_width(x, y, length_x, length_y, 3);

if (!oob) 
{
	draw_set_color(c_lime);
	draw_line_width( length_x ,length_y, length_x- lengthdir_x(15, original_angle - 30), length_y - lengthdir_y(15, original_angle - 30), 3);
	draw_line_width( length_x, length_y, length_x - lengthdir_x(15, original_angle + 30), length_y- lengthdir_y(15, original_angle + 30), 3);
	var sub =  (original_angle > 180 && original_angle < 270) ? 180 : 0;
	draw_text_ext_transformed(x  + lengthdir_x(90,original_angle), y  + lengthdir_y(90,original_angle), "A", 32, 300, 1, 1, original_angle -  sub);
	
	var second_x = length_x + lengthdir_x(room_speed, vector_to_add_angle);
	var second_y =  length_y + lengthdir_y(room_speed, vector_to_add_angle);
	var oob2 = false;
	draw_set_color(c_aqua);

	if (second_x > xstart + x_bound) 
	{
		// y = x * tan theta
		second_x = xstart + x_bound;
		second_y = length_y - ((second_x - length_x ) * dtan(vector_to_add_angle));
		oob2 = true;
	}
	else if (second_x < xstart - x_bound) 
	{ 
		second_x = xstart - x_bound;
		second_y = length_y - ((second_x - length_x ) * dtan(vector_to_add_angle));
		oob2 = true;
	}

	if (second_y > ystart + y_bound) 
	{
		second_y = ystart + y_bound;
		second_x = length_x - ((second_y - length_y) / dtan(vector_to_add_angle));
		oob2 = true;
	}
	else if (second_y < ystart - y_bound) 
	{
		second_y = ystart - y_bound;
		second_x = length_x - ((second_y - length_y) / dtan(vector_to_add_angle));
		oob2 = true;
	}
	
	draw_line_width	(length_x, length_y, second_x, second_y, 3);
	
	if (!oob2) 
	{
		draw_line_width( second_x, second_y, second_x- lengthdir_x(15, vector_to_add_angle - 30), second_y - lengthdir_y(15, vector_to_add_angle - 30), 3);
		draw_line_width( second_x, second_y, second_x - lengthdir_x(15, vector_to_add_angle + 30), second_y- lengthdir_y(15, vector_to_add_angle + 30), 3);
		var sub =  (vector_to_add_angle > 180 && vector_to_add_angle < 270) ?180 : 0;
		draw_text_ext_transformed(length_x  + lengthdir_x(20,vector_to_add_angle), length_y  + lengthdir_y(20,vector_to_add_angle), "B", 32, 300, 1, 1, vector_to_add_angle -  sub);
	}	

}



if (obj_vector_addition_2.pressed)
{
	length_x = x + original_x * room_speed;
	length_y = y + original_y * room_speed;
	var third_x = length_x + lengthdir_x(room_speed, vector_to_add_angle);
	var third_y = length_y + lengthdir_y(room_speed, vector_to_add_angle);
	new_dir = point_direction(x, y, third_x, third_y);
	new_speed = point_distance(x, y, third_x, third_y) / room_speed;
	var oob3 = false;
	draw_set_color(c_aqua);

	if (third_x > xstart + x_bound) 
	{
		// y = x * tan theta
		third_x = xstart + x_bound;
		third_y = y - ((third_x - x ) * dtan(new_dir));
		oob3 = true;
	}
	else if (third_x < xstart - x_bound) 
	{ 
		third_x = xstart - x_bound;
		third_y =  y - ((third_x - x ) * dtan(new_dir));
		oob3 = true;
	}

	if (third_y > ystart + y_bound) 
	{
		third_y = ystart + y_bound;
		third_x = x - ((third_y - y) / dtan(new_dir));
		oob3 = true;
	}
	else if (third_y < ystart - y_bound) 
	{
		third_y = ystart - y_bound;
		third_x = x - ((third_y - y) / dtan(new_dir));
		oob3 = true;
	}
	draw_set_color(c_yellow);
	draw_line_width	(x, y, third_x, third_y, 3);
	
	if (!oob3)
	{
		draw_line_width( third_x, third_y, third_x- lengthdir_x(15, new_dir - 30), third_y - lengthdir_y(15, new_dir - 30), 3);
		draw_line_width( third_x, third_y, third_x - lengthdir_x(15, new_dir + 30), third_y- lengthdir_y(15, new_dir + 30), 3);
		var sub =  (new_dir > 180 && new_dir < 270) ? 180 : 0;
		draw_text_ext_transformed(x  + lengthdir_x(40,new_dir), y  + lengthdir_y(40,new_dir), "V", 32, 300, 1, 1, new_dir -  sub);
		
	}
	
	if (direction != new_dir)
	{
		image_angle = new_dir;
		speed = new_speed;
		direction = image_angle;
	}
}
draw_set_color(c_white);