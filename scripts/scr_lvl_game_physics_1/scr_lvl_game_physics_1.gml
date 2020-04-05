y_start = 32;

draw_set_font(fnt_title);
draw_set_color(c_aqua);
draw_set_halign(fa_center);
draw_text(room_width * .5, y_start, "Game Physics - Room 10");
y_start += 32;
draw_set_font(fnt_uni_reg);
draw_set_color(c_white)
draw_text(room_width * .5, y_start, "Rotation - changes image_angle variable by:\n adding for counter-clockwise movement\nsubtracting for clockwise");
y_start += 82;

draw_set_color(c_lime);
draw_text(room_width * .5, y_start, "Press the left and right arrow to rotate");
draw_set_color(c_white);

