// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function sendTargetToken(intendedTarget){
	newToken = instance_create_depth(0,0,0,obj_targetToken);
	
	newToken.target = intendedTarget;
	global.targetToken = newToken;
}