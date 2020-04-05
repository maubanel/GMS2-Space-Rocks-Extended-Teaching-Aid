/// @description Insert description here
// You can write your code in this editor

if (position_meeting(mouse_x, mouse_y, obj_velocity_3))
{
	if (mouse_check_button(mb_left))
	{
		image_xscale = -1.25;
		image_yscale = 1.25;
		pressed = true;
		obj_ship_velocity_1.running = true;
		if (alarm[0] < 0) alarm[0] = room_speed * 10;
	}
	else if (!pressed)
	{
		var scalar = update_scalar(0, .75, scl_bounce_repeat, 0, .5, 1.15, 1);
		var ease = ease_scalar(eas_out, scalar, 1);
		var anim_val = lerp(.50, 1.15, ease);
		image_xscale = -anim_val;
		image_yscale = anim_val;
	}
}

if (pressed)
{
	tick += delta_time / 1000000;
	tick = clamp(tick, 0, 1);

}	