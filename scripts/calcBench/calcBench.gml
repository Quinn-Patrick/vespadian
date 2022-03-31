// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function calcBench(){
	for(k = 0; k < ds_list_size(global.characterBench); k++){
		curCharacter = global.characterBench[| k];
		if(!is_undefined(curCharacter)){
			eqSet(curCharacter);
		}
	}

	for(l = 0; l < ds_list_size(global.characterBench); l++){
		if(!is_undefined(global.characterBench[| l]))statCalc(global.characterBench[| l]);
	}
}