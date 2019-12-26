y_start = 32;

draw_set_font(fnt_title);
draw_set_color(c_aqua);
draw_set_halign(fa_center);
draw_text(room_width * .5, y_start, "Begin Step \| Step \| End Step Events  - Room 17");
y_start += 32;
draw_set_font(fnt_uni_reg);
draw_set_color(c_white)
draw_text(room_width * .5, y_start, "obj_ship has hspeed and vspeed of 10 pixels per movement frame\nSlowed down simulation to clearly show what gets updated\nNotice that the x and y position are updated between the step and end step event");
y_start += 82;

if (!obj_end_tep_exit_1.pressed)
{
	draw_set_color(c_lime);
	draw_text(room_width * .5, y_start, "Press green button to exit all step event scripts");
	draw_set_color(c_white);
}


