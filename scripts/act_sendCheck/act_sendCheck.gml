// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function act_sendCheck(checkId){
	if(!global.archipelago) return true;
	send_check(checkId);
	return true;

}