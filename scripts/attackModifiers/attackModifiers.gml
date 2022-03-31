// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function attackModifiers(){
	if(getItemDat(user.eq[1], 0) == 2)
	{
		ds_stack_push(global.actionBuffer, 1000);
		global.atkPowMod = -1*getItemDat(user.eq[1], 4)
	}
		
	if(getItemDat(user.eq[0], 23) == 1)
	{
		ds_stack_push(global.actionBuffer, 1006);
	}
		
	if(getItemDat(user.eq[0], 23) == 2)
	{
		ds_stack_push(global.actionBuffer, 1001);
	}
	
	if(getItemDat(user.eq[0], 23) == 6)
	{
		ds_stack_push(global.actionBuffer, 1008);
	}
	
	if(getItemDat(user.eq[0], 23) == 9)
	{
		if(!statContest(user, target, user.str, target.wis, 0, 20)){
				applyStatus(target, 19, 1);
		}
	}
		
		
		
	if(checkAbBatt(user, 202))
	{
		ds_stack_push(global.actionBuffer, 1001);
	}
		
	if(checkAbBatt(user, 203))
	{
		ds_stack_push(global.actionBuffer, 1003);
	}
		
	if(checkAbBatt(user, 204))
	{
		ds_stack_push(global.actionBuffer, 1002);
	}
		
	if(checkAbBatt(user, 205))
	{
		ds_stack_push(global.actionBuffer, 1005);
	}
		
	if(checkAbBatt(user, 206))
	{
		ds_stack_push(global.actionBuffer, 1004);
	}
	
	if(checkAbBatt(user, 452))
	{
		if(!statContest(user, target, user.cha, target.cha, 0, 0)) applyStatus(target, 41, 1);
	}
	
	if(checkAbBatt(target, 449))
	{
		if(!statContest(user, target, user.frt, target.dex, 0, 0)) applyStatus(user, 42, 1);
	}
	
	if(checkAbBatt(target, 451))
	{
		if(!statContest(user, target, user.wis, target.str, 0, 0)) applyStatus(user, 38, 1);
	}
	
	if(checkAbBatt(user, 457))
	{
		if(user.conds[1] < 20)deltaStatus(user, 1, 1);
	}
	
	if(user.conds[42]>0) doDamage(user, round(user.maxHp/8));
		
	if(calcCrit(user, target, user.hitEff, target.evaEff)) 
	{
		if(checkAbBatt(user, 430))damage *= 2;
		else damage *= 1.5;
	}
			
	
}