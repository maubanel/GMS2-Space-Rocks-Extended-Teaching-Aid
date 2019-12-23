/// @description Insert description here
// You can write your code in this editor
draw_self();

draw_line_width(obj_frame.x, obj_frame.y, obj_frame_2.x, obj_frame_2.y, 3);
var angle = point_direction (obj_frame.x, obj_frame.y, obj_frame_2.x, obj_frame_2.y);
draw_line_width( obj_frame_2.x, obj_frame_2.y, obj_frame_2.x - lengthdir_x(30, angle - 30), obj_frame_2.y - lengthdir_y(30, angle - 30), 6);
draw_line_width( obj_frame_2.x, obj_frame_2.y, obj_frame_2.x - lengthdir_x(30, angle + 30), obj_frame_2.y - lengthdir_y(30, angle + 30), 6);
draw_set_font(fnt_uni);

draw_text(520, 580, "vector a" + "\u20D7" + " = (ax2 - ax1) + (ay2 - ay1)");
		
if (pressed)
{
	draw_text(520, 610, "vector a" + "\u20D7" + " = (768 - 256) + (320 - 480)");
	draw_text(520, 640, "vector a" + "\u20D7" + " = (" + string(obj_frame_2.x - obj_frame.x) + "x, " + string(obj_frame_2.y - obj_frame.y) + "y)");
	draw_set_color(c_gray);
	draw_line(obj_frame.x, obj_frame.y, end_x_axis, obj_frame.y);
	draw_line(obj_frame.x, obj_frame.y, obj_frame.x, end_y_axis);
	if (end_x_axis == obj_frame_2.x)
	{
		draw_set_font(fnt_uni_reg);
		draw_text(obj_frame_2.x - ((obj_frame_2.x - obj_frame.x) * .5), obj_frame.y - 30, "x axis");
		draw_text_ext_transformed(obj_frame.x + 2, obj_frame.y - 130, "y axis", 32, 100,1,1,90);
	}
	draw_set_color(c_white);
}