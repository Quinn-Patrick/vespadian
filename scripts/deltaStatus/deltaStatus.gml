function deltaStatus(argument0, argument1, argument2) {
	fighterID = argument0;
	statusID = argument1;
	statusSeverity = argument2;

	statusAnnouncement = announceStatus(statusID, statusSeverity);
	if(statusAnnouncement != ""){
		sendMessage(fighterID.name, statusAnnouncement);
	}

	fighterID.conds[statusID] += statusSeverity;
	fighterID.wait = waitCalc(fighterID);




}
