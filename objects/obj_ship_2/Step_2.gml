/// @description Insert description here
// You can write your code in this editor
if (exited) 
{
	message_index++;
	messages[message_index] = "Step \| End Step Event Exited!";
	exit;
}
if (tick >= delay)
{
	message_index++;
	messages[message_index] = "Step \| End Step Event x: " + string(x) + " y: " + string(y);
	tick = 0;
	if (messages[0] != "") messages[0] = "";
	message_index = 0;
	delay -= .1;
	
	if (delay < .1) delay = .1;
}