/// @description Insert description here
// You can write your code in this editor
draw_self();

draw_set_halign(fa_left);
draw_set_font(fnt_reg);

if (lives > 0)
{
	draw_set_color(c_white);
	draw_set_font(fnt_reg);
	draw_text(30, 230, "Lives: " + string(lives));
	draw_healthbar(120, 215, 350, 265, health, c_gray, c_red, c_green, 0, true, false);	
}

else 
{
	draw_set_font(fnt_title);
	draw_set_color(c_red);
	draw_text(80, 230, "Game Over!");
	if (alarm[0]< 0) alarm[0] = room_speed * 3;
}
