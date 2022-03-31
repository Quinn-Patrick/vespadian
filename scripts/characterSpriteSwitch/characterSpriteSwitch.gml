// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function characterSpriteSwitch(charClass, charGender, charColor){
	switch(charClass)
	{
		case 0:
		switch(charGender){
			case 0:
				switch(charColor){
					case 0: return [spr_fighterM1Front, spr_fighterM1Back, spr_fighterM1Side, spr_fighterM1Dead, spr_fighterM1Defend, spr_fighterM1Low, spr_fighterM1Ouch];
					case 1: return [spr_fighterM2Front, spr_fighterM2Back, spr_fighterM2Side, spr_fighterM2Dead, spr_fighterM2Defend, spr_fighterM2Low, spr_fighterM2Ouch];
					case 2: return [spr_fighterM3Front, spr_fighterM3Back, spr_fighterM3Side, spr_fighterM3Dead, spr_fighterM3Defend, spr_fighterM3Low, spr_fighterM3Ouch];
					case 3: return [spr_fighterM4Front, spr_fighterM4Back, spr_fighterM4Side, spr_fighterM4Dead, spr_fighterM4Defend, spr_fighterM4Low, spr_fighterM4Ouch];
				}
			case 1:
				switch(charColor){
					case 0: return [spr_fighterF1Front, spr_fighterF1Back, spr_fighterF1Side, spr_fighterF1Dead, spr_fighterF1Defend, spr_fighterF1Low, spr_fighterF1Ouch];
					case 1: return [spr_fighterF2Front, spr_fighterF2Back, spr_fighterF2Side, spr_fighterF2Dead, spr_fighterF2Defend, spr_fighterF2Low, spr_fighterF2Ouch];
					case 2: return [spr_fighterF3Front, spr_fighterF3Back, spr_fighterF3Side, spr_fighterF3Dead, spr_fighterF3Defend, spr_fighterF3Low, spr_fighterF3Ouch];
					case 3: return [spr_fighterF4Front, spr_fighterF4Back, spr_fighterF4Side, spr_fighterF4Dead, spr_fighterF4Defend, spr_fighterF4Low, spr_fighterF4Ouch];
				}
		}
		break;
		
		case 1:
		switch(charGender){
			case 0:
				switch(charColor){
					case 0: return [spr_wizardM1Front, spr_wizardM1Back, spr_wizardM1Side, spr_wizardM1Dead, spr_wizardM1Defend, spr_wizardM1Low, spr_wizardM1Ouch];
					case 1: return [spr_wizardM2Front, spr_wizardM2Back, spr_wizardM2Side, spr_wizardM2Dead, spr_wizardM2Defend, spr_wizardM2Low, spr_wizardM2Ouch];
					case 2: return [spr_wizardM3Front, spr_wizardM3Back, spr_wizardM3Side, spr_wizardM3Dead, spr_wizardM3Defend, spr_wizardM3Low, spr_wizardM3Ouch];
					case 3: return [spr_wizardM4Front, spr_wizardM4Back, spr_wizardM4Side, spr_wizardM4Dead, spr_wizardM4Defend, spr_wizardM4Low, spr_wizardM4Ouch];
				}
			case 1:
			switch(charColor){
					case 0: return [spr_wizardF1Front, spr_wizardF1Back, spr_wizardF1Side, spr_wizardF1Dead, spr_wizardF1Defend, spr_wizardF1Low, spr_wizardF1Ouch];
					case 1: return [spr_wizardF2Front, spr_wizardF2Back, spr_wizardF2Side, spr_wizardF2Dead, spr_wizardF2Defend, spr_wizardF2Low, spr_wizardF2Ouch];
					case 2: return [spr_wizardF3Front, spr_wizardF3Back, spr_wizardF3Side, spr_wizardF3Dead, spr_wizardF3Defend, spr_wizardF3Low, spr_wizardF3Ouch];
					case 3: return [spr_wizardF4Front, spr_wizardF4Back, spr_wizardF4Side, spr_wizardF4Dead, spr_wizardF4Defend, spr_wizardF4Low, spr_wizardF4Ouch];
				}
		}
		break;
		
		case 2:
		switch(charGender){
			case 0:
				switch(charColor){
					case 0: return [spr_thiefM1Front, spr_thiefM1Back, spr_thiefM1Side, spr_thiefM1Dead, spr_thiefM1Defend, spr_thiefM1Low, spr_thiefM1Ouch];
					case 1: return [spr_thiefM2Front, spr_thiefM2Back, spr_thiefM2Side, spr_thiefM2Dead, spr_thiefM2Defend, spr_thiefM2Low, spr_thiefM2Ouch];
					case 2: return [spr_thiefM3Front, spr_thiefM3Back, spr_thiefM3Side, spr_thiefM3Dead, spr_thiefM3Defend, spr_thiefM3Low, spr_thiefM3Ouch];
					case 3: return [spr_thiefM4Front, spr_thiefM4Back, spr_thiefM4Side, spr_thiefM4Dead, spr_thiefM4Defend, spr_thiefM4Low, spr_thiefM4Ouch];
				}
			case 1:
			switch(charColor){
					case 0: return [spr_thiefF1Front, spr_thiefF1Back, spr_thiefF1Side, spr_thiefF1Dead, spr_thiefF1Defend, spr_thiefF1Low, spr_thiefF1Ouch];
					case 1: return [spr_thiefF2Front, spr_thiefF2Back, spr_thiefF2Side, spr_thiefF2Dead, spr_thiefF2Defend, spr_thiefF2Low, spr_thiefF2Ouch];
					case 2: return [spr_thiefF3Front, spr_thiefF3Back, spr_thiefF3Side, spr_thiefF3Dead, spr_thiefF3Defend, spr_thiefF3Low, spr_thiefF3Ouch];
					case 3: return [spr_thiefF4Front, spr_thiefF4Back, spr_thiefF4Side, spr_thiefF4Dead, spr_thiefF4Defend, spr_thiefF4Low, spr_thiefF4Ouch];
				}
		}
		break;
		
		case 3:
		switch(charGender){
			case 0:
				switch(charColor){
					case 0: return [spr_clericM1Front, spr_clericM1Back, spr_clericM1Side, spr_clericM1Dead, spr_clericM1Defend, spr_clericM1Low, spr_clericM1Ouch];
					case 1: return [spr_clericM2Front, spr_clericM2Back, spr_clericM2Side, spr_clericM2Dead, spr_clericM2Defend, spr_clericM2Low, spr_clericM2Ouch];
					case 2: return [spr_clericM3Front, spr_clericM3Back, spr_clericM3Side, spr_clericM3Dead, spr_clericM3Defend, spr_clericM3Low, spr_clericM3Ouch];
					case 3: return [spr_clericM4Front, spr_clericM4Back, spr_clericM4Side, spr_clericM4Dead, spr_clericM4Defend, spr_clericM4Low, spr_clericM4Ouch];
				}
			case 1:
			switch(charColor){
					case 0: return [spr_clericF1Front, spr_clericF1Back, spr_clericF1Side, spr_clericF1Dead, spr_clericF1Defend, spr_clericF1Low, spr_clericF1Ouch];
					case 1: return [spr_clericF2Front, spr_clericF2Back, spr_clericF2Side, spr_clericF2Dead, spr_clericF2Defend, spr_clericF2Low, spr_clericF2Ouch];
					case 2: return [spr_clericF3Front, spr_clericF3Back, spr_clericF3Side, spr_clericF3Dead, spr_clericF3Defend, spr_clericF3Low, spr_clericF3Ouch];
					case 3: return [spr_clericF4Front, spr_clericF4Back, spr_clericF4Side, spr_clericF4Dead, spr_clericF4Defend, spr_clericF4Low, spr_clericF4Ouch];
				}
		}
		break;
		
		case 4:
		switch(charGender){
			case 0:
				switch(charColor){
					case 0: return [spr_rangerM1Front, spr_rangerM1Back, spr_rangerM1Side, spr_rangerM1Dead, spr_rangerM1Defend, spr_rangerM1Low, spr_rangerM1Ouch];
					case 1: return [spr_rangerM2Front, spr_rangerM2Back, spr_rangerM2Side, spr_rangerM2Dead, spr_rangerM2Defend, spr_rangerM2Low, spr_rangerM2Ouch];
					case 2: return [spr_rangerM3Front, spr_rangerM3Back, spr_rangerM3Side, spr_rangerM3Dead, spr_rangerM3Defend, spr_rangerM3Low, spr_rangerM3Ouch];
					case 3: return [spr_rangerM4Front, spr_rangerM4Back, spr_rangerM4Side, spr_rangerM4Dead, spr_rangerM4Defend, spr_rangerM4Low, spr_rangerM4Ouch];
				}
			case 1:
			switch(charColor){
					case 0: return [spr_rangerF1Front, spr_rangerF1Back, spr_rangerF1Side, spr_rangerF1Dead, spr_rangerF1Defend, spr_rangerF1Low, spr_rangerF1Ouch];
					case 1: return [spr_rangerF2Front, spr_rangerF2Back, spr_rangerF2Side, spr_rangerF2Dead, spr_rangerF2Defend, spr_rangerF2Low, spr_rangerF2Ouch];
					case 2: return [spr_rangerF3Front, spr_rangerF3Back, spr_rangerF3Side, spr_rangerF3Dead, spr_rangerF3Defend, spr_rangerF3Low, spr_rangerF3Ouch];
					case 3: return [spr_rangerF4Front, spr_rangerF4Back, spr_rangerF4Side, spr_rangerF4Dead, spr_rangerF4Defend, spr_rangerF4Low, spr_rangerF4Ouch];
				}
		}
		break;
		
		case 5:
		switch(charGender){
			case 0:
				switch(charColor){
					case 0: return [spr_bardM1Front, spr_bardM1Back, spr_bardM1Side, spr_bardM1Dead, spr_bardM1Defend, spr_bardM1Low, spr_bardM1Ouch];
					case 1: return [spr_bardM2Front, spr_bardM2Back, spr_bardM2Side, spr_bardM2Dead, spr_bardM2Defend, spr_bardM2Low, spr_bardM2Ouch];
					case 2: return [spr_bardM3Front, spr_bardM3Back, spr_bardM3Side, spr_bardM3Dead, spr_bardM3Defend, spr_bardM3Low, spr_bardM3Ouch];
					case 3: return [spr_bardM4Front, spr_bardM4Back, spr_bardM4Side, spr_bardM4Dead, spr_bardM4Defend, spr_bardM4Low, spr_bardM4Ouch];
				}
			case 1:
			switch(charColor){
					case 0: return [spr_bardF1Front, spr_bardF1Back, spr_bardF1Side, spr_bardF1Dead, spr_bardF1Defend, spr_bardF1Low, spr_bardF1Ouch];
					case 1: return [spr_bardF2Front, spr_bardF2Back, spr_bardF2Side, spr_bardF2Dead, spr_bardF2Defend, spr_bardF2Low, spr_bardF2Ouch];
					case 2: return [spr_bardF3Front, spr_bardF3Back, spr_bardF3Side, spr_bardF3Dead, spr_bardF3Defend, spr_bardF3Low, spr_bardF3Ouch];
					case 3: return [spr_bardF4Front, spr_bardF4Back, spr_bardF4Side, spr_bardF4Dead, spr_bardF4Defend, spr_bardF4Low, spr_bardF4Ouch];
				}
		}
		break;
	
		default:
		return [spr_portPlaceholder, spr_portPlaceholder, spr_portPlaceholder, spr_portPlaceholder];
		break;
	}
}