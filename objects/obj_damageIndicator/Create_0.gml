/// initialize
// You can write your code in this editor
depth = -102;
time = 0;


ready = false;

if(global.forceReady) ready = true;

velo = 0;

//xi = x;
targety = y - 32;

while(place_meeting(x, y, obj_damageIndicator))y += 24;

//yi = y;