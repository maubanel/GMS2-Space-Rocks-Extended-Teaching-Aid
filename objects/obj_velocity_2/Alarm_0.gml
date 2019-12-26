/// @description Insert description here
// You can write your code in this editor
pressed = false;
tick = 0;
obj_ship_velocity_1.running = false;
obj_ship_velocity_1.x = obj_ship_velocity_1.xstart;
obj_ship_velocity_1.y = obj_ship_velocity_1.ystart;

obj_ship_velocity_1.image_angle = irandom(359);
obj_ship_velocity_1.direction = obj_ship_velocity_1.image_angle;
