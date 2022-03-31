/// @description Insert description here
// You can write your code in this editor

if(global.control){
	target = obj_player;
	if(!instance_exists(target)) target = obj_mapPlayer;
	if(instance_exists(target)){
		if(target == obj_player){
			x = target.x-496 + (shakeSwitcher*shakeIntensity);
			y = target.y-368;
		}else{
			x = target.x-496;
			y = target.y-368;
		}
		if(target == obj_player){
			camGridX = global.ovx;
			camGridY = global.ovy;
		}else{
			camGridX = global.worldx;
			camGridY = global.worldy;
		}
	}
}
else if(target != obj_player && !free && target != obj_mapPlayer){
	x = target.x-16-496 + (shakeSwitcher*shakeIntensity);
	y = target.y-16-368;
	camGridX = target.gridX;
	camGridY = target.gridY;
}

shakeSwitcher *= -1;

if(shakeSwitcher == 1 && shakeIntensity > 0){
	shakeIntensity -= 1;
}

if(target != obj_mapPlayer)camera_set_view_pos(view_camera[0], x, y);

//in-game camera
//camera_set_view_target(global.cam, self);
//camera_apply(global.cam);