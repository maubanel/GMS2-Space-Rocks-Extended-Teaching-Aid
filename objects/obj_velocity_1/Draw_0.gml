/// @description Insert description here
// You can write your code in this editor
draw_self();

if (pressed)
{
	draw_set_font(fnt_uni_reg);
	draw_text(x, y + 30, "Speed is constant at " + string(obj_ship_velocity_1.speed * room_speed)  + " pixels per second.");
}

