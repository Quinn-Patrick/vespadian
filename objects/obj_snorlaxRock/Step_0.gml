/// @description Insert description here
// You can write your code in this editor
timer++;
obj_worldMapReader.worldMap[worldX, worldY] = 8336128;
obj_worldMapReader.worldMap[worldX+1, worldY] = 8336128;
if(global.events[349] && timer > 120){
	instance_destroy(self);
}
