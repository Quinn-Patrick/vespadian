/// @description Insert description here
// You can write your code in this editor
obj_worldMapReader.worldMap[worldX, worldY] = 13096960;
obj_worldMapReader.worldMap[worldX+1, worldY] = 13096960;
if(!global.events[381]){
	for(i = 0; i < 20; i++){
		instance_create_depth(x + irandom_range(0,64), y + irandom_range(0,32), depth, eff_explosion);
	}
}

global.events[381] = true;