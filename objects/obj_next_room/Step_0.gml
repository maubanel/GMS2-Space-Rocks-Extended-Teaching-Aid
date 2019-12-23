/// @description Insert description here
// You can write your code in this editor
image_alpha = 1;
if (position_meeting(mouse_x, mouse_y, obj_next_room))
{
	if (mouse_check_button(mb_left))
	{
		image_xscale = 1.25;
		image_yscale = 1.25;
	}
	else 
	{
		var scalar = update_scalar(0, .75, scl_bounce_repeat, 0, 1, .5);
		var ease = ease_scalar(eas_out, scalar, 1);
		var anim_val = lerp(.85, 1.15, ease);
		image_xscale = anim_val;
		image_yscale = anim_val;
		if (!reset) reset = true;
	}
	
	if (mouse_check_button_released(mb_left))
	{
		switch (room)
		{
			case lvl_vector_1:
			room_goto(lvl_vector_2);
			break;
			
			case lvl_vector_2:
			room_goto(lvl_vector_3);
			break;
		}
	}

}

else 
{
	image_xscale = 1;
	image_yscale = 1;
	if (reset)
	{
		reset_scalar(0);
		reset = false;
	}
}
