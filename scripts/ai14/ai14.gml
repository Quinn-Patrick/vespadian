function ai14() {
	//moonman ai
	global.top.switcher++;
	if(global.top.switcher == 1){
		sendTargetToken(global.top);
		return global.top.powers[| 2];
	}
	
	

	if(global.top.switcher % 2 == 0) return 0;
	else return global.top.powers[| irandom_range(0,1)];



}
