y_start = 32;

draw_set_font(fnt_title);
draw_set_color(c_aqua);
draw_set_halign(fa_center);
draw_text(room_width * .5, y_start, "Vectors - Room 3");
y_start += 32;
draw_set_font(fnt_uni_reg);
draw_set_color(c_white)
draw_text(room_width * .5, y_start, "So the beginning of the vector is always (0x, 0y).\nIt can be placed anywhere in the cartesian plane and retain the same angle and magnitude");
y_start += 64;
if (!obj_vector_3.pressed)
{
	draw_set_color(c_lime);
	draw_text(room_width * .5, y_start, "Press the green refresh button to see the vector represented by two real numbers");
	draw_set_color(c_white);
}
