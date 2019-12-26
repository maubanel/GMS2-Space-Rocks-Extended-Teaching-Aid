/// @description Insert description here
// You can write your code in this editor
draw_self();
draw_set_color(c_white);
draw_set_halign(fa_left);
draw_set_font(fnt_uni_reg);
var line_space = 32;
var y_pos = 300;
for (var i = 0; i < array_length_1d(messages); ++i)
{
	if (messages[i] != "")
	{
		draw_text(20, y_pos, messages[i]);
		y_pos += line_space;
	}
}

