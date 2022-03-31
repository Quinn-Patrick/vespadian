function ai19() {
//asura pattern
	global.top.switcher++
	if((global.top.switcher+1)%4 == 0){
		return global.top.powers[| 1];
	}else if(global.top.switcher % 4 == 0){
		return global.top.powers[| 0];
	}else return 0;

}
