/// @description Insert description here
// You can write your code in this editor
x += xVel;
y += yVel;

lifeTime++;

if(lifeTime % 2 == 0) instance_create_depth(x, y, depth+1, obj_smokeTrail);

if(lifeTime > 60) instance_destroy();