/// @description Insert description here
// You can write your code in this editor
draw_self();
draw_set_halign(fa_center);
draw_set_color(c_white);
draw_set_font(fnt_reg);
var title = "";
switch(instance)
{
	case 0:
	title = "Start of Vector";
	break;
	
	case 1:
	title = "End of Vector";
	break;
}
draw_text(x, y - sprite_get_bbox_bottom(spr_frame) * .5 - 30, title +  "\nx: " + string(x) + " - y: " + string(y));