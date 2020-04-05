y_start = 32;

draw_set_font(fnt_title);
draw_set_color(c_aqua);
draw_set_halign(fa_center);
draw_text(room_width * .5, y_start, "Game Physics - Room 12");
y_start += 32;
draw_set_font(fnt_uni_reg);
draw_set_color(c_white)
draw_text(room_width * .5, y_start, "Clamped Acceleration Magnitude \|v\| = max_speed;   \n speed = clamp(speed, 0, max_speed);w\nStops motion vector speed & direction's magnitude from going less than 0 (backwards) or abouve the maximum speed");
y_start += 82;

draw_set_color(c_lime);
draw_text(room_width * .5, y_start, "Press the left and right arrow to rotate, up to accelerate");
draw_set_color(c_white);

