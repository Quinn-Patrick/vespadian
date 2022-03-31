function ai9() {
	//studious phantom ai
	global.top.switcher++;

	if(global.top.switcher == 1) return global.top.powers[| 0];
	else if(global.top.switcher < 3) return global.top.powers[| 1];
	else return 0;



}
