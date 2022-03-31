// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function partyMemberOnPosition(formX, formY){
	for(i0 = 0; i0 < 4; i0++){
		if(!is_undefined(global.party[i0])){
			if(global.party[i0].formPositionX == formX && global.party[i0].formPositionY == formY){
				return global.party[i0];
			}
		}
	}
	return -1;
}