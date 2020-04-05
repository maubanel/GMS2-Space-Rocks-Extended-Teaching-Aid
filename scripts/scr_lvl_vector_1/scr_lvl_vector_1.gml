y_start = 32;

draw_set_font(fnt_title);
draw_set_color(c_aqua);
draw_set_halign(fa_center);
draw_text(room_width * .5, y_start, "Vectors - Room 1");

draw_set_font(fnt_reg);
draw_set_color(c_white);
y_start += 32;	
draw_text(room_width * .5, y_start, "A vector is a line that has a direction and magnitude\nIn this case the vector starts at point (256, 480) and ends at point (768, 320)");
y_start += 64;	
if (!obj_vector_1.pressed)
{
	draw_set_color(c_lime);
	draw_text(room_width * .5, y_start, "Press refresh button to see vector");
	draw_set_color(c_white);
}


