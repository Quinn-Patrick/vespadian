// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function onCoast(){
	return(obj_worldMapReader.worldMap[global.worldx, global.worldy] == 13096960 ||  obj_worldMapReader.worldMap[global.worldx, global.worldy] == 8336128
	|| obj_worldMapReader.worldMap[global.worldx, global.worldy] == 16711680 || obj_worldMapReader.worldMap[global.worldx, global.worldy] == 16711900
	|| obj_worldMapReader.worldMap[global.worldx, global.worldy] == 5676702);
}