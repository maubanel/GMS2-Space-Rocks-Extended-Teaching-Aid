/// @description Insert description here
// You can write your code in this editor

if (instance_exists(obj_frame) && obj_frame.image_alpha = 1)
{
	obj_frame.image_alpha = .25;
}

if (instance_exists(obj_frame_2) && obj_frame_2.image_alpha = 1)
{
	obj_frame_2.image_alpha = .25;
}

if (position_meeting(mouse_x, mouse_y, obj_vector_4))
{
	if (mouse_check_button(mb_left))
	{
		image_xscale = -1.25;
		image_yscale = 1.25;
		pressed = true;
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
	end_x_axis = lerp(obj_frame.x, obj_frame_2.x, tick);
	end_y_axis = lerp(obj_frame.y, obj_frame_2.y, tick);
}	