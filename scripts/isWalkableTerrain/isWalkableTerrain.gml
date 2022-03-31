// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function isWalkableTerrain(xPos, yPos){
	tileType = obj_worldMapReader.worldMap[xPos, yPos];
	
	return(tileType == 65280 || tileType == 1792768 || tileType == 13199872 || tileType == 16777215);

}