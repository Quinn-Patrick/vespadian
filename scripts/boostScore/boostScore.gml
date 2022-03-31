function boostScore(argument0, argument1, argument2) {
	charId = argument0;
	scoreId = argument1;
	boost = argument2;

	switch(scoreId){
		case 0: charId.str += boost; 
			if(charId.str > 99){
				charId.str = 99;
				return 0;
			}
		break;
		case 1: charId.frt += boost; 
		if(charId.frt > 99){
				charId.frt = 99;
				return 0;
			}
		break;
		case 2: charId.dex += boost; 
		if(charId.dex > 99){
				charId.dex = 99;
				return 0;
			}
		break;
		case 3: charId.agi += boost; 
		if(charId.agi > 99){
				charId.agi = 99;
				return 0;
			}
		break;
		case 4: charId.int += boost;  
		if(charId.int > 99){
				charId.int = 99;
				return 0;
			}
		break;
		case 5: charId.wis += boost; 
		if(charId.wis > 99){
				charId.wis = 99;
				return 0;
			}
		break;
		case 6: charId.cha += boost; 
		if(charId.cha > 99){
				charId.cha = 99;
				return 0;
			}
		break;
		case 7: charId.spr += boost; 
		if(charId.spr > 99){
				charId.spr = 99;
				return 0;
			}
		break;
	}
	
	

	calcParty();

	return 1;


}
