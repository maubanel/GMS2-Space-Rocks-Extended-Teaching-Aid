/// @description Insert description here
// You can write your code in this editor
draw_self();


draw_set_font(fnt_uni);

var text = "vector a" + "\u20D7 \u03D1 " + " = \n\|a\u20D7\| =";
if (pressed) text = "vector a" + "\u20D7 \u03D1 " + " = " + string(floor(point_direction(0,0, end_x_axis, -end_y_axis))) + "\u00B0\n\|a\u20D7\| = " + string(floor(point_distance(0,0, end_x_axis, -end_y_axis)))+" pixels\n This vector representation is using the polar coordinate system";

draw_text(520, 580, text);

draw_set_color(c_gray);
draw_line(obj_frame.x, obj_frame.y, obj_frame_2.x, obj_frame.y);
draw_line(obj_frame.x, obj_frame.y, obj_frame.x, obj_frame_2.y);
draw_set_font(fnt_uni_reg);
draw_text(obj_frame_2.x - ((obj_frame_2.x - obj_frame.x) * .5), obj_frame.y - 30, "x axis");
if (pressed && end_x_axis == obj_frame_2.x)
{
	draw_text(obj_frame.x + 80, obj_frame.y - 20, string(floor(point_direction(0,0, end_x_axis, -end_y_axis))) + "\u00B0");
	draw_text_ext_transformed(obj_frame.x + 150, obj_frame.y - 80, "831 pixels", 32, 100,1,1,22);
	
}
draw_text_ext_transformed(obj_frame.x + 15, obj_frame.y - 90, "y axis", 32, 100,1,1,90);

if (pressed)
{
		draw_set_color(c_white);
	draw_line_width(obj_frame.x, obj_frame.y, end_x_axis, end_y_axis, 3);
	
	if (end_x_axis == obj_frame_2.x)
	{

	var angle = point_direction (obj_frame.x, obj_frame.y, obj_frame_2.x, obj_frame_2.y);
	draw_line_width( obj_frame_2.x, obj_frame_2.y, obj_frame_2.x - lengthdir_x(30, angle - 30), obj_frame_2.y - lengthdir_y(30, angle - 30), 6);
	draw_line_width( obj_frame_2.x, obj_frame_2.y, obj_frame_2.x - lengthdir_x(30, angle + 30), obj_frame_2.y - lengthdir_y(30, angle + 30), 6);
	}
	draw_set_color(c_white);
}