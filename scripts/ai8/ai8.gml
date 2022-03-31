function ai8() {
	//mega moleman ai
	global.top.switcher++;

	if(global.top.curHp < global.top.maxHp/2 && global.top.hasQuaked == 0){
		global.top.hasQuaked = 1;
		return global.top.powers[| 1];
	}
	else if(global.top.switcher%2  == 0) return global.top.powers[| 0];
	else return 0;



}
