/// @description Insert description here
// You can write your code in this editor

var start_x = 12;
var start_y = 250;
var line_height = 18;

draw_self();
draw_set_color(c_white);
draw_set_font(fnt_uni_reg);
draw_set_halign(fa_left);

draw_text(start_x, start_y, "// obj_ship Create Event");
start_y += line_height ;
draw_code(start_x, start_y, c_user_var, "rotation_angle_speed ", c_white, "= ", c_internal_var, string(rotation_angle_speed));

start_y += line_height * 2;
draw_code(start_x, start_y, c_white, "// obj_ship Step Event");


// Ship rotation
start_y += line_height ;
draw_code(start_x, start_y, c_white, "// Ship rotation");

//if (keyboard_check(vk_left))
start_y += line_height ;
draw_code(start_x, start_y, c_user_funct, "if", c_white, " (", c_user_funct, "keyboard_check", c_white, " (", c_local_var, "vk_left", c_white, "))" );
//{
start_y += line_height;
draw_code(start_x, start_y, c_user_funct, "{");

// image_angle = (image_angle + rotation_angle_speed);	
start_y += line_height;
draw_code(start_x, start_y, c_lime, "  image_angle", c_white, " = ");
start_y += line_height;
draw_code(start_x, start_y,  c_lime, "    image_angle", c_white, " + ", c_user_var, "rotation_angle_speed", c_white, ";" );

//}
start_y += line_height;
draw_code(start_x, start_y, c_user_funct, "}");

//if (keyboard_check(vk_right))
start_y += line_height ;
draw_code(start_x, start_y, c_user_funct, "if", c_white, " (", c_user_funct, "keyboard_check", c_white, " (", c_local_var, "vk_right", c_white, "))" );
//{
start_y += line_height;
draw_code(start_x, start_y, c_user_funct, "{");

// image_angle = image_angle - rotation_angle_speed;	
start_y += line_height;
draw_code(start_x, start_y, c_lime, "  image_angle", c_white, " = ");
start_y += line_height;
draw_code(start_x, start_y,  c_lime, "    image_angle", c_white, " - ", c_user_var, "rotation_angle_speed", c_white, ";" );

//}
start_y += line_height;
draw_code(start_x, start_y, c_user_funct, "}");

start_y += line_height * 2 ;
draw_code(start_x, start_y, c_white, "// Variables in obj_ship: ");
start_y += line_height;
draw_code(start_x, start_y, c_lime, "image_angle", c_white, " = ", c_internal_var, string(image_angle));

