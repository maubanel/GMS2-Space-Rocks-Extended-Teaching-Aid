y_start = 32;

draw_set_font(fnt_title);
draw_set_color(c_aqua);
draw_set_halign(fa_center);
draw_text(room_width * .5, y_start, "draw_text(x, y, string) - health - lives  - Room 18");
y_start += 32;
draw_set_font(fnt_uni_reg);
draw_set_color(c_white)
draw_text(room_width * .5, y_start, "obj_ship has hspeed and vspeed of 10 pixels per movement frame\nSlowed down simulation to clearly show what gets updated\nNotice that the x and y position are updated between the step and end step event");
y_start += 82;

draw_set_color(c_lime);
draw_text(room_width * .5, y_start, "Press orange refresh to give 10 points damage");
draw_set_color(c_white);


