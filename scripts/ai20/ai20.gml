function ai20() {
//greater white dragon
	
	if(global.top.switcher%5 == 0){
		global.top.switcher++
		return global.top.powers[| 1];
	}else if(global.top.switcher % 2 == 0){
		global.top.switcher++
		return global.top.powers[| 0];
	}else{
		global.top.switcher++
		return 0;
	}
	
	

}
