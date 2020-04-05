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
draw_text(start_x + s_wid, start_y, "v\u20D7:  " + "(" + string(obj_ship_vector_addition.hspeed) + "x, "  + string(obj_ship_vector_addition.vspeed) + "y)");

var new_x = (pressed) ? string(lengthdir_x(1, obj_ship_vector_addition.vector_to_add_angle)) : "0";
var new_y = (pressed) ? string(lengthdir_y(1, obj_ship_vector_addition.vector_to_add_angle)) : "0";
// direction
start_y += line_height ;
s_wid = 0;
draw_set_color(c_white);
draw_text(start_x + s_wid, start_y, "b\u20D7:  " + "(" +  new_x + "x, "  + new_y + "y)");


