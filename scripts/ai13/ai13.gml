function ai13() {
	//adam ai
	global.top.switcher++;
	
	if(global.top.meteorCount == 4){
		global.top.meteorCount--;
		return global.top.powers[| 2]; 
	}
	else if(global.top.curHp <= floor(global.top.maxHp*0.75) && global.top.meteorCount == 3){
		global.top.meteorCount--;
		return global.top.powers[| 2]; 
	}
	else if(global.top.curHp <= floor(global.top.maxHp/2) && global.top.meteorCount == 2){
		global.top.meteorCount--;
		return global.top.powers[| 2]; 
	}
	else if(global.top.curHp <= floor(global.top.maxHp/4) && global.top.meteorCount == 1){
		global.top.meteorCount--;
		return global.top.powers[| 2]; 
	}
	
	if(global.top.switcher % 5 == 0) return global.top.powers[| 3];
	else if(global.top.switcher % 2 == 1) return global.top.powers[| 1];
	else if(global.top.switcher % 2 == 0) return global.top.powers[| 0];
}
