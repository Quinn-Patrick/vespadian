// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function processString(inString){
	inString = string_replace(inString, "$special$", global.specialString);
	inString = string_replace(inString, "$num$", global.specialNum);
	if(!is_undefined(global.party[0]))inString = string_replace(inString, "$party0$", global.party[0].name);
	if(!is_undefined(global.party[1]))inString = string_replace(inString, "$party1$", global.party[1].name);
	if(!is_undefined(global.party[2]))inString = string_replace(inString, "$party2$", global.party[2].name);
	if(!is_undefined(global.party[3]))inString = string_replace(inString, "$party3$", global.party[3].name);
	
	return inString;


}