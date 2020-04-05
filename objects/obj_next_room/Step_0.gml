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
			
			case lvl_vector_3:
			room_goto(lvl_vector_4);
			break;
			
			case lvl_vector_4:
			room_goto(lvl_velocity_1);
			break;
			
			case lvl_velocity_1:
			room_goto(lvl_velocity_2);
			break;
			
			case lvl_velocity_2:
			room_goto(lvl_velocity_3);
			break;
			
			case lvl_velocity_3:
			room_goto(lvl_vector_addition_1);
			break;
			
			case lvl_vector_addition_1:
			room_goto(lvl_vector_addition_2);
			break;
			
			case lvl_vector_addition_2:
			room_goto(lvl_game_physics_1);
			break;
			
			case lvl_game_physics_1:
			room_goto(lvl_game_physics_2);
			break;
			
			case lvl_game_physics_2:
			room_goto(lvl_game_physics_3);
			break;
			
			case lvl_game_physics_3:
			room_goto(lvl_game_physics_4);
			break;
			
			case lvl_game_physics_4:
			room_goto(lvl_alarm_1);
			break;
			
			case lvl_alarm_1:
			room_goto(lvl_collision_1);
			break;
			
			case lvl_collision_1:
			room_goto(lvl_room_start_outside_1);
			break;
			
			case lvl_room_start_outside_1:
			room_goto(lvl_end_step_exit_1);
			break;
			
			case lvl_end_step_exit_1:
			//room_goto(lvl_draw_lives_health_1);
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

if (keyboard_check_pressed(ord("1")))
{
	if (room != lvl_vector_1) room = lvl_vector_1;	
}

else if (keyboard_check_pressed(ord("2")))
{
	if (room != lvl_velocity_1) room = lvl_velocity_1;	
}

else if (keyboard_check_pressed(ord("3")))
{
	if (room != lvl_vector_addition_1) room = lvl_vector_addition_1;	
}

else if (keyboard_check_pressed(ord("4")))
{
	if (room != lvl_game_physics_1) room = lvl_game_physics_1;	
}

else if (keyboard_check_pressed(ord("5")))
{
	if (room != lvl_alarm_1) room = lvl_alarm_1;	
}


if (room == lvl_end_step_exit_1) image_alpha = 0;
else image_alpha = 1;



