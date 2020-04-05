y_start = 32;

draw_set_font(fnt_title);
draw_set_color(c_aqua);
draw_set_halign(fa_center);
draw_text(room_width * .5, y_start, "Room Start and Outside Room  - Room 16");
y_start += 32;
draw_set_font(fnt_uni_reg);
draw_set_color(c_white)
draw_text(room_width * .5, y_start, "Other \| Room Start event runs when room is initially loaded \nIn this case we randomize the colors of the white sprite when entering room\nOther \| Outside Room runs when objects leave the playable surface\nIn this case we instance_destroy() objects that leave the game view");
y_start += 112;

if (!obj_room_start_outside_1.pressed)
{
	draw_set_color(c_lime);
	draw_text(room_width * .5, y_start, "Press green button to send dots outside room");
	draw_set_color(c_white);
}


