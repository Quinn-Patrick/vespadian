function ai18() {
//steel golem self buffing
	global.top.switcher++
	if(global.top.switcher == 1){
		sendTargetToken(global.top);
		return global.top.powers[| 0];
	}else if(global.top.switcher == 2){
		sendTargetToken(global.top);
		return global.top.powers[| 1];
	}else return 0;

}
