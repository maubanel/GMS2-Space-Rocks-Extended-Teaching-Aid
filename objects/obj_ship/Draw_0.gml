/// @description Insert description here
// You can write your code in this editor
draw_self();
draw_set_color(c_lime);
draw_line_width(x + sprite_get_width(spr_ship) * .5, y, (x + 20) + sprite_get_width(spr_ship) * .5, y, 3);
draw_set_color(c_white);