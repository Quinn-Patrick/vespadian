/// @description Insert description here
// You can write your code in this editor
x = obj_camera.x;
y = obj_camera.y;

image_alpha -= 1/fadeRate;


if(image_alpha <= 0) instance_destroy(self);