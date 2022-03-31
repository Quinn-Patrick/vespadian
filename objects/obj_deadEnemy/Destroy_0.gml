/// @description Insert description here
// You can write your code in this editor
particleVelo = 30;

newPart = instance_create_depth(x, y, depth, obj_flashParticle);
newPart.xVelo = particleVelo;

newPart = instance_create_depth(x, y, depth, obj_flashParticle);
newPart.yVelo = particleVelo;

newPart = instance_create_depth(x, y, depth, obj_flashParticle);
newPart.xVelo = -particleVelo;

newPart = instance_create_depth(x, y, depth, obj_flashParticle);
newPart.yVelo = -particleVelo;