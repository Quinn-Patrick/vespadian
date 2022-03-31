/// @description Insert description here
// You can write your code in this editor
target = obj_player;
if(!instance_exists(target)) target = obj_mapPlayer;



x = target.x;
y = target.y;
free = false;
if(target == obj_player){
	camGridX = global.ovx;
	camGridY = global.ovy;
}else{
	camGridX = global.worldx;
	camGridY = global.worldy;
}

shakeIntensity = 0;
shakeSwitcher = 1;



//camera_set_view_pos(global.cam, x-512 + (shakeSwitcher*shakeIntensity), y-384);



transitionScreen = instance_create_depth(0,0,-11000,obj_blackScreen);
transitionScreen.image_alpha = 1;
transitionScreen.fadeRate = -10;