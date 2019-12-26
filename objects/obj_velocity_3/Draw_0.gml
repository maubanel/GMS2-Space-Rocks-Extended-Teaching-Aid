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

// speed
draw_set_color(c_internal_var);
draw_text(start_x + s_wid, start_y, "speed ");
s_wid += string_width("speed ");
draw_set_color(c_white);
draw_text(start_x + s_wid, start_y, "= ");
s_wid += string_width("= ");
draw_set_color(c_internal_var);
draw_text(start_x + s_wid, start_y, string(obj_ship_velocity_1.speed));
s_wid += string_width(string(obj_ship_velocity_1.speed));
draw_set_color(c_white);
draw_text(start_x + s_wid, start_y, " pixels per step");

// magnitude and direction
start_y += line_height;
s_wid = 0;
draw_set_color(c_internal_var);
draw_text(start_x + s_wid, start_y, "direction ");
s_wid += string_width("directdion ");
draw_set_color(c_white);
draw_text(start_x + s_wid, start_y, "=  ");
s_wid += string_width("=  ");
draw_set_color(c_internal_var);
draw_text(start_x + s_wid, start_y, string(obj_ship_velocity_1.direction));
s_wid += string_width(string(obj_ship_velocity_1.direction));
draw_set_color(c_white);
draw_text(start_x + s_wid, start_y, " degrees");

// magnitude
start_y += line_height * 2;
s_wid = 0;
draw_set_color(c_white);
draw_text(start_x + s_wid, start_y, "\|v\u20D7\|:  " + string(obj_ship_velocity_1.speed));

// direction
start_y += line_height ;
s_wid = 0;
draw_set_color(c_white);
draw_text(start_x + s_wid, start_y, "v\u20D7 \u03D1:  " + string(obj_ship_velocity_1.direction) + "\u00b0");


