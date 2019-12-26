/// @description Insert description here
// You can write your code in this editor
pressed = false;
draw_set_color(c_white);
bounce = false;
tick = 0;

repeat (14)
instance_create_depth(random_range(350, room_width - 350), random_range(300, room_height - 300), 0, obj_explosion);

with (obj_explosion)
{
	image_blend = make_color_rgb(irandom_range(55, 255), irandom_range(55, 255), irandom_range(55, 255));	
}

