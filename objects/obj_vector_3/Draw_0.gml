/// @description Insert description here
// You can write your code in this editor
draw_self();


draw_set_font(fnt_uni);

var text = "vector a" + "\u20D7" + " = ";
if (pressed) text += "(" + string(floor(end_x_axis)) + "x, -" + string(floor(end_y_axis)) + "y)\n This vector representation is using the cartesian coordinate system";

draw_text(520, 580, text);

draw_set_color(c_gray);
draw_line(obj_frame.x, obj_frame.y, obj_frame_2.x, obj_frame.y);
for (var i = 0; i <= (obj_frame_2.x - obj_frame.x)/32; ++i)
{
	draw_line(obj_frame.x + i * 32, obj_frame.y - 10, obj_frame.x + i * 32, obj_frame.y + 10);	
}
draw_line(obj_frame.x, obj_frame.y, obj_frame.x, obj_frame_2.y);
for (var i = 0; i <= (abs(obj_frame_2.y - obj_frame.y))/32; ++i)
{
	draw_line(obj_frame.x - 10, obj_frame.y - i * 32, obj_frame.x + 10, obj_frame.y - i * 32);	
}
draw_set_font(fnt_uni_reg);
draw_text(obj_frame_2.x - ((obj_frame_2.x - obj_frame.x) * .5), obj_frame.y - 30, "x axis");
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