// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function checkTargetToken(){
	if(is_undefined(global.targetToken)) return undefined;
	else{
		output = global.targetToken.target;
		global.storeTargetX = global.targetToken.target.x;
		global.storeTargetY = global.targetToken.target.y;
		clearTargetToken();
		return output;
	}
}