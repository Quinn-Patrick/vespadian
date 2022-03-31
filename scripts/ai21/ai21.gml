function ai21() {
//greater red dragon
	
	if(global.top.switcher%4 == 0){
		global.top.switcher++
		return global.top.powers[| 0];
	}else if((global.top.switcher+1) % 4 == 0){
		global.top.switcher++
		return global.top.powers[| 1];
	}else{
		global.top.switcher++
		return 0;
	}
	
	

}
