y_start = 32;

draw_set_font(fnt_title);
draw_set_color(c_aqua);
draw_set_halign(fa_center);
draw_text(room_width * .5, y_start, "Vectors - Room 2");
y_start += 32;
draw_set_font(fnt_uni_reg);
draw_set_color(c_white)
draw_text(room_width * .5, y_start, "A 2d ector is represented by one x position and one y position\n a\u20D7 = ax + ay");
y_start += 64;
if (!obj_vector_2.pressed)
{
	draw_set_color(c_lime);
	draw_text(room_width * .5, y_start, "Press the green refresh button to find out how to calculate this vector from two points in world space");
	draw_set_color(c_white);
}
