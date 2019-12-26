/// @description Insert description here
// You can write your code in this editor
draw_self();

if (pressed)
{
	//draw_set_font(fnt_uni_reg);
	//draw_text(x, y + 30, "Speed is constant at " + string(obj_ship_velocity_1.speed * room_speed)  + " pixels per second.");
}

var start_x = 24;
var start_y = 350;
var line_height = 18;
var s_wid = 0;

draw_set_halign(fa_left);


// magnitude
start_y += line_height * 2;
s_wid = 0;
draw_set_color(c_white);
draw_text(start_x + s_wid, start_y, "a\u20D7:  " + "(" + string(obj_ship_vector_addition_2.original_x) + "x, "  + string(obj_ship_vector_addition_2.original_y) + "y)");

var new_x = string(lengthdir_x(1, obj_ship_vector_addition_2.vector_to_add_angle));
var new_y = string(lengthdir_y(1, obj_ship_vector_addition_2.vector_to_add_angle));
// direction
start_y += line_height ;
s_wid = 0;
draw_set_color(c_white);
draw_text(start_x + s_wid, start_y, "b\u20D7:  " + "(" +  new_x + "x, "  + new_y + "y)");

start_y += line_height * 2;
s_wid = 0;
draw_text(start_x + s_wid, start_y, "a\u20D7 \u03D1:  " + string(obj_ship_vector_addition_2.original_angle) + "\u00b0");
start_y += line_height;
s_wid = 0;
draw_text(start_x + s_wid, start_y, "b\u20D7 \u03D1:  " + string(obj_ship_vector_addition_2.vector_to_add_angle) + "\u00b0");


if (pressed)
{
	start_y += line_height  * 2;
	new_x = string(lengthdir_x(obj_ship_vector_addition_2.new_speed, obj_ship_vector_addition_2.new_dir));
	new_y = string(lengthdir_y(obj_ship_vector_addition_2.new_speed, obj_ship_vector_addition_2.new_dir));
	draw_text(start_x + s_wid, start_y, "v\u20D7:  " + "(" +  new_x + "x, "  + new_y + "y)");
}
start_y += line_height ;
var first_part = "speed (\|a\u20D7\| or\|b\u20D7\|)";
if (pressed) first_part = "speed (\|v\u20D7\|)";
draw_text(start_x + s_wid, start_y, first_part + " : " + string(obj_ship_vector_addition_2.speed) + " pixels per second");

if (pressed)
{
	start_y += line_height;
	s_wid = 0;
	draw_text(start_x + s_wid, start_y, "v\u20D7 \u03D1:  " + string(obj_ship_vector_addition_2.new_dir) + "\u00b0");
}

