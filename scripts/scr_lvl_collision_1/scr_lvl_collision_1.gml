y_start = 32;

draw_set_font(fnt_title);
draw_set_color(c_aqua);
draw_set_halign(fa_center);
draw_text(room_width * .5, y_start, "Collisions - Room 15");
y_start += 32;
draw_set_font(fnt_uni_reg);
draw_set_color(c_white)
draw_text(room_width * .5, y_start, "Collision event type will be triggered when two collision masks overlap\nOnly check collision from one object to another\nYou can still access the other actor using the other accessor\nCollisions are not checked between frames so players can't move faster than the shortest width or height of their collision mask");
y_start += 112;

draw_set_color(c_lime);
draw_text(room_width * .5, y_start, "Use arrow keys to collide ship with rock");
draw_set_color(c_white);


