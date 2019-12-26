/// @description Insert description here
// You can write your code in this editor
draw_self();

draw_set_halign(fa_center);
draw_set_font(fnt_title);

if (pressed && alarm[1] > 0)
{
		draw_set_color(c_orange);
	messages = "Alarm is set for " + string(ceil(alarm[1] / room_speed)) + " seconds";
	draw_text (x, y - 150, "alarm[1] = " + string(alarm[1]));

}

if (!bounce)
{
	draw_text(x, y - 300, messages);
}
else
{
	draw_set_color(c_red);
	var scale = update_scalar(0, 1, scl_bounce_repeat) + 1;
	draw_text_transformed(x, y - 300, messages, scale, scale, 0);	
}

