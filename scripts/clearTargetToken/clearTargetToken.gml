// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function clearTargetToken(){
	if(is_undefined(global.targetToken))return;
	instance_destroy(global.targetToken);
	global.targetToken = undefined;
}