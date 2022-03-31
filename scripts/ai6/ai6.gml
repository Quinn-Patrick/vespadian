function ai6() {
	global.top.switcher++;
	if(global.top.switcher%2  == 0){
		if(global.top.curHp > global.top.maxHp*0.75)return global.top.powers[| 1];
		else{
			if(global.top.switcher%4 == 0) 
			return global.top.powers[| 0];
			else return global.top.powers[| 1];
		}
	}
	else return 0;
	return 0;


}
