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

vector_to_add_angle = direction - choose (irandom_range(70, 120 ), irandom_range(-70, -120));
vector_to_add_angle = vector_to_add_angle % 360;

speed = 2;
image_angle = direction;

original_x = hspeed;
original_y = vspeed;
new_speed = 0;
new_dir = 0;

