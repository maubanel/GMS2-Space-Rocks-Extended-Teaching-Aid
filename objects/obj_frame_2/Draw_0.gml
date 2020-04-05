/// @description Insert description here
// You can write your code in this editor
draw_self();
draw_set_halign(fa_center);
draw_set_color(c_white);
draw_set_font(fnt_reg);
var title = "End of Vector";

if (room < lvl_vector_3)
draw_text(x, y - sprite_get_bbox_bottom(spr_frame) * .5 - 50, title +  "\nx: " + string(x) + " - y: " + string(y));