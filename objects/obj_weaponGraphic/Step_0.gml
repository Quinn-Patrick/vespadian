/// @description Insert description here
// You can write your code in this editor
if(!initialized){
	sprite_index = ds_map_find_value(global.weaponMap, spriteNumber)[0];
	actionNumber = ds_map_find_value(global.weaponMap, spriteNumber)[1];
	if(actionNumber == 1) x += 16;
	baseX = x;
	initialized = true;
}

if(actionNumber == 0){
	midTime = timeLimit/2;
	if(timer < midTime){
		if(image_angle < 100)image_angle += 12;
	}
}

if(actionNumber == 1){
	midTime = timeLimit/2;
	if(timer < midTime){
		if(x > baseX - 16)x -= 4;
	}
}

if(actionNumber == 2){
	image_speed = 0.2;
}

if(actionNumber == 3){
	image_speed = 1;
}
timer++;
if(timer > timeLimit) instance_destroy();