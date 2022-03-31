// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function validPlayerTargetList(user, attackRange, targetType){
	ds_list_clear(global.playerTargets);
	if(targetType == 0 || targetType == 2){
		for(zz = 0; zz < ds_list_size(global.enemy); zz++){
			if(valTarg(user, attackRange, global.enemy[| zz], targetType))ds_list_add(global.playerTargets, global.enemy[| zz]);	
		}
		for(zz = 0; zz < ds_list_size(global.ally); zz++){
			if(global.ally[| zz].conds[0] == 0)ds_list_add(global.playerTargets, global.ally[| zz]);	
		}
	}else{
		for(zz = 0; zz < ds_list_size(global.ally); zz++){
			if(valTarg(user, attackRange, global.ally[| zz], targetType))ds_list_add(global.playerTargets, global.ally[| zz]);	
		}
		for(zz = 0; zz < ds_list_size(global.enemy); zz++){
			if(valTarg(user, attackRange, global.enemy[| zz], targetType))ds_list_add(global.playerTargets, global.enemy[| zz]);	
		}
	}
}