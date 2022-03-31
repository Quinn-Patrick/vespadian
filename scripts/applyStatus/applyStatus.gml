function applyStatus(argument0, argument1, argument2) {
	fighterID = argument0;
	statusID = argument1;
	statusSeverity = argument2;

	if(statusID == 16 && checkAbBatt(fighterID, 402) && statusSeverity != 0){
		sendMessage(fighterId.name, "Immune to poison!");
		return;
	}
	if(statusID == 21 && checkAbBatt(fighterID, 403) && statusSeverity != 0){
		sendMessage(fighterId.name, "Immune to blindness!");
		return;
	}
	if((statusID == 19|| statusID == 17) && checkAbBatt(fighterID, 404) && statusSeverity != 0){
		sendMessage(fighterId.name, "Immune to immobolization!");
		return;
	}
	if(statusID == 32 && checkAbBatt(fighterID, 406) && statusSeverity != 0){
		sendMessage(fighterId.name, "Immune to sleep!");
		return;
	}
	if(statusID == 38 && checkAbBatt(fighterID, 446) && statusSeverity != 0){
		sendMessage(fighterId.name, "Immune to curse!");
		return;
	}
	if(statusID == 41 && checkAbBatt(fighterID, 447) && statusSeverity != 0){
		sendMessage(fighterId.name, "Immune to heartbreak!");
		return;
	}
	if(statusID == 42 && checkAbBatt(fighterID, 448) && statusSeverity != 0){
		sendMessage(fighterId.name, "Immune to bleeding!");
		return;
	}
	if(statusID == 0 && checkAbBatt(fighterID, 405) && statusSeverity != 0){
		sendMessage(fighterId.name, "Immune to instant death!");
		return;
	}


	statusAnnouncement = announceStatus(statusID, statusSeverity);
	
	if(fighterID.conds[statusID] == statusSeverity) statusAnnouncement = "";
	
	if(statusAnnouncement != ""){
		sendMessage(fighterID.name, statusAnnouncement);
	}
	
	if(statusID == 0){
		if(fighterID.conds[0] == 0) soulEaterCheck();
	}
	
	fighterID.conds[statusID] = statusSeverity;
	
	if(statusID == 0){
		fighterID.curHp = 0;
		
		
		if(fighterID.conds[39] > 0){
			fighterID.conds[0] = 0;
			fighterID.curHp = 1;
			fighterID.conds[39] = 0;
		}
	}

	/*if(statusID == 19 || statusID == 17 || statusID == 18){
		for(n=global.turnSize-1; n>-1; n--){
			if(global.turns[n,0] == fighterID){
				global.turns[n,1] = fighterID.wait;
			}
		}
	}*/


}
