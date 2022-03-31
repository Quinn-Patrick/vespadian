function ai22() {
	//Ephemeris ai
	actOut = 0;
	
	eph = global.top;
	
	eph.switcher++;
	
	//open with Mark for Death
	if(eph.switcher == 1){
		return eph.powers[| 0];
	}
	
	//follow with soul divide
	if(global.top.switcher == 2){
		return eph.powers[| 1];
	}
	
	//figure out which phase he's in
	if(eph.curHp < eph.maxHp*0.6 && eph.curHp > eph.maxHp*0.2){
		eph.phase = 1;
	}else if(eph.curHp <= eph.maxHp*0.2){
		eph.phase = 2;
	}

	//phase 0
	if(eph.phase == 0){
		if(eph.switcher % 5 == 0){
			return eph.powers[| 0];
		}else if(eph.switcher % 5 == 1){
			return eph.powers[| 1];
		}else if(eph.switcher % 5 == 2){
			//cast clear skies if someone is buffed
			for(m = 0; m < ds_list_size(global.ally); m++){
				if(isBuffed(global.ally[| m])) return eph.powers[| 3];
			}
			return 0; //or just attack otherwise
		}else if(eph.switcher % 5 == 3){ //use a spell opposed to the last one used on Ephemeris
			if(findDamageToken(eph, 3)) return eph.powers[| 8];
			else if(findDamageToken(eph, 4)) return eph.powers[| 7];
			else if(findDamageToken(eph, 5)) return eph.powers[| 10];
			else if(findDamageToken(eph, 7)) return eph.powers[| 9];
			else return eph.powers[| irandom_range(7,10)]; //or use a random one
		}else if(eph.switcher % 5 == 4) return 0; //just attack before starting over
	}
	
	//phase 1
	if(eph.phase == 1){
		if(eph.switcher % 5 == 0){
			if(eph.conds[22] >= 0){
				return eph.powers[| 6]; //use haste if not already hastened
			}else return 0; //attack otherwise
		}else if(eph.switcher % 5 == 1){
			return eph.powers[| 4]; //put everyone to sleep
		}else if(eph.switcher % 5 == 2 || eph.switcher % 5 == 3){
			return 0; //attack
		}else if(eph.switcher % 5 == 4){ //use a spell opposed to the last one used on Ephemeris
			if(findDamageToken(eph, 3)) return eph.powers[| 8];
			else if(findDamageToken(eph, 4)) return eph.powers[| 7];
			else if(findDamageToken(eph, 5)) return eph.powers[| 10];
			else if(findDamageToken(eph, 7)) return eph.powers[| 9];
			else return eph.powers[| irandom_range(7,10)]; //or use a random one
		}
	}
	
	//phase 2
	if(eph.phase == 2){
		if(eph.hasUsedDisaster == 0){
			eph.hasUsedDisaster = eph.switcher;
			return eph.powers[| 2]; //use disaster if he hasn't already			
		}
		
		if(eph.switcher-eph.hasUsedDisaster < 3){
			return 0; //just attack for the next few turns, because he's tired
		}else if(eph.switcher % 3 == 0){
			return eph.powers[| 5]; //use mass extinction
		}else if(eph.switcher % 3 == 1){
			return 0; //just attack
		}else if(eph.switcher % 3 == 2){ //use the elemental stuff again
			if(findDamageToken(eph, 3)) return eph.powers[| 8];
			else if(findDamageToken(eph, 4)) return eph.powers[| 7];
			else if(findDamageToken(eph, 5)) return eph.powers[| 10];
			else if(findDamageToken(eph, 7)) return eph.powers[| 9];
			else return eph.powers[| irandom_range(7,10)]; //or use a random one
		}
	}
}
