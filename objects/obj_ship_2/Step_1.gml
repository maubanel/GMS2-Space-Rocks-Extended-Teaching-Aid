/// @description Insert description here
// You can write your code in this editor
if (exited) 
{
	message_index = 0;
	speed = 0;
	message_index++;
	messages[message_index] = "Step \| Begin Step Event Exited!";
	exit;
}

if (tick != 0)
{
	x -= hspeed;
	y -= vspeed;
}

tick += delta_time / 1000000;

if (tick >= delay)
{
	message_index++;
	messages[message_index] = "Step \| Begin Step Event x: " + string(x) + " y: " + string(y);
}