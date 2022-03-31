function doDamage(argument0, argument1) {
	tar = argument0;
	damNum = argument1;

	if(checkAbBatt(tar, 211) && global.field == 1){
		damNum = round(damNum/2);
	}
	
	if(tar.conds[35] > 0){
		damNum = round(damNum/2);
	}
	
	if(tar.conds[36] > 0 && damNum > 0){
		damNum = round(damNum/2);
	}
	
	if(checkAbBatt(tar, 309) && tar.conds[20] > 0){
		damNum = round(damNum/2);
	}
	
	if(tar.conds[38] > 0 && damNum > 0){
		damNum = round(damNum*2);
	}

	if(damNum > 1 && tar.conds[32] > 0){
		applyStatus(tar,32,0);
	}
	
	if(damNum < 0 && tar.conds[42] > 0){
		applyStatus(tar,42,0);
	}
	
	if(tar.conds[37] > 0 && damNum > 0){
		damNum = 0;
	}
	
	if(damNum > 0 && checkAbBatt(tar, 456)){
		damNum -= tar.lvl*10*checkAbBatt(tar, 456);
		if(damNum < 1) damNum = 1;
	}
	
	

	tar.curHp -= damNum;
	
	if(damNum > 1) tar.gettingHit = global.animTime;
	
	if(tar.curHp < 0)
	{
		tar.curHp = 0;
	}

	if(tar.shake == 0){
		tar.shake = 1+round((damNum/tar.maxHp)*10)
		if(tar.shake > 10) tar.shake = 10;
	}
	if(tar.curHp > tar.maxHp)
	{
		tar.curHp = tar.maxHp;
	}
	

	indi = instance_create_depth(tar.x, tar.y-32, -2, obj_damageIndicator);

	indi.damDisp = round(damNum);


}
