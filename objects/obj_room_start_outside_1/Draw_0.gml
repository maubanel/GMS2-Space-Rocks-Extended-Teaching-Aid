/// @description Insert description here
// You can write your code in this editor
draw_self();

draw_set_halign(fa_center);
draw_set_font(fnt_title);


draw_code(room_width/2, 700, c_lime, "Number of dots: " + string(instance_number(obj_explosion)));

draw_set_halign(fa_left);
draw_set_font(fnt_uni_reg);
//image_blend = make_color_rgb(irandom_range(55, 255), irandom_range(55, 255), irandom_range(55, 255));
draw_set_color(c_white);
draw_set_halign(fa_left);
draw_code(20, 200, c_green, "// obj_dot Other \| Room Start event");
var space = draw_code(20, 220, c_lime, "image_blend", c_white, " = ", c_user_funct, "make_color_rgb", c_white, "(");
space += draw_code(20 + space, 220,  c_user_funct, "irandom_range", c_white, "(", c_internal_var, "55", c_white, ", ", c_internal_var, "255", c_white, "), ");
space += draw_code(20 + space, 220,  c_user_funct, "irandom_range", c_white, "(", c_internal_var, "55", c_white, ", ", c_internal_var, "255", c_white, "), ");
space += draw_code(20 + space, 220,  c_user_funct, "irandom_range", c_white, "(", c_internal_var, "55", c_white, ", ", c_internal_var, "255", c_white, "));");

draw_code(20, 260, c_green, "// obj_dot Other \| Outside Room event");
//instance_destroy();
draw_code(20, 280, c_user_funct, "instance_destroy", c_white, "();");