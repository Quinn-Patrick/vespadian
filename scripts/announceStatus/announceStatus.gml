function announceStatus(argument0, argument1) {
	statusId = argument0;
	statusAmount = argument1;
	
	if(statusId == 0) return "";
	
	positive = true;
	if(statusId >= 1 && statusId < 16){
		if(statusAmount < 0) positive = false;
	}
	else if((statusId >= 16 && statusId < 22) || statusId == 32 || statusId == 38 || statusId == 41 || statusId == 42){
		if(statusAmount == 0) positive = false;
	}
	else if (statusId == 22){
		if(statusAmount > 0) positive = false;
	}
	else if(statusId >= 23) return "";

	if(positive)names = file_text_open_read("files/statusEffects.txt");
	else names = file_text_open_read("files/statusEffectsNeg.txt");
	for(i=0; i<600; i++)
	{
		if(real(file_text_readln(names)) == statusId)
		{
			out = (file_text_readln(names));
			file_text_close(names);
			return out;
		}
		file_text_readln(names);
	}
	file_text_close(names);
	return "";


}
