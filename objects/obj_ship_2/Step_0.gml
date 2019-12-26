/// @description Insert description here
// You can write your code in this editor
if (obj_end_tep_exit_1.pressed)
{
	image_alpha = 0;	
}
else image_alpha = 1;

if (exited) 
{
	message_index++;
	messages[message_index] = "Step \| Step Event Exited!";
	exit;
}

if (x > xstart + x_bound) x = xstart - x_bound;
if (y > ystart + y_bound) y = ystart - y_bound;
if (x < xstart - x_bound) x = xstart + x_bound;
if (y < ystart - y_bound) y = ystart + y_bound;


if (tick >= delay)
{
	message_index++;
	messages[message_index] = "Step \| Step Event x: " + string(x) + " y: " + string(y);
}




