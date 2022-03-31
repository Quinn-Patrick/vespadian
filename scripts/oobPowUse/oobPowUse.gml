function oobPowUse(argument0, argument1, argument2, argument3) {
	powN = argument0;
	user = argument1;
	target = argument2;
	cost = argument3;

	switch(powN)
	{
		case 202: 
			if(healOob(user, target, 0, 1000))
			{
				user.curSp -= cost;
			}
			break;
		case 204: 
			if(lifeOob(user, target, -1))
			{
				user.curSp -= cost;
			}
			break;
		case 208: 
			if(lifeOob(user, target, 0.5))
			{
				user.curSp -= cost;
			}
			break;
		case 211: 
			if(healAllOob(user, 0, 800))
			{
				user.curSp -= cost;
			}
			break;
		case 212: 
			if(healOob(user, target, 0, 2000))
			{
				user.curSp -= cost;
			}
			break;
		case 213: 
			if(healAllOob(user, 0, 5000))
			{
				user.curSp -= cost;
			}
			break;
		case 214: 
			if(cureStatusOob(user, target, 16))
			{
				user.curSp -= cost;
			}
			break;
		case 215: 
			if(cureStatusOob(user, target, 21))
			{
				user.curSp -= cost;
			}
			break;
		case 216: 
			if(cureStatusOob(user, target, 17))
			{
				user.curSp -= cost;
			}
			break;
		case 223: 
			effective = false;
			if(cureStatusOob(user, target, 16)) effective = true;
			if(cureStatusOob(user, target, 21)) effective = true;
			if(effective)
			{
				user.curSp -= cost;
			}
			break;
		case 224: 
			effective = false;
			if(cureStatusOob(user, target, 16)) effective = true;
			if(cureStatusOob(user, target, 21)) effective = true;
			if(cureStatusOob(user, target, 38)) effective = true;
			if(cureStatusOob(user, target, 41)) effective = true;
			if(effective)
			{
				user.curSp -= cost;
			}
			break;
		case 221: 
			if(lifeOob(user, target, 1))
			{
				user.curSp -= cost;
			}
			break;
		
	}


}
