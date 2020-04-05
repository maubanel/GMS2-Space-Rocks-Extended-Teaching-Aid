y_start = 32;

draw_set_font(fnt_title);
draw_set_color(c_aqua);
draw_set_halign(fa_center);
draw_text(room_width * .5, y_start, "Game Physics - Room 13");
y_start += 32;
draw_set_font(fnt_uni_reg);
draw_set_color(c_white)
draw_text(room_width * .5, y_start, "Simulate Friction by subtracting from speed but has to be less than acceleration\nFriction won't go below zero because we clamp the value at 0 so we don't have to check to see if we make it go backwards\nNotice how long it takes motion vector direction to match image angle when turning");
y_start += 82;

draw_set_color(c_lime);
draw_text(room_width * .5, y_start, "Press the left and right arrow to rotate, up to accelerate, let go for friction to stop");
draw_set_color(c_white);

