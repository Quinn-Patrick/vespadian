function ai16() {
	//alexander ai
	global.top.switcher++;
	deadGiants = 0;
	
	for(i = 0; i < ds_list_size(global.enemy); i++){
		curEn = global.enemy[| i];
		hello = curEn.conds[0];
		if(curEn.conds[0] > 0){
			deadGiants++;
		}
	}
	if(deadGiants < 2){
		for(i = 0; i < ds_list_size(global.enemy); i++){
			if(global.enemy[| i].conds[0] == 0 && global.enemy[| i].conds[22] == 0){
				sendTargetToken(global.enemy[| i]);
				return global.top.powers[| 2];
			}
		}
		for(i = 0; i < ds_list_size(global.enemy); i++){
			if(global.enemy[| i].conds[0] == 0 && global.enemy[| i].conds[1] == 0 && global.enemy[| i] != global.top){
				sendTargetToken(global.enemy[| i]);
				return global.top.powers[| 3];
			}
		}
	}else if(global.top.spells > 0){
		global.top.spells--;
		if(global.top.switcher % 2 == 0) return global.top.powers[| 0];
		else return global.top.powers[| 1];
	}else return 0;
	
	return global.top.powers[| 0];
}


