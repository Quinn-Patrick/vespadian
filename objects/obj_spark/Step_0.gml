/// @description Insert description here
// You can write your code in this editor
x += xVelo;
y += yVelo;

yVelo -= grav;

if(y >= ground && yVelo > 0) yVelo = -0.5*yVelo;

timer++;

if(timer > endTimer) instance_destroy(self);

image_xscale -= shrinkRate;
image_yscale -= shrinkRate;

if(image_xscale < 0) instance_destroy(self);