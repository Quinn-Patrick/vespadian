/// @description Insert description here
// You can write your code in this editor
if(!initialized){
	xVelo = baseSpeed*cos(angle);
	yVelo = -1*baseSpeed*sin(angle);
	initialized = true;
}


x += xVelo;
y += yVelo;

timer++;
if(timer > timeLimit) instance_destroy(self);