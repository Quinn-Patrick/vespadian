function ai12() {
	//the lady ai
	global.top.switcher++;
	deadZombies = 0;
	selfcovered = false;
	
	for(i = 0; i < ds_list_size(global.enemy); i++){
		curEn = global.enemy[| i];
		hello = curEn.conds[0];
		if(curEn.conds[0] > 0){
			deadZombies++;
		}else if(curEn.row == global.top.row && curEn.id != global.top.id) selfcovered = true;
	}
	if(global.top.curHp >= global.top.maxHp/2){
		if(global.top.switcher % 3 == 0){
			if(deadZombies > 2){
				 return global.top.powers[| 1];
			}else  return global.top.powers[| 0];
		}else if(selfcovered) return global.top.powers[| 2];
		else return 0;		
	}else {
		if(global.top.switcher % 2 == 0){
			if(deadZombies > 2){
				 return global.top.powers[| 1];
			}else  return global.top.powers[| 0];
		}else if(selfcovered) return global.top.powers[| 2];
		else if(global.top.switcher % 3 == 0) return global.top.powers[| 0];
		else return 0;
	}
}
