/// @description Insert description here
// You can write your code in this editor
pressed = false;
tick = 0;
obj_ship_vector_addition.running = false;
obj_ship_vector_addition.x = obj_ship_vector_addition.xstart;
obj_ship_vector_addition.y = obj_ship_vector_addition.ystart;

obj_ship_vector_addition.direction = irandom(359);
obj_ship_vector_addition.original_angle = obj_ship_vector_addition.direction;
obj_ship_vector_addition.vector_to_add_angle = direction - irandom_range(45, 325);
obj_ship_vector_addition.image_angle = obj_ship_vector_addition.direction;
