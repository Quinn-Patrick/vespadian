function getStatName(argument0) {
	//statNum = argument0;
	abbrev = argument0;

	if(!abbrev)
	{
		switch(bd)
		{
			case 0: return "Physical Attack ";
			break;
			case 1: return "Physical Defense ";
			break;
			case 2: return "Speed ";
			break;
			case 3: return "Hit Rate ";
			break;
			case 4: return "Evasiveness ";
			break;
			case 5: return "Magic Attack ";
			break;
			case 6: return "Heat Resistance ";
			break;
			case 7: return "Cold Resistance ";
			break;
			case 8: return "Electric Resistance ";
			break;
			case 9: return "Poison Resistance ";
			break;
			case 10: return "Aether Resistance ";
			break;
			case 11: return "Vital Resistance ";
			break;
			case 12: return "Mind Resistance ";
			break;
			case 13: return "Wait ";
			break;
			case 14: return "Hit Points ";
			break;
			case 15: return "Skill Points ";
			break;
		}
	}
	else
	{
		switch(bd)
		{
			case 0: return "PA";
			break;
			case 1: return "PD";
			break;
			case 2: return "Sd";
			break;
			case 3: return "Ac";
			break;
			case 4: return "Ev";
			break;
			case 5: return "MA";
			break;
			case 6: return "Hr";
			break;
			case 7: return "Cr";
			break;
			case 8: return "Er";
			break;
			case 9: return "Pr";
			break;
			case 10: return "Ar";
			break;
			case 11: return "Vr";
			break;
			case 12: return "Mr";
			break;
			case 13: return "Wa";
			break;
			case 14: return "HP";
			break;
			case 15: return "SP";
			break;
		}
	}


}
