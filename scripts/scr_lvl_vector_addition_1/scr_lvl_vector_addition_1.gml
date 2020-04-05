y_start = 32;

draw_set_font(fnt_title);
draw_set_color(c_aqua);
draw_set_halign(fa_center);
draw_text(room_width * .5, y_start, "Vector Addition - Room 8");
y_start += 32;
draw_set_font(fnt_uni_reg);
draw_set_color(c_white)
draw_text(room_width * .5, y_start, "What if we want to add another vector to our current veolicty\nThe green vector is our current velocity in pixels per second\nThe blue vector is a new force we want to add");
y_start += 72;
if (!obj_vector_addition_1.pressed)
{
	draw_set_color(c_lime);
	draw_text(room_width * .5, y_start, "Press the green refresh button to move object and show vector to add");
	draw_set_color(c_white);
}
