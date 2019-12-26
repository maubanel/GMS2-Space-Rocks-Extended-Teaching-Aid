/// @description Insert description here
// You can write your code in this editor
draw_self();
draw_set_color(c_white);
draw_set_halign(fa_left);
draw_code(20, 200, c_green, "// obj_ship collision \| obj_rock event");
draw_code(20, 220, c_lime, "image_index", c_white, " = ", c_internal_var, "1", c_white, ";");
draw_code(20, 260, c_user_funct, "with", c_white, " (", c_internal_var, "other", c_white, ")");
draw_code(20, 280, c_user_funct, "{");
draw_code(20, 300, c_lime, "    image_index", c_white, " = ", c_internal_var, "1", c_white, ";");
draw_code(20, 320, c_user_funct, "}");

draw_code(20, 360, c_green, "// Since there is no collision exit event");
draw_code(20, 380, c_green, "//     I added a check to change image");
draw_code(20, 400, c_green, "//     index back");
draw_code(20, 440, c_green, "// obj_ship step event");
var space = draw_code(20, 460, c_user_funct, "if", c_white, " (!", c_user_funct, "place_meeting", c_white, "(", c_lime, "x", c_white, ", ", c_lime, "y");
draw_code(20 + space, 460, c_white, ",", c_internal_var, " obj_rock", c_white, "))");
draw_code(20, 480, c_user_funct, "{");
draw_code(20, 500, c_lime, "    image_index", c_white, " = ", c_internal_var, "0", c_white, ";");
draw_code(20, 520, c_user_funct, "}");

draw_code(20, 560, c_green, "// obj_rock step event");
var space = draw_code(20, 580, c_user_funct, "if", c_white, " (!", c_user_funct, "place_meeting", c_white, "(", c_lime, "x", c_white, ", ", c_lime, "y");
draw_code(20 + space, 580, c_white, ",", c_internal_var, " obj_ship", c_white, "))");
draw_code(20, 600, c_user_funct, "{");
draw_code(20, 620, c_lime, "    image_index", c_white, " = ", c_internal_var, "0", c_white, ";");
draw_code(20, 640, c_user_funct, "}");
//if (!place_meeting(x, y, obj_rock))
//{
//	image_index = 0;	
//}