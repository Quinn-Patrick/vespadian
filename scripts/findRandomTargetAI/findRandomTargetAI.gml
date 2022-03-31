// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function findRandomTargetAI(user, attackrange, targType){
	validTargets = ds_list_create();
	if(targType == 0 || targType == 2){
		global.PorEgrid = 1;
		for(zz = 0; zz < ds_list_size(global.ally); zz++){
			if(valTarg(user, attackrange, global.ally[| zz], targType)){
				ds_list_add(validTargets, global.ally[| zz]);
			}
		}
	}else{
		global.PorEgrid = 0;
		for(zz = 0; zz < ds_list_size(global.enemy); zz++){
			if(valTarg(user, attackrange, global.enemy[| zz], targType)) ds_list_add(validTargets, global.enemy[| zz]);
		}
	}
	
	if(ds_list_size(validTargets) == 0){
		ds_list_destroy(validTargets);
		return -2;
	}
	
	chosenTarget = chooseRandomListElement(validTargets);
	
	ds_list_destroy(validTargets);
	
	return chosenTarget;
}