// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function creatureTypeDamage(attacker, defender, damage){
	damageModifier = 2;
	if(hasCreatureType(defender, 0)){
		if(checkAbBatt(attacker, 441)){
			damage *= damageModifier;
		}
	}
	if(hasCreatureType(defender, 1)){
		if(checkAbBatt(attacker, 431)){
			damage *= damageModifier;
		}
	}
	if(hasCreatureType(defender, 2)){
		if(checkAbBatt(attacker, 432)){
			damage *= damageModifier;
		}
	}
	if(hasCreatureType(defender, 3)){
		if(checkAbBatt(attacker, 433)){
			damage *= damageModifier;
		}
	}
	if(hasCreatureType(defender, 4)){
		if(checkAbBatt(attacker, 439)){
			damage *= damageModifier;
		}
	}
	if(hasCreatureType(defender, 5)){
		if(checkAbBatt(attacker, 434)){
			damage *= damageModifier;
		}
	}
	if(hasCreatureType(defender, 6) || hasCreatureType(defender, 7) || hasCreatureType(defender, 8)
	 || hasCreatureType(defender, 9) || hasCreatureType(defender, 10) || hasCreatureType(defender, 11)
	 || hasCreatureType(defender, 12)){
		if(checkAbBatt(attacker, 435)){
			damage *= damageModifier;
		}
	}
	if(hasCreatureType(defender, 13)){
		if(checkAbBatt(attacker, 438)){
			damage *= damageModifier;
		}
	}
	if(hasCreatureType(defender, 14) || hasCreatureType(defender, 15)){
		if(checkAbBatt(attacker, 437)){
			damage *= damageModifier;
		}
	}
	if(hasCreatureType(defender, 16)){
		if(checkAbBatt(attacker, 440)){
			damage *= damageModifier;
		}
	}
	if(hasCreatureType(defender, 17)){
		if(checkAbBatt(attacker, 442)){
			damage *= damageModifier;
		}
	}
	if(hasCreatureType(defender, 18)){
		if(checkAbBatt(attacker, 436)){
			damage *= damageModifier;
		}
	}
	return damage;
}