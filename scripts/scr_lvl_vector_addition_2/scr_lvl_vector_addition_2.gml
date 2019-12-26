y_start = 32;

draw_set_font(fnt_title);
draw_set_color(c_aqua);
draw_set_halign(fa_center);
draw_text(room_width * .5, y_start, "Vector Addition - Room 9");
y_start += 32;
draw_set_font(fnt_uni_reg);
draw_set_color(c_white)
draw_text(room_width * .5, y_start, "Adding two vectors is like placing them end to end\nThe third resulting vector is the result of the addition is from the begining of the first to the end of the second\norder doesn't matter with vector addition\nAdd in Catersian: V.x = A.x + B.x;    V.y = A.y + B.y;\nAdd in polar: motion_add(direction, magnitude);");
y_start += 124;
if (!obj_vector_addition_2.pressed)
{
	draw_set_color(c_lime);
	draw_text(room_width * .5, y_start, "Press the green refresh button to add two vectors and follow yellow path");
	draw_set_color(c_white);
}
