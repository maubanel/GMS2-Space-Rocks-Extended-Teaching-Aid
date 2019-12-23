/// @description Insert description here
// You can write your code in this editor
draw_self();

if (pressed)
{
	draw_line_width(obj_frame.x, obj_frame.y, end_vec_x, end_vec_y, 3);		
	if (end_vec_x == obj_frame_2.x)
	{
		var angle = point_direction (obj_frame.x, obj_frame.y, obj_frame_2.x, obj_frame_2.y);
		draw_line_width( obj_frame_2.x, obj_frame_2.y, obj_frame_2.x - lengthdir_x(30, angle - 30), obj_frame_2.y - lengthdir_y(30, angle - 30), 6);
		draw_line_width( obj_frame_2.x, obj_frame_2.y, obj_frame_2.x - lengthdir_x(30, angle + 30), obj_frame_2.y - lengthdir_y(30, angle + 30), 6);
		draw_set_font(fnt_uni);
		draw_text(520, 580, "vector a" + "\u20D7");
	}
}