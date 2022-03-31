function ai1() {
	if(global.top.switcher == -1){
		out = 0;
	}
	else{
		out = global.top.aiPhase+1;
	}

	global.top.switcher *= -1;
	if(out != 0) return global.top.powers[| out-1];
	else return 0;


}
