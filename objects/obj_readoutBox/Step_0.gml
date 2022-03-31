/// @description Insert description here
// You can write your code in this editor
if(y == targetY)lifeTime++;
if(lifeTime > maxLifeTime){
	x -= shiftSpeed;
	if(x < -1000) instance_destroy(self);
}

if(y < targetY) y += shiftSpeed;
if(y > targetY) y -= shiftSpeed;