y_start = 32;

draw_set_font(fnt_title);
draw_set_color(c_aqua);
draw_set_halign(fa_center);
draw_text(room_width * .5, y_start, "Velocity - Room 5");
y_start += 32;
draw_set_font(fnt_uni_reg);
draw_set_color(c_white)
draw_text(room_width * .5, y_start, "What are vectors used for?\nOne of the most common uses is to represent the object's velocity\nEach game object comes with a velocity representation in cartesian and polar coordinates");
y_start += 64;
if (!obj_velocity_1.pressed)
{
	draw_set_color(c_lime);
	draw_text(room_width * .5, y_start, "Press the green refresh button to move the object");
	draw_set_color(c_white);
}
