function poison(argument0, argument1) {
	poisonee = argument0;
	poisonLevel = argument1;

	baseDamage = round(poisonee.maxHp*poisonLevel/2);
	if(baseDamage < 1) baseDamage = 1;

	//if(poisonee.conds[0] == 0 && poisonee.curHp > 0) doDamage(poisonee, baseDamage);
	if(poisonee.curHp <= 0){
		poisonee.conds[0] = 1;
		
		if(poisonee.conds[39] > 0){
			poisonee.conds[0] = 0;
			poisonee.curHp = 1;
			poisonee.conds[39] = 0;
		}
		
		
		poisonee.conds[16] = 0;
		poisonee.conds[32] = 0;
		poisonee.conds[33] = 0;
		if(poisonee.deadSprite == spr_nothing){
			enemyKill(poisonee);
		}
		
	}
}
