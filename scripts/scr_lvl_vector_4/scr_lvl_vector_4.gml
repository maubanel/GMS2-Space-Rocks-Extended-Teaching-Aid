y_start = 32;

draw_set_font(fnt_title);
draw_set_color(c_aqua);
draw_set_halign(fa_center);
draw_text(room_width * .5, y_start, "Vectors - Room 4");
y_start += 32;
draw_set_font(fnt_uni_reg);
draw_set_color(c_white)
draw_text(room_width * .5, y_start, "Vector a\u20D7 can also be represented by an angle \u03D1 and magnitude \|a\| in pixels");
y_start += 64;
if (!obj_vector_4.pressed)
{
	draw_set_color(c_lime);
	draw_text(room_width * .5, y_start, "Press the green refresh button to see the vector angle and magnitude");
	draw_set_color(c_white);
}
