// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function magicMissileAnimA(){
	if(global.animTime == global.animTimeMax-1)instance_create_depth(global.storeTargetX + 480, global.storeTargetY - 480, -100, obj_magicMissile);
}