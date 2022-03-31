function ai11() {
	//CShariot Automaton AI
	global.top.switcher++;
	
	if(global.top.curHp < global.top.maxHp/2){
		if(global.top.conds[2] < 2 && global.top.hasStanced){
			global.top.hasStanced = true;
			return global.top.powers[| 1];
		}
	}

	if(global.top.switcher % 2 == 0){
		if(global.top.curHp < global.top.maxHp/2) return global.top.powers[| 2];
		else return 0;
	}
	else return global.top.powers[| 0];

	return 0;
}
