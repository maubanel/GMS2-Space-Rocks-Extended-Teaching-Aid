y_start = 32;

draw_set_font(fnt_title);
draw_set_color(c_aqua);
draw_set_halign(fa_center);
draw_text(room_width * .5, y_start, "Game Physics - Room 11");
y_start += 32;
draw_set_font(fnt_uni_reg);
draw_set_color(c_white)
draw_text(room_width * .5, y_start, "Acceleration   f\u20D7 = m\u20D7 \u00B7 a     :      v\u20D7 = v\u20D7 + f\u20D7 \nAdding current speed and direction to new one at the new image_angle when presseing the up arrow\nAdds to the current speed and direction added with motion_add(image_angle, acceleration)\nspeed or the magnitude of the velocity is unclamped");
y_start += 100;

draw_set_color(c_lime);
draw_text(room_width * .5, y_start, "Press the left and right arrow to rotate, up to accelerate");
draw_set_color(c_white);

