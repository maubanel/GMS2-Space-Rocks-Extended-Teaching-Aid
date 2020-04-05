/// @description Insert description here
// You can write your code in this editor
draw_self();

draw_set_halign(fa_center);
draw_set_font(fnt_title);

if (pressed && alarm[1] > 0)
{
	draw_set_color(c_orange);
	messages = "Alarm is set for " + string(ceil(alarm[1] / room_speed)) + " seconds";
}

if (!bounce)
{
	draw_text(x, y - 300, messages);
}
else
{
	draw_set_color(c_red);
	var scale = update_scalar(0, 1, scl_bounce_repeat) ;
	var new_scale = ease_scalar(eas_in_out, scale, 2) + .5;
	draw_text_transformed(x, y - 300, messages, new_scale, new_scale, 0);	
}

draw_text (x, y - 150, "alarm[0] = " + string(alarm[1]));

//if (alarm[0] < 0)
//{
//	alarm[0] = room_speed * 5;	
//}
draw_set_halign(fa_left);
draw_set_font(fnt_uni_reg);
var start = draw_code(30, 300, c_user_funct, "if", c_white, " (", c_lime,"alarm", c_white,"[",c_internal_var, "0", c_white,"] <", c_internal_var, " 0");
draw_code(30 + start, 300,  c_white, ")");
draw_code(30, 320, c_user_funct, "{");
start = draw_code (30, 340, c_lime, "    alarm", c_white, "[", c_internal_var, "0", c_white, "] = ", c_lime, "room_speed", c_white, " * ", c_internal_var, "5"); 
draw_code (30 + start, 340, c_white, ";");
draw_code(30, 360, c_user_funct, "}");