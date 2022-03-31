function lmDestSwitch(argument0) {
	lmId = cleanString(argument0);
	if(lmId == "rm_havenheit"){
		if(global.events[50]) lmId = "rm_havenheitPost";
	}
	return roomString(lmId);
	switch(lmId){
		case 0:
		return rm_elTrice;
		break;
		case 1:
		if(!global.events[50]) return rm_havenheit;
		else return rm_havenheitPost;
		break;
		case 2:
		return rm_lonHirodineS;
		break;
	}


}
