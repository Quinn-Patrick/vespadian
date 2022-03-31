/// @description Insert description here
// You can write your code in this editor
if(global.animTime < 5 || global.forceReady)
{
	ready = true
	global.forceReady = false;
}
if(ready){
	time++;
	if(time > 60) instance_destroy();
	if(y > targety){
		velo = -2;
	}else velo += 0.25;
	y += velo;
}