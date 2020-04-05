/// @description Insert description here
// You can write your code in this editor
if (x > xstart + x_bound) x = xstart - x_bound;
if (y > ystart + y_bound) y = ystart - y_bound;
if (x < xstart - x_bound) x = xstart + x_bound;
if (y < ystart - y_bound) y = ystart + y_bound;

x = clamp(x, xstart - x_bound, xstart + x_bound);
y = clamp(y, ystart - y_bound, ystart + y_bound);

// Ship rotation
if (keyboard_check(vk_left))
{
	image_angle = image_angle + rotation_angle_speed;	
}

if (keyboard_check(vk_right))
{
	image_angle = image_angle - rotation_angle_speed;	
}

if (keyboard_check(vk_up))
{
	motion_add(image_angle, acceleration);
}