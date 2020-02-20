/// @description Insert description here
// You can write your code in this editor

if (position_meeting(mouse_x, mouse_y, obj_draw_lives_health_1))
{
	if (mouse_check_button_pressed(mb_left))
	{
		image_xscale = -1.25;
		image_yscale = 1.25;
		pressed = true;
		if (health > 0) health -= 10;
		if (health <= 0) if (lives > 0) { lives--; health = 100; }
		if (alarm[0] < 0 && (lives <= 0)) alarm[0] = 2 * room_speed;
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
	//tick += delta_time / 1000000;
	//tick = clamp(tick, 0, 1);
	//image_alpha = 0;
}	

else
{
	image_alpha = 1;	
}



