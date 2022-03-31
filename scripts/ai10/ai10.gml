function ai10() {
	//big reader ai
	global.top.switcher++;
	if(global.top.switcher < 6){
		if(global.top.hasBoostedResistance < 2){
			if(findDamageToken(global.top, 3)){
				global.top.hasBoostedResistance++;
				return global.top.powers[| 7];
			}
			if(findDamageToken(global.top, 4)){	
				global.top.hasBoostedResistance++;
				return global.top.powers[| 8];
			}
			if(findDamageToken(global.top, 5)){
				global.top.hasBoostedResistance++;
				return global.top.powers[| 9];
			}
			if(findDamageToken(global.top, 6)){				
				global.top.hasBoostedResistance++;
				return global.top.powers[| 10];
			}
			if(findDamageToken(global.top, 7)){				
				global.top.hasBoostedResistance++;
				return global.top.powers[| 11];
			}
			if(findDamageToken(global.top, 8)){			
				global.top.hasBoostedResistance++;
				return global.top.powers[| 12];
			}
			if(findDamageToken(global.top, 9)){				
				global.top.hasBoostedResistance++;
				return global.top.powers[| 13];
			}
		}
		return global.top.powers[| 6];
	}
	
	if(global.top.switcher == 6) return global.top.powers[| 3];

	if(global.top.switcher % 2 == 0) return 0;
	else return global.top.powers[| 0];

	return 0;
}
