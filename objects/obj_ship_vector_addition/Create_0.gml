/// @description Insert description here
// You can write your code in this editor


//room_speed = 10;

x_bound = 300;
y_bound = 164;

running = false;

randomize();

direction = irandom(359);

original_angle = direction;

speed = 2;

vector_to_add_angle = direction - irandom_range(45, 325);

image_angle = direction;