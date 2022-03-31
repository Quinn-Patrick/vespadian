// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function isLandmarkTile(targetX, targetY){
	for(i = 0; i < ds_list_size(global.landmarkList); i++){
		if(global.landmarkList[| i].ovx == targetX && global.landmarkList[| i].ovy == targetY) return true;
	}
	return false;
}