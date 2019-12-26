/// @description Insert description here
// You can write your code in this editor
pressed = false;
tick = 0;
obj_ship_vector_addition_2.running = false;
obj_ship_vector_addition_2.x = obj_ship_vector_addition_2.xstart;
obj_ship_vector_addition_2.y = obj_ship_vector_addition_2.ystart;

obj_ship_vector_addition_2.direction = irandom(359);
obj_ship_vector_addition_2.original_angle = obj_ship_vector_addition_2.direction;
obj_ship_vector_addition_2.image_angle = obj_ship_vector_addition_2.direction;
obj_ship_vector_addition_2.vector_to_add_angle = obj_ship_vector_addition_2.direction - choose (irandom_range(70, 120 ), irandom_range(-70, -120));
obj_ship_vector_addition_2.vector_to_add_angle = obj_ship_vector_addition_2.vector_to_add_angle % 360;
obj_ship_vector_addition_2.speed = 2;
obj_ship_vector_addition_2.original_x = obj_ship_vector_addition_2.hspeed;
obj_ship_vector_addition_2.original_y = obj_ship_vector_addition_2.vspeed;
obj_ship_vector_addition_2.new_speed = 0;
obj_ship_vector_addition_2.new_dir = 0;

