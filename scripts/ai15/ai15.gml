function ai15() {
	//great star whale ai
	global.top.switcher++;
	if(global.top.curHp < global.top.maxHp/2) global.top.phase = 1;
	if(global.top.phase == 0){
		if(global.top.switcher % 2 == 0){
			return global.top.powers[| irandom_range(3,5)];
		}else return global.top.powers[| 0];
	}else{
		if(global.top.conds[22] >= 0){
			return global.top.powers[| 2];
		}else if(global.top.switcher % 3 != 0){
			return global.top.powers[| irandom_range(3,5)];
		}
		else return global.top.powers[| 1];
	}
	return 0;

}
