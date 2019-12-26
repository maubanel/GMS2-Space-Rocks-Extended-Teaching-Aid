y_start = 32;

draw_set_font(fnt_title);
draw_set_color(c_aqua);
draw_set_halign(fa_center);
draw_text(room_width * .5, y_start, "Alarms - Room 14");
y_start += 32;
draw_set_font(fnt_uni_reg);
draw_set_color(c_white)
draw_text(room_width * .5, y_start, "12 alarms can be set alarm[0] through alarm[11]\nAlarm is not running when equals to -1\nMake sure that if you call it in a step event call it once by checking that is is less than 0");
y_start += 82;

if (!obj_alarm_1.pressed)
{
	draw_set_color(c_lime);
	draw_text(room_width * .5, y_start, "Press the refresh button to trigger a 5 second alarm");
	draw_set_color(c_white);
}

