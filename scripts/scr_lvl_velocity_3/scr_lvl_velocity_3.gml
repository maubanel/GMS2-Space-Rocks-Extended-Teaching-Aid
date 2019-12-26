y_start = 32;

draw_set_font(fnt_title);
draw_set_color(c_aqua);
draw_set_halign(fa_center);
draw_text(room_width * .5, y_start, "Velocity - Room 7");
y_start += 32;
draw_set_font(fnt_uni_reg);
draw_set_color(c_white)
draw_text(room_width * .5, y_start, "Velocity in Game Object in the Polar Coordinate System\nStored in two variables called speed and direction");
y_start += 64;
if (!obj_velocity_3.pressed)
{
	draw_set_color(c_lime);
	draw_text(room_width * .5, y_start, "Press the green refresh button to move the object");
	draw_set_color(c_white);
}
