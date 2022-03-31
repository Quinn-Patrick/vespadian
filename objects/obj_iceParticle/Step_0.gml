/// @description Insert description here
// You can write your code in this editor
x += xvelo;
y += yvelo;

yvelo += 0.5;
time++;
if(time > time_limit){
	instance_destroy(self);
}