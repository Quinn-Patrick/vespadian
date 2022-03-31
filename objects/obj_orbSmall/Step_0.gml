/// @description Insert description here
// You can write your code in this editor
y += velocity;

image_xscale -= shrink;

image_yscale -= shrink;

if(image_xscale < 0) instance_destroy();

if(y > 1000) instance_destroy();