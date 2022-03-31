function roomString(argument0) {
	inputString = string(argument0);

	inputString = cleanString(inputString);

	next = room_first;
	while(room_get_name(next) != inputString && string(next) != inputString){
		next = room_next(next);
		if(next == -1) return 0;
	}
	return real(next);


}
