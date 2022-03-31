function ai7() {
	//cryogoyle ai
	if(global.temp > 0) return global.top.powers[| 2];
	global.top.switcher++;
	if(global.top.switcher%3  == 0) return global.top.powers[| 0];
	else if(global.top.switcher%3  == 1 && global.top.curHp < global.top.maxHp/2) return global.top.powers[| 1];
	else return 0;


}
